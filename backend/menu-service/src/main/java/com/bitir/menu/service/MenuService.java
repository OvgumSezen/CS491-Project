package com.bitir.menu.service;

import com.bitir.menu.dto.MenuRequest;
import com.bitir.menu.dto.MenuResponse;
import com.bitir.menu.model.Menu;
import com.bitir.menu.repository.MenuRepository;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Service;
import org.springframework.web.reactive.function.BodyInserters;
import org.springframework.web.reactive.function.client.WebClient;

import java.util.HashMap;
import java.util.List;
import java.util.stream.Collectors;

@Service
@RequiredArgsConstructor
@Slf4j
public class MenuService {
    private final MenuRepository menuRepository;
    private final WebClient webClient;
    public Boolean createMenu(MenuRequest menuRequest) {
        List<Integer> itemIds = menuRequest.getItems();

        // Check if the items in the menu exist by making a request to the item api.
        Boolean itemsExist = webClient.post()
                .uri("http://localhost:8082/api/item/items-exist")
                .contentType(MediaType.APPLICATION_JSON)
                .body(BodyInserters.fromValue(itemIds))
                .retrieve()
                .bodyToMono(Boolean.class)
                .block();

        if(itemsExist != null && itemsExist) {
            Menu menu = Menu.builder()
                    .name(menuRequest.getName())
                    .items(menuRequest.getItems())
                    .build();

            menuRepository.save(menu);
            log.info("Menu {} is saved.", menu.getId());

            // Notify the business by sending a notification by making a request to the notification api.
            HashMap<String, String> json = new HashMap<>();
            json.put("receiver", "bitirapp.target@gmail.com");
            json.put("subject", "Menu Notification");
            json.put("content", "You have successfully created a menu");

            webClient.post()
                    .uri("http://localhost:8084/api/notification/send-mail")
                    .contentType(MediaType.APPLICATION_JSON)
                    .body(BodyInserters.fromValue(json))
                    .retrieve()
                    .bodyToMono(Boolean.class)
                    .subscribe();

            return Boolean.TRUE;
        } else {
            throw new IllegalArgumentException("The items specified does not exist.");
        }
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

    public List<MenuResponse> getMenusById(List<Integer> ids){
        List<Menu> menus = (List<Menu>) menuRepository.findAllById(ids);
        log.info("{} menu(s) is/are queried.", menus.size());
        return menus.stream().map(this::mapMenuToResponse).collect(Collectors.toList());
    }

    public MenuResponse updateMenuById(MenuRequest menuRequest, Integer id){
        Menu menu = menuRepository.findMenuById(id);
        this.updateMenu(menu, menuRequest);
        menuRepository.save(menu);
        log.info("Menu {} is updated.", menu.getId());
        return this.mapMenuToResponse(menu);
    }

    private void updateMenu(Menu menu, MenuRequest menuRequest){
        menu.setItems(menuRequest.getItems());
        menu.setName(menuRequest.getName());
    }

    public void removeMenuById(Integer id){
        menuRepository.deleteMenuById(id);
        log.info("Menu {} is removed.", id);
    }
}
