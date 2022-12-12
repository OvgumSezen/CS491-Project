package com.bitir.menu.repository;

import com.bitir.menu.model.Menu;
import org.springframework.data.repository.CrudRepository;

public interface MenuRepository extends CrudRepository <Menu, Integer> {
    Menu findMenuById(Integer id);
    void deleteMenuById(Integer id);
}
