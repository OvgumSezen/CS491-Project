package com.bitir.order.controller;

import com.bitir.order.dto.OrderRequest;
import com.bitir.order.dto.OrderResponse;
import com.bitir.order.service.OrderService;
import lombok.RequiredArgsConstructor;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.*;

import javax.transaction.Transactional;
import java.text.ParseException;
import java.util.List;

@RestController
@RequestMapping("/api/order")
@RequiredArgsConstructor
public class OrderController {
    private final OrderService orderService;

    @PostMapping("/create")
    @ResponseStatus(HttpStatus.CREATED)
    public void createOrder(@RequestBody OrderRequest orderRequest) throws ParseException {
        orderService.createOrder(orderRequest);
    }

    @GetMapping("/get-all")
    @ResponseStatus(HttpStatus.OK)
    public List<OrderResponse> getAllOrders(){
        return orderService.getAllOrders();
    }

    @GetMapping("/get")
    @ResponseStatus(HttpStatus.OK)
    public List<OrderResponse> getOrdersById(@RequestBody List<Integer> id){
        return orderService.getOrdersById(id);
    }

    @PostMapping("/update")
    @ResponseStatus(HttpStatus.OK)
    public OrderResponse updateOrderById(@RequestBody OrderRequest orderRequest,
                                         @RequestParam("id") Integer id) throws ParseException {
        return orderService.updateOrderById(orderRequest, id);
    }

    @Transactional
    @PostMapping("/remove")
    @ResponseStatus(HttpStatus.OK)
    public void removeOrderById(@RequestParam("id") Integer id){
        orderService.removeOrderById(id);
    }

}
