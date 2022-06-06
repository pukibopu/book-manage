package com.example.entity;

import lombok.Data;

@Data
public class Fine {
    private int id;
    private String bookName;
    private String bookId;
    private String readerId;
    private Double price;
}
