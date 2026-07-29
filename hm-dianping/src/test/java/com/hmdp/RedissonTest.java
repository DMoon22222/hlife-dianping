package com.hmdp;

import org.junit.jupiter.api.BeforeEach;
import org.redisson.api.RLock;
import org.redisson.api.RedissonClient;

import javax.annotation.Resource;

public class RedissonTest {
    @Resource
    RedissonClient redissonClient;
    @Resource
    RedissonClient redissonClient2;
    @Resource
    RedissonClient redissonClient3;

    private RLock lock;

    @BeforeEach
    void setUp(){
        RLock lock1=redissonClient.getLock("order");
        RLock lock2=redissonClient2.getLock("order");
        RLock lock3=redissonClient3.getLock("order");

        //创建联锁multiLock
        lock=redissonClient.getMultiLock(lock1,lock2,lock3);
    }
}
