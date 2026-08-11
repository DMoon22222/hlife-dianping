package com.hmdp.utils;

import cn.hutool.core.lang.Snowflake;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Component;

/**
 * 基于 Hutool Snowflake 的分布式唯一 ID 生成器。
 */
@Component
public class SnowflakeIdGenerator {

    private static final long MAX_WORKER_ID = 31L;
    private static final long MAX_DATACENTER_ID = 31L;

    private final Snowflake snowflake;

    public SnowflakeIdGenerator(
            @Value("${hmdp.id-generator.worker-id:1}") long workerId,
            @Value("${hmdp.id-generator.datacenter-id:1}") long datacenterId
    ) {
        validateId("worker-id", workerId, MAX_WORKER_ID);
        validateId("datacenter-id", datacenterId, MAX_DATACENTER_ID);
        this.snowflake = new Snowflake(workerId, datacenterId);
    }

    public long nextId() {
        return snowflake.nextId();
    }

    private static void validateId(
            String name,
            long value,
            long maxValue
    ) {
        if (value < 0 || value > maxValue) {
            throw new IllegalArgumentException(
                    name + " must be between 0 and " + maxValue
            );
        }
    }
}
