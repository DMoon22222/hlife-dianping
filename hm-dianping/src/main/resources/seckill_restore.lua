local stockKey = KEYS[1]
local orderKey = KEYS[2]
local restoreKey = KEYS[3]
local pendingKey = KEYS[4]

local userId = ARGV[1]
local orderId = ARGV[2]
local nowMills = ARGV[3]
-- 该脚本用于恢复redis中的库存
-- 1、防止重复恢复 setnx的含义是只有key不存在时才写入 SETNX key value
if redis.call('SETNX',restoreKey,nowMills)==0 then
    return 0
end
-- 2、设置恢复标记的有效期 EXPIRE key seconds 设置有效期
redis.call('EXPIRE',restoreKey,86400)
-- 3、检查用户是否存在于下单集合
if redis.call('SISMEMBER',orderKey,userId)==1 then
    -- 4、恢复Redis库存
    redis.call('INCRBY',stockKey,1)
    -- 5、删除一人一单标记 SREM key member 用户可以重新参与优惠券的秒杀
    redis.call('SREM',orderKey,userId)
end
-- 6、删除待补偿记录
redis.call('ZREM',pendingKey,orderId)

return 1