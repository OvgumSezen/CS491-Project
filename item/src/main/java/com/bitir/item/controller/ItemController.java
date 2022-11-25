package com.bitir.item.controller;

import com.bitir.item.dto.ItemRequest;
import com.bitir.item.dto.ItemResponse;
import com.bitir.item.service.ItemService;
import lombok.RequiredArgsConstructor;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/api/item")
@RequiredArgsConstructor
public class ItemController {
    private final ItemService itemService;

    @PostMapping("/create")
    @ResponseStatus(HttpStatus.CREATED)
    public void createItem(@RequestBody ItemRequest itemRequest){
        itemService.createItem(itemRequest);
    }

    @GetMapping("/get-all")
    @ResponseStatus(HttpStatus.OK)
    public List<ItemResponse> getAllItems(){
        return itemService.getAllItems();
    }
}
