package com.bitir.item.controller;

import com.bitir.item.dto.ItemRequest;
import com.bitir.item.dto.ItemResponse;
import com.bitir.item.service.ItemService;
import lombok.RequiredArgsConstructor;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.*;

import javax.transaction.Transactional;
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

    @GetMapping("/get")
    @ResponseStatus(HttpStatus.OK)
    public List<ItemResponse> getItemsById(@RequestBody List<Integer> ids){
        return itemService.getItemsById(ids);
    }

    @GetMapping("/get-by-name")
    @ResponseStatus(HttpStatus.OK)
    public List<ItemResponse> getItemsByName(@RequestBody List<String> names){
        return itemService.getItemsByName(names);
    }

    @PostMapping("/items-exist")
    @ResponseStatus(HttpStatus.OK)
    public Boolean itemsExist(@RequestBody List<Integer> ids){
        return itemService.itemsExist(ids);
    }

    @PostMapping("/update")
    @ResponseStatus(HttpStatus.OK)
    public ItemResponse updateItemById(@RequestBody ItemRequest itemRequest,
                                       @RequestParam("id") Integer id){
        return itemService.updateItemById(itemRequest, id);
    }

    @Transactional
    @PostMapping("/remove")
    @ResponseStatus(HttpStatus.OK)
    public void removeItemById(@RequestParam("id") Integer id){
        itemService.removeItemById(id);
    }
}
