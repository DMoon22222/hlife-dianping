package com.hmdp.config;

import org.redisson.Redisson;
import org.redisson.api.RedissonClient;
import org.redisson.config.Config;
import org.redisson.config.SingleServerConfig;
import org.springframework.boot.autoconfigure.condition.ConditionalOnProperty;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

@Configuration
@ConditionalOnProperty(prefix = "hmdp.redisson", name = "enabled", havingValue = "true")
public class RedissonConfig {

    private final HmdpProperties hmdpProperties;

    public RedissonConfig(HmdpProperties hmdpProperties) {
        this.hmdpProperties = hmdpProperties;
    }

    @Bean
    public RedissonClient redissonClient() {
        return createRedissonClient(hmdpProperties.getRedisson().getNode1Address());
    }

    @Bean
    public RedissonClient redissonClient2() {
        return createRedissonClient(hmdpProperties.getRedisson().getNode2Address());
    }

    @Bean
    public RedissonClient redissonClient3() {
        return createRedissonClient(hmdpProperties.getRedisson().getNode3Address());
    }

    private RedissonClient createRedissonClient(String address) {
        Config config = new Config();
        SingleServerConfig singleServerConfig = config.useSingleServer()
                .setAddress(address);
        String password = hmdpProperties.getRedisson().getPassword();
        if (password != null && !password.trim().isEmpty()) {
            singleServerConfig.setPassword(password);
        }
        return Redisson.create(config);
    }
}
