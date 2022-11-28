package com.bitir.offer.controller;

import com.bitir.offer.dto.OfferRequest;
import com.bitir.offer.dto.OfferResponse;
import com.bitir.offer.service.OfferService;
import lombok.RequiredArgsConstructor;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.*;

import javax.transaction.Transactional;
import java.util.List;

@RestController
@RequestMapping("/api/offer")
@RequiredArgsConstructor
public class OfferController {
    private final OfferService offerService;

    @PostMapping("/create")
    @ResponseStatus(HttpStatus.CREATED)
    public void createOffer(@RequestBody OfferRequest offerRequest){
        offerService.createOffer(offerRequest);
    }

    @GetMapping("/get-all")
    @ResponseStatus(HttpStatus.OK)
    public List<OfferResponse> getAllOffers(){
        return offerService.getAllOffers();
    }

    @GetMapping("/get")
    @ResponseStatus(HttpStatus.OK)
    public List<OfferResponse> getOffersById(@RequestBody List<Integer> ids){
        return offerService.getOffersById(ids);
    }

    @PostMapping("/update")
    @ResponseStatus(HttpStatus.OK)
    public OfferResponse updateOfferById(@RequestBody OfferRequest offerRequest,
                                         @RequestParam("id") Integer id){
        return offerService.updateOfferById(offerRequest, id);
    }

    @Transactional
    @PostMapping("/remove")
    @ResponseStatus(HttpStatus.OK)
    public void removeOffersById(@RequestParam("id") Integer id){
        offerService.removeOffersById(id);
    }

}
