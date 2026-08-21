package com.hmdp.mq;

import com.hmdp.cache.ShopCacheService;
import com.rabbitmq.client.Channel;
import lombok.extern.slf4j.Slf4j;
import org.springframework.amqp.core.Message;
import org.springframework.amqp.rabbit.annotation.RabbitListener;
import org.springframework.data.redis.core.StringRedisTemplate;
import org.springframework.stereotype.Component;

import javax.annotation.Resource;
import java.io.IOException;

import static com.hmdp.utils.RedisConstants.CACHE_SHOP_KEY;

@Slf4j
@Component
public class CacheInvalidateConsumer {

    @Resource
    private ShopCacheService shopCacheService;

    @Resource
    private StringRedisTemplate stringRedisTemplate;

    @RabbitListener(queues = "#{cacheInvalidateQueue.name}")
    public void onCacheInvalidate(
            CacheInvalidateMessage cacheMessage,
            Message message,
            Channel channel) throws IOException {

        long deliveryTag = message.getMessageProperties().getDeliveryTag();

        try {
            if (!"shop".equals(cacheMessage.getCacheName())) {
                log.warn("忽略未知缓存失效消息，message={}", cacheMessage);
                channel.basicAck(deliveryTag, false);
                return;
            }

            Long shopId = Long.valueOf(cacheMessage.getKey());

            shopCacheService.invalidateLocal(shopId);
            stringRedisTemplate.delete(CACHE_SHOP_KEY + shopId);

            channel.basicAck(deliveryTag, false);
            log.info("商户缓存失效完成，shopId={}", shopId);
        } catch (Exception e) {
            log.error("商户缓存失效失败，message={}", cacheMessage, e);
            channel.basicNack(deliveryTag, false, true);
        }
    }
}
