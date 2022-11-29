package com.bitir.cart.repository;

import com.bitir.cart.model.Cart;
import org.springframework.data.repository.CrudRepository;

public interface CartRepository extends CrudRepository<Cart, Integer> {
    Cart findCartById(Integer id);
    void deleteCartById(Integer id);
}
