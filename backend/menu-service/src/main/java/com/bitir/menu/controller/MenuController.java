package com.bitir.menu.controller;

import com.bitir.menu.dto.MenuRequest;
import com.bitir.menu.dto.MenuResponse;
import com.bitir.menu.service.MenuService;
import lombok.RequiredArgsConstructor;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.*;

import javax.transaction.Transactional;
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

    @GetMapping("/get")
    @ResponseStatus(HttpStatus.OK)
    public List<MenuResponse> getMenusById(@RequestBody List<Integer> ids){
        return menuService.getMenusById(ids);
    }

    @PostMapping("/update")
    @ResponseStatus(HttpStatus.OK)
    public MenuResponse updateMenuById(@RequestBody MenuRequest menuRequest,
                                       @RequestParam("id") Integer id){
        return menuService.updateMenuById(menuRequest, id);
    }

    @Transactional
    @PostMapping("/remove")
    @ResponseStatus(HttpStatus.OK)
    public void removeMenuById(@RequestParam("id") Integer id){
        menuService.removeMenuById(id);
    }
}
