package com.bitir.order.repository;

import com.bitir.order.model.Order;
import org.springframework.data.repository.CrudRepository;

public interface OrderRepository extends CrudRepository <Order, Integer> {
    Order findOrderById(Integer id);
    void deleteById(Integer id);
}
