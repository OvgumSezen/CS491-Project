package com.bitir.order.service;

import com.bitir.order.dto.OrderRequest;
import com.bitir.order.dto.OrderResponse;
import com.bitir.order.model.Order;
import com.bitir.order.repository.OrderRepository;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Locale;
import java.util.stream.Collectors;

@Service
@RequiredArgsConstructor
@Slf4j
public class OrderService {
    private final OrderRepository orderRepository;

    public void createOrder(OrderRequest orderRequest) throws ParseException {
        Order order = Order.builder()
                .date(this.stringToDate(orderRequest.getDate()))
                .items(orderRequest.getItems())
                .build();
        orderRepository.save(order);
        log.info("Order {} is saved.", order.getId());
    }

    private Date stringToDate(String dateString) throws ParseException {
        SimpleDateFormat formatter = new SimpleDateFormat("dd-MM-yyyy", Locale.getDefault());
        return formatter.parse(dateString);
    }

    public List<OrderResponse> getAllOrders(){
        List<Order> orders = (List<Order>) orderRepository.findAll();
        log.info("All orders are queried from the database.");
        return orders.stream().map(this::mapOrderToResponse).collect(Collectors.toList());
    }

    private OrderResponse mapOrderToResponse(Order order){
        return OrderResponse.builder()
                .id(order.getId())
                .date(order.getDate().toString())
                .items(order.getItems())
                .build();
    }

    public List<OrderResponse> getOrdersById(List<Integer> id){
        List<Order> orders = (List<Order>) orderRepository.findAllById(id);
        log.info("{} order(s) is/are queried.", orders.size());
        return orders.stream().map(this::mapOrderToResponse).collect(Collectors.toList());
    }

    public OrderResponse updateOrderById(OrderRequest orderRequest, Integer id) throws ParseException {
        Order order = orderRepository.findOrderById(id);
        this.updateOrder(order, orderRequest);
        orderRepository.save(order);
        log.info("Order {} is updated.", order.getId());
        return this.mapOrderToResponse(order);
    }

    private void updateOrder(Order order, OrderRequest orderRequest) throws ParseException {
        order.setDate(this.stringToDate(orderRequest.getDate()));
        order.setItems(orderRequest.getItems());
    }

    public void removeOrderById(Integer id){
        orderRepository.deleteById(id);
        log.info("Order {} is removed.", id);
    }
}
