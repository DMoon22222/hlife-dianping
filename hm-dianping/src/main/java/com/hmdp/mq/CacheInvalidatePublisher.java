package com.hmdp.mq;

import com.hmdp.cache.ShopCacheService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.amqp.rabbit.core.RabbitTemplate;
import org.springframework.data.redis.core.StringRedisTemplate;
import org.springframework.stereotype.Component;
import org.springframework.transaction.support.TransactionSynchronization;
import org.springframework.transaction.support.TransactionSynchronizationManager;

import javax.annotation.Resource;

import static com.hmdp.mq.RabbitMqConstants.CACHE_INVALIDATE_EXCHANGE;
import static com.hmdp.utils.RedisConstants.CACHE_SHOP_KEY;

@Slf4j
@Component
public class CacheInvalidatePublisher {

    @Resource
    private StringRedisTemplate stringRedisTemplate;

    @Resource
    private ShopCacheService shopCacheService;

    @Resource
    private RabbitTemplate rabbitTemplate;

    public void invalidateShopAfterCommit(Long shopId) {
        Runnable task = () -> invalidateShopNow(shopId);

        if (TransactionSynchronizationManager.isSynchronizationActive()) {
            TransactionSynchronizationManager.registerSynchronization(
                    new TransactionSynchronization() {
                        @Override
                        public void afterCommit() {
                            task.run();
                        }
                    }
            );
            return;
        }

        task.run();
    }

    private void invalidateShopNow(Long shopId) {
        String redisKey = CACHE_SHOP_KEY + shopId;

        stringRedisTemplate.delete(redisKey);
        shopCacheService.invalidateLocal(shopId);

        CacheInvalidateMessage message =
                new CacheInvalidateMessage("shop", String.valueOf(shopId));

        rabbitTemplate.convertAndSend(
                CACHE_INVALIDATE_EXCHANGE,
                "",
                message
        );

        log.info("商户缓存失效消息已发布，shopId={}", shopId);
    }
}
