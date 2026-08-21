# Caffeine + Redis 二级缓存压测报告

## 1. 测试目标

本次压测用于验证商户详情接口接入 Caffeine 本地缓存后的效果。

测试接口：

```http
GET http://localhost:8081/shop/1
```

对比链路：

```text
关闭 Caffeine：
请求 -> Redis -> MySQL

开启 Caffeine：
请求 -> Caffeine -> Redis -> MySQL
```

本次测试重点观察：

- QPS / Throughput
- Average
- P90 / P95 / P99
- Max
- Error %
- Redis GET 调用次数

## 2. 测试环境

当前项目配置：

```text
Spring Boot 端口：8081
MySQL：127.0.0.1:3306/hmdp
Redis：192.168.100.129:6380
RabbitMQ：127.0.0.1:5672，vhost=/hmdp
日志级别：root=warn，com.hmdp=warn
```

本次压测开关：

```yaml
hmdp:
  cache:
    shop:
      local-enabled: true / false
```

说明：

- `local-enabled=false`：关闭 Caffeine，只走 Redis + MySQL。
- `local-enabled=true`：开启 Caffeine，热点商户优先走 JVM 本地缓存。
- 每次切换该配置后都需要重启 Spring Boot 应用。

待补充记录项：

```text
测试机器 CPU：
测试机器内存：
操作系统：
JDK 版本：
JVM 参数：
JMeter 版本：
MySQL 数据量：
```

## 3. 测试方法

### 3.1 JMeter 参数

本次测试均使用同一个接口：

```text
GET /shop/1
```

三组并发配置：

| 线程数 | Ramp-up | Loop Count | 总请求数 |
|---:|---:|---:|---:|
| 200 | 10s | 100 | 20000 |
| 500 | 10s | 100 | 50000 |
| 1000 | 10s | 100 | 100000 |

### 3.2 Caffeine 预热

开启 Caffeine 组在正式压测前先请求一次：

```http
GET http://localhost:8081/shop/1
```

使 `shopId=1` 进入 Caffeine 本地缓存。

### 3.3 Redis 统计方式

Redis 命令统计使用：

```bash
CONFIG RESETSTAT
INFO commandstats
```

重点观察：

```text
cmdstat_get:calls
```

该值表示 Redis 启动或清空统计后累计执行的 `GET` 命令次数。

## 4. JMeter 压测结果

### 4.1 200 线程组

| 场景 | Samples | Average(ms) | Median(ms) | P90(ms) | P95(ms) | P99(ms) | Max(ms) | Error % | Throughput |
|---|---:|---:|---:|---:|---:|---:|---:|---:|---:|
| 关闭 Caffeine | 20000 | 2 | 2 | 3 | 3 | 5 | 76 | 0.00% | 2008.8/sec |
| 开启 Caffeine | 20000 | 0 | 0 | 1 | 1 | 1 | 13 | 0.00% | 2002.6/sec |

变化：

```text
P95：3ms -> 1ms，下降约 66.7%
P99：5ms -> 1ms，下降约 80.0%
Max：76ms -> 13ms，下降约 82.9%
Throughput：基本持平
```

### 4.2 500 线程组

| 场景 | Samples | Average(ms) | Median(ms) | P90(ms) | P95(ms) | P99(ms) | Max(ms) | Error % | Throughput |
|---|---:|---:|---:|---:|---:|---:|---:|---:|---:|
| 关闭 Caffeine | 50000 | 1 | 2 | 3 | 3 | 3 | 20 | 0.00% | 2473.8/sec |
| 开启 Caffeine | 50000 | 0 | 0 | 1 | 1 | 1 | 11 | 0.00% | 2494.0/sec |

变化：

```text
P95：3ms -> 1ms，下降约 66.7%
P99：3ms -> 1ms，下降约 66.7%
Max：20ms -> 11ms，下降约 45.0%
Throughput：2473.8/sec -> 2494.0/sec，提升约 0.8%
```

### 4.3 1000 线程组

