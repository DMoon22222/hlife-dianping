-- KEYS[1] = seckill:stock:{voucherId}           -- 库存 key
-- KEYS[2] = seckill:order:{voucherId}           -- 已下单用户集合 key
-- KEYS[3] = seckill:pending                     -- 待发送订单 ZSet
-- KEYS[4] = seckill:pending:data:{orderId}      -- 待发送订单详情 Hash
-- ARGV[1]: userId
-- ARGV[2]: voucherId
-- ARGV[3]: orderId
-- ARGV[4]: nowMillis
local stockKey = KEYS[1]
local orderKey = KEYS[2]
local pendingKey = KEYS[3]
local pendingDataKey = KEYS[4]

local userId = ARGV[1]
local voucherId = ARGV[2]
local orderId = ARGV[3]
local nowMillis = ARGV[4]

-- 1. 判断库存 GET seckill:stock:{voucherId}
local stock = redis.call('GET', stockKey)
if stock == false or tonumber(stock) <= 0 then
    return 1
end

-- 2. 判断一人一单 SISMEMBER seckill:order:{voucherId} {userId}
if redis.call('SISMEMBER', orderKey, userId) == 1 then
    return 2
end

-- 3. 预扣库存 INCRBY seckill:stock:{voucherId} -1
redis.call('INCRBY', stockKey, -1)
-- 4、记录用户下单 SADD seckill:order:{voucherId} {userId}
redis.call('SADD', orderKey, userId)

-- 5、记录待发送订单 ZADD seckill:pending {nowMillis} {orderId}
redis.call('ZADD',pendingKey,nowMillis,orderId)
-- 6、记录待发送订单详情 保存到Hash中 HSET seckill:pending:data:{orderId} orderId {orderId} userId {userId} voucherId {voucherId} status PENDING retryCount 0 createTime {nowMillis} updateTime {nowMillis} lastError ''
redis.call('HSET',pendingDataKey,
           'orderId',orderId,
           'userId',userId,
           'voucherId',voucherId,
           'status','PENDING',
           'retryCount','0',
           'createTime',nowMillis,
           'updateTime',nowMillis,
           'lastError','')
-- 7、设置过期时间 EXPIRE seckill:pending:data:{orderId} 86400
redis.call('EXPIRE',pendingDataKey,86400)

return 0
