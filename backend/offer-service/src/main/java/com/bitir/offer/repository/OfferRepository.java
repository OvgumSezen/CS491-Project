package com.bitir.offer.repository;

import com.bitir.offer.model.Offer;
import org.springframework.data.repository.CrudRepository;

import java.util.List;

public interface OfferRepository extends CrudRepository <Offer, Integer> {
    Offer findOfferById(Integer id);
    void deleteOfferById(Integer id);
}
