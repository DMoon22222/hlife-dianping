package com.hmdp.config;

import org.springframework.amqp.core.Binding;
import org.springframework.amqp.core.BindingBuilder;
import org.springframework.amqp.core.DirectExchange;
import org.springframework.amqp.core.Queue;
import org.springframework.amqp.core.QueueBuilder;
import org.springframework.amqp.support.converter.Jackson2JsonMessageConverter;
import org.springframework.amqp.support.converter.MessageConverter;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

import static com.hmdp.mq.RabbitMqConstants.*;

@Configuration
public class RabbitMqConfig {

    /**
     * 正常订单交换机。
     */
    @Bean
    public DirectExchange orderExchange() {
        return new DirectExchange(
                ORDER_EXCHANGE,
                true,
                false
        );
    }

    /**
     * 正常订单队列。
     *
     * 消费失败后，消息进入重试交换机。
     */
    @Bean
    public Queue orderQueue() {
        return QueueBuilder
                .durable(ORDER_QUEUE)
                .deadLetterExchange(ORDER_RETRY_EXCHANGE)
                .deadLetterRoutingKey(ORDER_RETRY_ROUTING_KEY)
                .build();
    }

    /**
     * 正常订单队列绑定。
     */
    @Bean
    public Binding orderBinding() {
        return BindingBuilder
                .bind(orderQueue())
                .to(orderExchange())
                .with(ORDER_ROUTING_KEY);
    }

    /**
     * 订单重试交换机。
     */
    @Bean
    public DirectExchange orderRetryExchange() {
        return new DirectExchange(
                ORDER_RETRY_EXCHANGE,
                true,
                false
        );
    }

    /**
     * 订单重试队列。
     *
     * 消息在这里等待 5 秒，然后重新回到正常订单队列。
     */
    @Bean
    public Queue orderRetryQueue() {
        return QueueBuilder
                .durable(ORDER_RETRY_QUEUE)
                .ttl(5000)
                .deadLetterExchange(ORDER_EXCHANGE)
                .deadLetterRoutingKey(ORDER_ROUTING_KEY)
                .build();
    }

    /**
     * 订单重试队列绑定。
     */
    @Bean
    public Binding orderRetryBinding() {
        return BindingBuilder
                .bind(orderRetryQueue())
                .to(orderRetryExchange())
                .with(ORDER_RETRY_ROUTING_KEY);
    }

    /**
     * 订单最终失败交换机。
     */
    @Bean
    public DirectExchange orderFailedExchange() {
        return new DirectExchange(
                ORDER_FAILED_EXCHANGE,
                true,
                false
        );
    }

    /**
     * 订单最终失败队列。
     */
    @Bean
    public Queue orderFailedQueue() {
        return QueueBuilder
                .durable(ORDER_FAILED_QUEUE)
                .build();
    }

    /**
     * 订单最终失败队列绑定。
     */
    @Bean
    public Binding orderFailedBinding() {
        return BindingBuilder
                .bind(orderFailedQueue())
                .to(orderFailedExchange())
                .with(ORDER_FAILED_ROUTING_KEY);
    }

    /**
     * 使用 JSON 序列化保存消息。
     */
    @Bean
    public MessageConverter messageConverter() {
        return new Jackson2JsonMessageConverter();
    }
}
