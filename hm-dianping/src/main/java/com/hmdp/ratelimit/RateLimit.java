package com.hmdp.ratelimit;

import java.lang.annotation.*;

@Target(ElementType.METHOD)
@Retention(RetentionPolicy.RUNTIME)
@Documented
public @interface RateLimit {
    String key();
    String maxCount();
    String windowSeconds();
    RateLimitScope scope() default RateLimitScope.USER;
    String message() default "请求过于频繁，请稍后重试";
}
