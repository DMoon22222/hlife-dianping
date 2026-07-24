package com.hmdp.utils;

import org.springframework.data.redis.core.StringRedisTemplate;
import org.springframework.stereotype.Component;

import javax.annotation.Resource;
import java.time.LocalDateTime;
import java.time.ZoneOffset;
import java.time.format.DateTimeFormatter;

@Component
public class RedisIdWorker {

    @Resource
    private StringRedisTemplate stringRedisTemplate;

    /*
     * 开始时间戳
     */
    private static final long BEGIN_TIMESTAMP=1725177600L;
    /*
     * 序列号位数
     */
    private static final int COUNT_BITS=32;

    public Long nextId(String keyPrefix){
        //1、生成时间戳
        LocalDateTime now = LocalDateTime.now();
        long nowSecond=now.toEpochSecond(ZoneOffset.UTC);
        long timeStamp=nowSecond-BEGIN_TIMESTAMP;

        //2、生成序列号
        //2.1 获取当前的日期，精确到天
        String date = now.format(DateTimeFormatter.ofPattern("yyyyMMdd"));
        //2.2自增长
        String icrKey="icr:"+keyPrefix+":";
        long count=stringRedisTemplate.opsForValue().increment(icrKey + date);

        //3、拼接并返回
        // 利用位运算，将时间戳左移，放到高位，将序列号放到低位
        return timeStamp << COUNT_BITS | count;
    }
    /*
    public static void main(String[] args){
        LocalDateTime localDateTime = LocalDateTime.of(2024, 9, 1, 8, 0, 0);
        long second = localDateTime.toEpochSecond(ZoneOffset.UTC);
        System.out.println("second= "+ second);

    }
     */
}
