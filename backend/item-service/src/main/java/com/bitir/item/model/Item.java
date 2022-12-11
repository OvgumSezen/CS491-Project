package com.bitir.item.model;

import lombok.*;

import javax.persistence.*;

@Entity
@Table(name = "items")
@AllArgsConstructor
@NoArgsConstructor
@Data
@Builder
public class Item {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;
    private String name;
    private Double price;
    private String description;
}
