-- KEYS[1] = 限流 key
-- ARGV[1] = 当前时间戳 ms
-- ARGV[2] = 窗口大小 ms
-- ARGV[3] = 窗口内最大请求数
-- ARGV[4] = 本次请求唯一标识
-- ARGV[5] = key 过期时间 seconds

local key = KEYS[1]
local now = tonumber(ARGV[1])
local window = tonumber(ARGV[2])
local maxCount = tonumber(ARGV[3])
local requestId = ARGV[4]
local ttl = tonumber(ARGV[5])
-- 删除滑动窗口之外的旧请求记录
redis.call('ZREMRANGEBYSCORE',key,0,now-window)
-- 统计当前窗口内还有多少请求
local count = redis.call('ZCARD', key)
-- 判断是否到达限流阈值
if count>=maxCount then
    -- 给限流key设置过期时间
    redis.call('EXPIRE', key, ttl)
    return 0
end

redis.call('ZADD', key, now, requestId)
redis.call('EXPIRE', key, ttl)

return 1