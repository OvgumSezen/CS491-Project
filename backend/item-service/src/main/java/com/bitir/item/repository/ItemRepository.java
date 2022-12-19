package com.bitir.item.repository;

import com.bitir.item.model.Item;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface ItemRepository extends JpaRepository<Item, Integer> {
    Item findItemById(Integer id);
    List<Item> findAllByNameIn(List<String> names);
    List<Item> findAllByIdIn(List<Integer> ids);
    void deleteItemById(Integer id);
}
