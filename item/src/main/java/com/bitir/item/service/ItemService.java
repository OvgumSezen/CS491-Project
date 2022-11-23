package com.bitir.item.service;

import com.bitir.item.dto.ItemRequest;
import com.bitir.item.dto.ItemResponse;
import com.bitir.item.model.Item;
import com.bitir.item.repository.ItemRepository;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.stream.Collectors;

@Service
@RequiredArgsConstructor
@Slf4j
public class ItemService {
    private final ItemRepository itemRepository;

    public void createItem(ItemRequest itemRequest){
        Item item = Item.builder()
                .name(itemRequest.getName())
                .price(itemRequest.getPrice())
                .description(itemRequest.getDescription())
                .build();

        itemRepository.save(item);
        log.info("Item {} is saved.", item.getId());
    }

    public List<ItemResponse> getAllItems(){
        List<Item> items = (List<Item>) itemRepository.findAll();
        log.info("All items are extracted from the database.");
        return items.stream().map(this::mapToItemResponse).collect(Collectors.toList());
    }

    private ItemResponse mapToItemResponse(Item item) {
        return ItemResponse.builder()
                .id(item.getId())
                .name(item.getName())
                .price(item.getPrice())
                .description(item.getDescription())
                .build();
    }

}
