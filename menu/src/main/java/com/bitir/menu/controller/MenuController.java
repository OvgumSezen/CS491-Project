package com.bitir.menu.controller;

import com.bitir.menu.dto.MenuRequest;
import com.bitir.menu.dto.MenuResponse;
import com.bitir.menu.service.MenuService;
import lombok.RequiredArgsConstructor;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/api/menu")
@RequiredArgsConstructor
public class MenuController {
    private final MenuService menuService;

    @PostMapping("/create")
    @ResponseStatus(HttpStatus.CREATED)
    public void addMenu(@RequestBody MenuRequest menuRequest){
        menuService.createMenu(menuRequest);
    }

    @GetMapping("/get-all")
    @ResponseStatus(HttpStatus.OK)
    public List<MenuResponse> getAllMenus(){
        return menuService.getAllMenus();
    }
}
