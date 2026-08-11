package com.hmdp.service.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.hmdp.dto.Result;
import com.hmdp.entity.VoucherOrder;
import com.hmdp.mapper.VoucherOrderMapper;
import com.hmdp.mq.PendingOrderService;
import com.hmdp.mq.VoucherOrderMessage;
import com.hmdp.mq.VoucherOrderProducer;
import com.hmdp.service.ISeckillVoucherService;
import com.hmdp.service.IVoucherOrderService;
import com.hmdp.utils.SnowflakeIdGenerator;
import com.hmdp.utils.UserHolder;
import lombok.extern.slf4j.Slf4j;
import org.springframework.amqp.AmqpException;
import org.springframework.core.io.ClassPathResource;
import org.springframework.data.redis.core.StringRedisTemplate;
import org.springframework.data.redis.core.script.DefaultRedisScript;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.util.Arrays;

@Service
@Slf4j
public class VoucherOrderServiceImpl
        extends ServiceImpl<VoucherOrderMapper, VoucherOrder>
        implements IVoucherOrderService {

    @Resource
    private ISeckillVoucherService seckillVoucherService;

    @Resource
    private SnowflakeIdGenerator snowflakeIdGenerator;

    @Resource
    private StringRedisTemplate stringRedisTemplate;
    @Resource
    private PendingOrderService pendingOrderService;

    /**
     * RabbitMQ订单消息生产者
     */
    @Resource
    private VoucherOrderProducer voucherOrderProducer;

    private static final DefaultRedisScript<Long>
            SECKILL_SCRIPT;

    static {
        SECKILL_SCRIPT =
                new DefaultRedisScript<>();

        SECKILL_SCRIPT.setLocation(
                new ClassPathResource("seckill.lua")
        );

        SECKILL_SCRIPT.setResultType(
                Long.class
        );
    }

    /**
     * 用户秒杀优惠券
     */
    @Override
    public Result seckillVoucher(Long voucherId) {
        Long userId = UserHolder.getUser().getId();
        Long orderId = snowflakeIdGenerator.nextId();
        long now = System.currentTimeMillis();

        Long result = stringRedisTemplate.execute(
                SECKILL_SCRIPT,
                Arrays.asList(
                        "seckill:stock:" + voucherId,
                        "seckill:order:" + voucherId,
                        "seckill:pending",
                        "seckill:pending:data:" + orderId
                ),
                userId.toString(),
                voucherId.toString(),
                orderId.toString(),
                String.valueOf(now)
        );

        if (result == null) {
            return Result.fail("秒杀服务异常");
        }

        int code = result.intValue();
        if (code != 0) {
            return Result.fail(code == 1 ? "库存不足" : "不能重复下单");
        }

        VoucherOrderMessage orderMessage =
                new VoucherOrderMessage(orderId, userId, voucherId);

        try {
            voucherOrderProducer.sendOrderMessage(orderMessage);
        } catch (AmqpException e) {
            pendingOrderService.markSendFailed(
                    orderId,
                    "convertAndSend exception: " + e.getMessage()
            );
            log.error("发送秒杀订单消息异常，orderId={}", orderId, e);
            return Result.ok(orderId);
        }

        return Result.ok(orderId);
    }

    /**
     * RabbitMQ消费者调用的订单创建方法
     */
    @Override
    @Transactional
    public void createVouchOrder(
            VoucherOrder voucherOrder
    ) {

        /*
         * 1. 先插入订单
         *
         * 如果消息重复：
         * - 主键ID会冲突；
         * - 或user_id + voucher_id唯一索引冲突；
         * - 抛出DuplicateKeyException；
         * - 消费者直接ACK。
         */
        boolean saved = save(voucherOrder);

        if (!saved) {
            throw new IllegalStateException(
                    "订单保存失败"
            );
        }

        /*
         * 2. 扣减MySQL库存
         *
         * stock > 0 防止数据库超卖。
         */
        boolean stockSuccess =
                seckillVoucherService
                        .update()
                        .setSql(
                                "stock = stock - 1"
                        )
                        .eq(
                                "voucher_id",
                                voucherOrder
                                        .getVoucherId()
                        )
                        .gt(
                                "stock",
                                0
                        )
                        .update();

        if (!stockSuccess) {

            /*
             * 抛出异常后，
             * @Transactional会回滚前面的订单插入。
             */
            throw new IllegalStateException(
                    "数据库库存不足"
            );
        }
    }
}
