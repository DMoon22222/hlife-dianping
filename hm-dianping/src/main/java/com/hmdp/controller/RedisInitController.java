package com.hmdp.controller;

import cn.hutool.json.JSONUtil;
import com.hmdp.cache.ShopCacheService;
import com.hmdp.dto.Result;
import com.hmdp.entity.SeckillVoucher;
import com.hmdp.entity.Shop;
import com.hmdp.entity.ShopType;
import com.hmdp.service.ISeckillVoucherService;
import com.hmdp.service.IShopService;
import com.hmdp.service.IShopTypeService;
import org.springframework.data.geo.Point;
import org.springframework.data.redis.connection.RedisGeoCommands;
import org.springframework.data.redis.core.StringRedisTemplate;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import javax.annotation.Resource;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.TimeUnit;
import java.util.stream.Collectors;

import static com.hmdp.utils.RedisConstants.CACHE_SHOP_KEY;
import static com.hmdp.utils.RedisConstants.CACHE_SHOP_TTL;
import static com.hmdp.utils.RedisConstants.CACHE_SHOP_TYPE_KEY;
import static com.hmdp.utils.RedisConstants.SECKILL_STOCK_KEY;
import static com.hmdp.utils.RedisConstants.SHOP_GEO_KEY;

@RestController
@RequestMapping("/admin/redis")
public class RedisInitController {

    @Resource
    private StringRedisTemplate stringRedisTemplate;

    @Resource
    private IShopService shopService;

    @Resource
    private IShopTypeService shopTypeService;

    @Resource
    private ISeckillVoucherService seckillVoucherService;

    @Resource
    private ShopCacheService shopCacheService;

    /**
     * 测试/部署初始化接口：MySQL导入后调用一次，把核心运行数据写入Redis。
     */
    @RequestMapping(value = "/init", method = {RequestMethod.GET, RequestMethod.POST})
    public Result initRedisData() {
        List<Shop> shops = shopService.list();

        int geoCount = initShopGeo(shops);
        int shopCacheCount = initShopCache(shops);
        int shopTypeCount = initShopTypes();
        int seckillStockCount = initSeckillStock();

        Map<String, Object> data = new LinkedHashMap<>();
        data.put("shopGeoCount", geoCount);
        data.put("shopCacheCount", shopCacheCount);
        data.put("shopTypeCount", shopTypeCount);
        data.put("seckillStockCount", seckillStockCount);

        return Result.ok(data);
    }

    private int initShopGeo(List<Shop> shops) {
        Map<Long, List<Shop>> shopsByType = shops.stream()
                .collect(Collectors.groupingBy(Shop::getTypeId));

        int count = 0;
        for (Map.Entry<Long, List<Shop>> entry : shopsByType.entrySet()) {
            String key = SHOP_GEO_KEY + entry.getKey();
            stringRedisTemplate.delete(key);

            List<RedisGeoCommands.GeoLocation<String>> locations = new ArrayList<>();
            for (Shop shop : entry.getValue()) {
                if (shop.getX() == null || shop.getY() == null) {
                    continue;
                }
                locations.add(new RedisGeoCommands.GeoLocation<>(
                        shop.getId().toString(),
                        new Point(shop.getX(), shop.getY())
                ));
            }

            if (!locations.isEmpty()) {
                stringRedisTemplate.opsForGeo().add(key, locations);
                count += locations.size();
            }
        }
        return count;
    }

    private int initShopCache(List<Shop> shops) {
        shopCacheService.invalidateAllLocal();
        for (Shop shop : shops) {
            stringRedisTemplate.opsForValue().set(
                    CACHE_SHOP_KEY + shop.getId(),
                    JSONUtil.toJsonStr(shop),
                    CACHE_SHOP_TTL,
                    TimeUnit.MINUTES
            );
        }
        return shops.size();
    }

    private int initShopTypes() {
        List<ShopType> typeList = shopTypeService.lambdaQuery()
                .orderByAsc(ShopType::getSort)
                .list();
        stringRedisTemplate.opsForValue().set(CACHE_SHOP_TYPE_KEY, JSONUtil.toJsonStr(typeList));
        return typeList.size();
    }

    private int initSeckillStock() {
        List<SeckillVoucher> vouchers = seckillVoucherService.list();
        for (SeckillVoucher voucher : vouchers) {
            stringRedisTemplate.opsForValue().set(
                    SECKILL_STOCK_KEY + voucher.getVoucherId(),
                    String.valueOf(voucher.getStock())
            );
        }
        return vouchers.size();
    }
}
