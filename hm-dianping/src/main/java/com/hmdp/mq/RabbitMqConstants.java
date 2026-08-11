package com.hmdp.mq;

public final class RabbitMqConstants {
    private RabbitMqConstants() {
    }
    /**
     * 正常订单交换机，队列和路由键
     */
    public static final String ORDER_EXCHANGE =
            "hmdp.order.exchange";

    public static final String ORDER_QUEUE =
            "hmdp.order.create.queue";

    public static final String ORDER_ROUTING_KEY =
            "order.create";
    /**
     * 订单重试交换机、队列和路由键
     */
    public static final String ORDER_RETRY_EXCHANGE =
            "hmdp.order.retry.exchange";

    public static final String ORDER_RETRY_QUEUE =
            "hmdp.order.retry.queue";

    public static final String ORDER_RETRY_ROUTING_KEY =
            "order.retry";

    /**
     * 最终失败交换机、队列和路由键
     */
    public static final String ORDER_FAILED_EXCHANGE =
            "hmdp.order.failed.exchange";

    public static final String ORDER_FAILED_QUEUE =
            "hmdp.order.failed.queue";

    public static final String ORDER_FAILED_ROUTING_KEY =
            "order.failed";
}
