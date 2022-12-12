package com.bitir.cart.service;

import com.bitir.cart.dto.CartRequest;
import com.bitir.cart.dto.CartResponse;
import com.bitir.cart.model.Cart;
import com.bitir.cart.repository.CartRepository;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.stream.Collectors;

@Service
@RequiredArgsConstructor
@Slf4j
public class CartService {
    private final CartRepository cartRepository;

    public void create(CartRequest cartRequest){
        Cart cart = Cart.builder()
                .orders(cartRequest.getOrders())
                .build();

        cartRepository.save(cart);
        log.info("Cart {} is saved.", cart.getId());
    }

    public List<CartResponse> getAllCarts(){
        List<Cart> carts = (List<Cart>) cartRepository.findAll();
        log.info("All carts are queried from the database.");
        return carts.stream().map(this::mapCartToResponse).collect(Collectors.toList());
    }

    private CartResponse mapCartToResponse(Cart cart){
        return CartResponse.builder()
                .id(cart.getId())
                .orders(cart.getOrders())
                .build();
    }

    public List<CartResponse> getCartsById(List<Integer> ids){
        List<Cart> carts = (List<Cart>) cartRepository.findAllById(ids);
        log.info("{} cart(s) is/are queried.", carts.size());
        return carts.stream().map(this::mapCartToResponse).collect(Collectors.toList());
    }

    public CartResponse updateCartById(CartRequest cartRequest, Integer id){
        Cart cart = cartRepository.findCartById(id);
        this.updateOrder(cart, cartRequest);
        cartRepository.save(cart);
        log.info("Cart {} is updated.", cart.getId());
        return this.mapCartToResponse(cart);
    }

    private void updateOrder(Cart cart, CartRequest cartRequest) {
        cart.setOrders(cartRequest.getOrders());
    }

    public void removeCartById(Integer id){
        cartRepository.deleteCartById(id);
        log.info("Cart {} is removed.", id);
    }
}
