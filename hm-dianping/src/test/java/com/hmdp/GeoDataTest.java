package com.hmdp;

import com.hmdp.entity.Shop;
import com.hmdp.service.IShopService;
import org.junit.jupiter.api.Test;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.data.redis.core.StringRedisTemplate;

import javax.annotation.Resource;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;
import org.springframework.data.geo.Point;
import org.springframework.data.redis.connection.RedisGeoCommands;

@SpringBootTest
public class GeoDataTest {
    @Resource
    private StringRedisTemplate stringRedisTemplate;
    @Resource
    private IShopService shopService;

    @Test
    public void loadShopData(){
        //1、查询店铺信息
        List<Shop> shops = shopService.list();
        //2、将店铺分组，按照typeId分组，id一致的放到一个集合
        Map<Long, List<Shop>> shopMap = shops.stream()
                .collect(Collectors.groupingBy(Shop::getTypeId));
        //3、分配完成写入Redis
        for (Map.Entry<Long, List<Shop>> entry : shopMap.entrySet()) {
            //3.1获取类型id
            Long typeId=entry.getKey();
            String key="shop:geo:"+typeId;
            //3.2获取同类型的店铺的集合
            List<Shop> value = entry.getValue();
            List<RedisGeoCommands.GeoLocation<String>> locations=new ArrayList<>(value.size());
            //3.3写入Redis GEOADD key 经度 维度 member
            for (Shop shop : value) {
                //stringRedisTemplate.opsForGeo().add(key,new Point(shop.getX(),shop.getY()),shop.getId().toString());
                locations.add(new RedisGeoCommands.GeoLocation<>(
                        shop.getId().toString(),
                        new Point(shop.getX(),shop.getY())));
            }
            stringRedisTemplate.opsForGeo().add(key,locations);
        }
    }
}
