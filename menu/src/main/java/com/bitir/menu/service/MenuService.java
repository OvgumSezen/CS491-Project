package com.bitir.menu.service;

import com.bitir.menu.dto.MenuRequest;
import com.bitir.menu.dto.MenuResponse;
import com.bitir.menu.model.Menu;
import com.bitir.menu.repository.MenuRepository;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.stream.Collectors;

@Service
@RequiredArgsConstructor
@Slf4j
public class MenuService {
    private final MenuRepository menuRepository;
    public void createMenu(MenuRequest menuRequest) {
        Menu menu = Menu.builder()
                .name(menuRequest.getName())
                .items(menuRequest.getItems())
                .build();

        menuRepository.save(menu);
        log.info("Menu {} is saved.", menu.getId());
    }

    public List<MenuResponse> getAllMenus() {
        List<Menu> menus = (List<Menu>) menuRepository.findAll();
        log.info("All menus are queried from the database.");
        return menus.stream().map(this::mapMenuToResponse).collect(Collectors.toList());
    }

    private MenuResponse mapMenuToResponse(Menu menu){
        return MenuResponse.builder()
                .id(menu.getId())
                .name(menu.getName())
                .items(menu.getItems())
                .build();
    }
}
