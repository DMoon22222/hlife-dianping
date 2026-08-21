package com.hmdp.ratelimit;

import com.hmdp.dto.Result;
import com.hmdp.dto.UserDTO;
import com.hmdp.utils.UserHolder;
import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.*;
import org.aspectj.lang.reflect.MethodSignature;
import org.springframework.core.env.Environment;
import org.springframework.core.io.ClassPathResource;
import org.springframework.data.redis.core.StringRedisTemplate;
import org.springframework.data.redis.core.script.DefaultRedisScript;
import org.springframework.expression.*;
import org.springframework.expression.spel.standard.SpelExpressionParser;
import org.springframework.expression.spel.support.StandardEvaluationContext;
import org.springframework.stereotype.Component;
import org.springframework.web.context.request.*;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.util.Collections;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ThreadLocalRandom;

@Aspect
@Component
public class RateLimitAspect {

    private static final DefaultRedisScript<Long> RATE_LIMIT_SCRIPT;

    static {
        RATE_LIMIT_SCRIPT = new DefaultRedisScript<>();
        RATE_LIMIT_SCRIPT.setLocation(new ClassPathResource("rate_limit.lua"));
        RATE_LIMIT_SCRIPT.setResultType(Long.class);
    }

    @Resource
    private StringRedisTemplate stringRedisTemplate;

    @Resource
    private Environment environment;

    private final ExpressionParser parser = new SpelExpressionParser();
    private final Map<String, Expression> expressionCache = new ConcurrentHashMap<>();
    private final Map<String, String> placeholderCache = new ConcurrentHashMap<>();

    @Around("@annotation(rateLimit)")
    public Object around(ProceedingJoinPoint joinPoint, RateLimit rateLimit) throws Throwable {
        boolean enabled = Boolean.parseBoolean(
                resolvePlaceholder("${hmdp.rate-limit.enabled:true}")
        );
        if (!enabled) {
            return joinPoint.proceed();
        }

        long now = System.currentTimeMillis();
        int maxCount = Integer.parseInt(resolvePlaceholder(rateLimit.maxCount()));
        long windowSeconds = Long.parseLong(resolvePlaceholder(rateLimit.windowSeconds()));
        long windowMillis = windowSeconds * 1000L;

        String businessKey = parseKey(joinPoint, rateLimit.key());
        String scopeValue = resolveScope(rateLimit.scope());
        String redisKey = "rate:limit:" + businessKey + ":" + rateLimit.scope().name().toLowerCase() + ":" + scopeValue;

        String requestId = scopeValue + ":" + now + ":" + ThreadLocalRandom.current().nextLong(Long.MAX_VALUE);

        Long allowed = stringRedisTemplate.execute(
                RATE_LIMIT_SCRIPT,
                Collections.singletonList(redisKey),
                String.valueOf(now),
                String.valueOf(windowMillis),
                String.valueOf(maxCount),
                requestId,
                String.valueOf(windowSeconds + 1)
        );

        if (allowed == null || allowed == 0) {
            return Result.fail(rateLimit.message());
        }

        return joinPoint.proceed();
    }

    private String parseKey(ProceedingJoinPoint joinPoint, String keyExpression) {
        if (!keyExpression.contains("#")) {
            return keyExpression;
        }

        MethodSignature signature = (MethodSignature) joinPoint.getSignature();
        Object[] args = joinPoint.getArgs();
        String[] parameterNames = signature.getParameterNames();

        StandardEvaluationContext context = new StandardEvaluationContext();
        for (int i = 0; i < args.length; i++) {
            context.setVariable("p" + i, args[i]);
            context.setVariable("a" + i, args[i]);
            if (parameterNames != null && i < parameterNames.length) {
                context.setVariable(parameterNames[i], args[i]);
            }
        }

        Expression expression = expressionCache.computeIfAbsent(
                keyExpression,
                parser::parseExpression
        );
        return expression.getValue(context, String.class);
    }

    private String resolvePlaceholder(String value) {
        return placeholderCache.computeIfAbsent(
                value,
                environment::resolvePlaceholders
        );
    }

    private String resolveScope(RateLimitScope scope) {
        if (scope == RateLimitScope.GLOBAL) {
            return "global";
        }
        if (scope == RateLimitScope.USER) {
            UserDTO user = UserHolder.getUser();
            return user == null ? "anonymous" : String.valueOf(user.getId());
        }

        ServletRequestAttributes attributes =
                (ServletRequestAttributes) RequestContextHolder.getRequestAttributes();
        HttpServletRequest request = attributes == null ? null : attributes.getRequest();
        return request == null ? "unknown" : request.getRemoteAddr();
    }
}
