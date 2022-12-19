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

    public void createItem(ItemRequest itemRequest) {
        Item item = Item.builder()
                .name(itemRequest.getName())
                .price(itemRequest.getPrice())
                .description(itemRequest.getDescription())
                .build();
        itemRepository.save(item);
        log.info("Item {} is saved.", item.getId());
    }

    public List<ItemResponse> getAllItems() {
        List<Item> items = itemRepository.findAll();
        log.info("All items are queried from the database.");
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

    public List<ItemResponse> getItemsById(List<Integer> ids){
        List<Item> items = itemRepository.findAllById(ids);
        log.info("{} item(s) is/are queried.", items.size());
        return items.stream().map(this::mapToItemResponse).collect(Collectors.toList());
    }

    public List<ItemResponse> getItemsByName(List<String> names) {
        List<Item> items = itemRepository.findAllByNameIn(names);
        log.info("{} item(s) is/are queried.", items.size());
        return items.stream().map(this::mapToItemResponse).collect(Collectors.toList());
    }

    public Boolean itemsExist(List<Integer> ids) {
        List<Item> items = itemRepository.findAllByIdIn(ids);
        Boolean allItemsExist = items.size() == ids.size();
        log.info("item(s) is/are checked for existence and returned {}.", allItemsExist);
        return allItemsExist;
    }

    public ItemResponse updateItemById(ItemRequest itemRequest, Integer id) {
        Item item = itemRepository.findItemById(id);
        this.updateItem(item, itemRequest);
        itemRepository.save(item);
        log.info("Item {} is updated.", item.getId());
        return this.mapToItemResponse(item);
    }

    private void updateItem(Item item, ItemRequest itemRequest) {
        item.setName(itemRequest.getName());
        item.setDescription(itemRequest.getDescription());
        item.setPrice(itemRequest.getPrice());
    }

    public void removeItemById(Integer id) {
        itemRepository.deleteItemById(id);
        log.info("Item {} is removed.", id);
    }
}
