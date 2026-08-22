package com.hmdp.cache;

import cn.hutool.core.util.StrUtil;
import cn.hutool.json.JSONUtil;
import com.github.benmanes.caffeine.cache.Cache;
import com.hmdp.entity.Shop;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.data.redis.core.StringRedisTemplate;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.concurrent.ThreadLocalRandom;
import java.util.concurrent.TimeUnit;
import java.util.function.Function;

import static com.hmdp.utils.RedisConstants.CACHE_NULL_TTL;
import static com.hmdp.utils.RedisConstants.CACHE_SHOP_KEY;
import static com.hmdp.utils.RedisConstants.CACHE_SHOP_TTL;

@Slf4j
@Service
public class ShopCacheService {

    @Resource
    private Cache<Long, Shop> shopLocalCache;

    @Resource
    private StringRedisTemplate stringRedisTemplate;

    @Value("${hmdp.cache.shop.local-enabled:true}")
    private boolean shopLocalCacheEnabled;

    public Shop queryShopById(Long id, Function<Long, Shop> dbFallback) {
        if (!shopLocalCacheEnabled) {
            log.info("Caffeine已关闭，直接查询Redis/MySQL，shopId={}", id);
            return queryRedisAndDb(id, dbFallback);
        }

        Shop shop = shopLocalCache.getIfPresent(id);
        if (shop != null) {
            log.info("Caffeine命中，shopId={}", id);
            return shop;
        }

        log.info("Caffeine未命中，shopId={}", id);
        return shopLocalCache.get(id, shopId -> queryRedisAndDb(shopId, dbFallback));
    }

    private Shop queryRedisAndDb(Long id, Function<Long, Shop> dbFallback) {
        String redisKey = CACHE_SHOP_KEY + id;

        String json = stringRedisTemplate.opsForValue().get(redisKey);

        if (StrUtil.isNotBlank(json)) {
            Shop cachedShop = JSONUtil.toBean(json, Shop.class);
            if (cachedShop != null && cachedShop.getId() != null) {
                return cachedShop;
            }
            log.warn("商户缓存内容异常，删除后回源数据库，shopId={}，cache={}", id, json);
            stringRedisTemplate.delete(redisKey);
            json = null;
        }

        if (json != null) {
            return null;
        }

        Shop shop = dbFallback.apply(id);
        if (shop == null) {
            stringRedisTemplate.opsForValue().set(
                    redisKey,
                    "",
                    CACHE_NULL_TTL,
                    TimeUnit.MINUTES
            );
            return null;
        }

        stringRedisTemplate.opsForValue().set(
                redisKey,
                JSONUtil.toJsonStr(shop),
                randomShopCacheTtlMinutes(),
                TimeUnit.MINUTES
        );

        return shop;
    }

    public void invalidateLocal(Long id) {
        shopLocalCache.invalidate(id);
    }

    public void invalidateAllLocal() {
        shopLocalCache.invalidateAll();
    }

    private long randomShopCacheTtlMinutes() {
        return CACHE_SHOP_TTL + ThreadLocalRandom.current().nextLong(0, 11);
    }
}