| 场景 | Samples | Average(ms) | Median(ms) | P90(ms) | P95(ms) | P99(ms) | Max(ms) | Error % | Throughput |
|---|---:|---:|---:|---:|---:|---:|---:|---:|---:|
| 关闭 Caffeine | 100000 | 2 | 2 | 3 | 3 | 4 | 18 | 0.00% | 3297.3/sec |
| 开启 Caffeine | 100000 | 0 | 0 | 1 | 1 | 1 | 11 | 0.00% | 3320.8/sec |

变化：

```text
P95：3ms -> 1ms，下降约 66.7%
P99：4ms -> 1ms，下降约 75.0%
Max：18ms -> 11ms，下降约 38.9%
Throughput：3297.3/sec -> 3320.8/sec，提升约 0.7%
```

## 5. Redis GET 次数对比

1000 线程、100000 次请求下，对 Redis `cmdstat_get:calls` 进行观察。

### 5.1 关闭 Caffeine

清空统计后压测，结果：

```text
cmdstat_get:calls=100003
```

说明：

```text
100000 次 GET /shop/1 请求大约产生 100003 次 Redis GET。
```

也就是关闭 Caffeine 时，热点查询基本每次都会访问 Redis。

### 5.2 开启 Caffeine

开启 Caffeine 并再次压测后，Redis 统计从：

```text
cmdstat_get:calls=100003
```

增长到：

```text
cmdstat_get:calls=100005
```

本轮新增 Redis GET：

```text
100005 - 100003 = 2
```

说明：

```text
开启 Caffeine 后，100000 次 GET /shop/1 请求仅额外产生约 2 次 Redis GET。
```

该结果说明热点商铺数据基本命中 JVM 本地 Caffeine，Redis 访问量显著下降。

## 6. 结论

本次压测可以体现 Caffeine 的作用。

从响应时间看：

```text
200 / 500 / 1000 线程组中，开启 Caffeine 后 P95 均从 3ms 降至 1ms。
P99 从 3~5ms 降至 1ms。
最大响应时间也明显下降。
错误率均为 0%。
```

从 Redis 压力看：

```text
关闭 Caffeine：100000 次请求约产生 100003 次 Redis GET。
开启 Caffeine：同级别压测仅新增约 2 次 Redis GET。
```

因此，本次测试能证明：

```text
Caffeine 本地缓存可以将热点商户详情请求拦截在 JVM 内存中，
显著减少 Redis 网络访问，并降低接口尾部延迟。
```

需要注意：

```text
本次 Throughput 仅小幅提升，说明当前压测瓶颈可能不在 Redis，
而可能在 JMeter、本机 CPU、Tomcat 线程、网络或 HTTP 响应处理链路。
因此本报告不表述为“QPS 大幅提升”，而表述为“降低 Redis 访问量和尾部延迟”。
```

## 7. 可用于 README 或简历的表述

推荐表述：

```text
针对热门商户详情接口构建 Caffeine + Redis 二级缓存。经 JMeter 对 GET /shop/1 进行热点读压测，在 1000 线程、100000 次请求下，接口 P95 从 3ms 降至 1ms，P99 从 4ms 降至 1ms，错误率保持 0%；同时 Redis GET 调用由约 100000 次下降到约 2 次，显著降低 Redis 热点访问压力。
```

更保守表述：

```text
在热点商户查询场景下，Caffeine 本地缓存使请求优先命中 JVM 内存，减少 Redis 网络 IO。压测结果显示，开启 Caffeine 后 P95/P99 均稳定在 1ms 左右，Redis GET 调用次数显著下降。
```

不建议表述：

```text
Caffeine 让 QPS 大幅提升。
```

原因：

```text
本次数据中 QPS 仅小幅提升，主要收益体现在 Redis 访问量下降和尾部延迟降低。
```

## 8. 后续建议

为了让压测报告更完整，后续可以补充：

- 测试机器 CPU / 内存 / 操作系统。
- JDK 版本和 JVM 参数。
- JMeter `.jmx` 文件。
- JMeter 原始 `.jtl` 结果文件。
- Redis、MySQL、RabbitMQ 部署位置。
- 测试期间 CPU、内存、网络占用。
- 多轮重复压测后的平均结果。
- 使用非 GUI 模式运行 JMeter，降低 JMeter GUI 对压测数据的影响。

