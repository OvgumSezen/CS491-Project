package com.bitir.offer.service;

import com.bitir.offer.dto.OfferRequest;
import com.bitir.offer.dto.OfferResponse;
import com.bitir.offer.model.Offer;
import com.bitir.offer.repository.OfferRepository;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.stream.Collectors;

@Service
@RequiredArgsConstructor
@Slf4j
public class OfferService {
    private final OfferRepository offerRepository;

    public void createOffer(OfferRequest offerRequest){
        Offer offer = Offer.builder()
                .discount(offerRequest.getDiscount())
                .items(offerRequest.getItems())
                .build();
        offerRepository.save(offer);
        log.info("Offer {} is saved.", offer.getId());
    }

    public List<OfferResponse> getAllOffers(){
        List<Offer> offers = (List<Offer>) offerRepository.findAll();
        log.info("All offers are queried from the database.");
        return offers.stream().map(this::mapOrderToResponse).collect(Collectors.toList());
    }

    private OfferResponse mapOrderToResponse(Offer offer){
        return OfferResponse.builder()
                .id(offer.getId())
                .discount(offer.getDiscount())
                .items(offer.getItems())
                .build();
    }

    public List<OfferResponse> getOffersById(List<Integer> ids){
        List<Offer> offers = (List<Offer>) offerRepository.findAllById(ids);
        log.info("{} offer(s) is/are queried.", offers.size());
        return offers.stream().map(this::mapOrderToResponse).collect(Collectors.toList());
    }


    public OfferResponse updateOfferById(OfferRequest offerRequest, Integer id) {
        Offer offer = offerRepository.findOfferById(id);
        this.updateOffer(offer, offerRequest);
        offerRepository.save(offer);
        log.info("Offer {} is updated.", offer.getId());
        return this.mapOrderToResponse(offer);
    }

    private void updateOffer(Offer offer, OfferRequest offerRequest) {
        offer.setDiscount(offerRequest.getDiscount());
        offer.setItems(offerRequest.getItems());
    }

    public void removeOffersById(Integer id){
        offerRepository.deleteOfferById(id);
        log.info("Offer {} is removed.", id);
    }
}
