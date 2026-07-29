-- KEYS[1]: seckill stock key, for example seckill:stock:10
-- KEYS[2]: ordered user set key, for example seckill:order:10
-- ARGV[1]: user id
local stockKey = KEYS[1]
local orderKey = KEYS[2]
local userId = ARGV[1]

-- 1. Check stock.
local stock = redis.call('GET', stockKey)
if stock == false or tonumber(stock) <= 0 then
    return 1
end

-- 2. Check duplicate order.
if redis.call('SISMEMBER', orderKey, userId) == 1 then
    return 2
end

-- 3. Deduct stock and record the user.
redis.call('INCRBY', stockKey, -1)
redis.call('SADD', orderKey, userId)

return 0
