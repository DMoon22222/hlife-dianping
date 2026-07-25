package com.hmdp.service.impl;

import com.hmdp.dto.Result;
import com.hmdp.entity.SeckillVoucher;
import com.hmdp.entity.VoucherOrder;
import com.hmdp.mapper.VoucherOrderMapper;
import com.hmdp.service.ISeckillVoucherService;
import com.hmdp.service.IUserService;
import com.hmdp.service.IVoucherOrderService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.hmdp.utils.RedisIdWorker;
import com.hmdp.utils.UserHolder;
import org.springframework.aop.framework.AopContext;
import org.springframework.lang.NonNull;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.time.LocalDateTime;

/**
 * <p>
 *  服务实现类
 * </p>
 *
 * @author Moon
 * @since 2026-07-13
 */
@Service
public class VoucherOrderServiceImpl extends ServiceImpl<VoucherOrderMapper, VoucherOrder> implements IVoucherOrderService {

    @Resource
    private ISeckillVoucherService seckillVoucherService;
    @Resource
    private RedisIdWorker redisIdWorker;
    @Override
    public Result seckillVoucher(Long voucherId) {
        //1、查询优惠券
        SeckillVoucher voucher = seckillVoucherService.getById(voucherId);

        //2、判断秒杀是否开始
        if(voucher.getBeginTime().isAfter(LocalDateTime.now())){
            //尚未开始
            return Result.fail("秒杀尚未开始");
        }

        //3、判断秒杀是否已经结束
        if(voucher.getEndTime().isBefore(LocalDateTime.now())){
            //已经结束
            return Result.fail("秒杀已经结束");
        }

        //4、判断库存是否充足
        if(voucher.getStock()<1){
            //库存不足
            return Result.fail("库存不足");
        }

        Long userId = UserHolder.getUser().getId();
        synchronized (userId.toString().intern()) {
            //获取代理对象（事务）
            IVoucherOrderService proxy =
                    (IVoucherOrderService) AopContext.currentProxy();
            return proxy.createVouchOrder(voucherId);
        }
    }


    @Transactional
    public Result createVouchOrder(Long voucherId) {
        //6、一人一单
        Long userId = UserHolder.getUser().getId();


            //6.1 查询订单
            int count = query().eq("user_id",userId).eq("voucher_id", voucherId).count();
            //6.2 判断是否存在
            if(count>0){
                //用户已经购买过了
                return Result.fail("用户已经购买过了一次");
            }

            //5、若充足，扣减库存
            //UPDATE tb_seckill_vouche SET stock = stock - 1
            //WHERE voucher_id = ? AND stock > 0
            boolean success= seckillVoucherService.update()
                    .setSql("stock = stock - 1")
                    .eq("voucher_id", voucherId)
                    .gt("stock",0)
                    .update();
            if(!success){
                return Result.fail("库存不足");
            }


            //7、创建订单
            VoucherOrder voucherOrder=new VoucherOrder();
            //7.1 订单id
            Long orderId = redisIdWorker.nextId("order");
            voucherOrder.setId(orderId);
            //7.2 用户id

            voucherOrder.setUserId(userId);
            //7.3 代金券id
            voucherOrder.setVoucherId(voucherId);
            save(voucherOrder);


            //8、返回订单id
            return Result.ok(orderId);



    }
}
