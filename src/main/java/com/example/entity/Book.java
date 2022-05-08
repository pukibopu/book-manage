package com.example.entity;

import lombok.Data;

@Data
public class Book {
    private int id;
    private String code;
    private String name;
    private String authors;
    private String press;
    private String imageUrl;
    private String description;
    private String publishData;
    private double price;
    private String status;
    private int categoryId;
}
