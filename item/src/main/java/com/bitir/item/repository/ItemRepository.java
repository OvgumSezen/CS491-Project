package com.bitir.item.repository;

import com.bitir.item.model.Item;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface ItemRepository extends CrudRepository <Item, Integer> {
}
