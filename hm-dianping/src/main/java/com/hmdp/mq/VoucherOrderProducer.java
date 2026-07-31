package com.hmdp.mq;

import lombok.extern.slf4j.Slf4j;
import org.springframework.amqp.core.Message;
import org.springframework.amqp.core.MessageDeliveryMode;
import org.springframework.amqp.rabbit.connection.CorrelationData;
import org.springframework.amqp.rabbit.core.RabbitTemplate;
import org.springframework.stereotype.Component;

import javax.annotation.PostConstruct;
import javax.annotation.Resource;

import static com.hmdp.mq.RabbitMqConstants.ORDER_EXCHANGE;
import static com.hmdp.mq.RabbitMqConstants.ORDER_ROUTING_KEY;

/*
 * 订单消息生产者
 * 用户秒杀请求
  -> Redis Lua 判断库存/一人一单
  -> 生成订单消息 VoucherOrderMessage
  -> VoucherOrderProducer 发送到 RabbitMQ
  -> VoucherOrderConsumer 消费消息
  -> 创建数据库订单
 */
@Component
@Slf4j
public class VoucherOrderProducer
        implements RabbitTemplate.ConfirmCallback,
        RabbitTemplate.ReturnCallback {

    @Resource
    private RabbitTemplate rabbitTemplate;

    @PostConstruct
    public void init() {
        // RabbitMQ是否成功接收消息
        rabbitTemplate.setConfirmCallback(this);

        // 消息是否成功路由到队列
        rabbitTemplate.setReturnCallback(this);
    }

    /**
     * 发送秒杀订单消息
     */
    public void sendOrderMessage(VoucherOrderMessage orderMessage) {

        String messageId =
                orderMessage.getOrderId().toString();

        CorrelationData correlationData =
                new CorrelationData(messageId);

        rabbitTemplate.convertAndSend(
                ORDER_EXCHANGE,
                ORDER_ROUTING_KEY,
                orderMessage,
                message -> {
                    // 设置消息持久化
                    message.getMessageProperties()
                            .setDeliveryMode(
                                    MessageDeliveryMode.PERSISTENT
                            );

                    // 设置消息唯一ID
                    message.getMessageProperties()
                            .setMessageId(messageId);

                    return message;
                },
                correlationData
        );
    }

    /**
     * Broker确认回调
     */
    @Override
    public void confirm(
            CorrelationData correlationData,
            boolean ack,
            String cause
    ) {
        String messageId = correlationData == null
                ? "unknown"
                : correlationData.getId();

        if (ack) {
            log.debug(
                    "RabbitMQ成功接收订单消息，messageId={}",
                    messageId
            );
        } else {
            log.error(
                    "RabbitMQ接收订单消息失败，messageId={}，原因={}",
                    messageId,
                    cause
            );

            /*
             * 后续增强版：
             * 在这里记录待补偿消息，
             * 由定时任务重新投递。
             */
        }
    }

    /**
     * 消息无法路由到队列时回调
     */
    @Override
    public void returnedMessage(
            Message message,
            int replyCode,
            String replyText,
            String exchange,
            String routingKey
    ) {
        log.error(
                "RabbitMQ消息无法路由，replyCode={}，replyText={}，"
                        + "exchange={}，routingKey={}，message={}",
                replyCode,
                replyText,
                exchange,
                routingKey,
                message
        );

        /*
         * 后续增强版：
         * 这里也应该记录待补偿消息。
         */
    }
}
