package com.bitir.cart.controller;

import com.bitir.cart.dto.CartRequest;
import com.bitir.cart.dto.CartResponse;
import com.bitir.cart.service.CartService;
import lombok.RequiredArgsConstructor;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/api/cart")
@RequiredArgsConstructor
public class CartController {
    private final CartService cartService;

    @PostMapping("/create")
    @ResponseStatus(HttpStatus.CREATED)
    public void createCart(@RequestBody CartRequest cartRequest){
        cartService.create(cartRequest);
    }

    @GetMapping("/get-all")
    @ResponseStatus(HttpStatus.OK)
    public List<CartResponse> getAllCarts(){
        return cartService.getAllCarts();
    }
}
