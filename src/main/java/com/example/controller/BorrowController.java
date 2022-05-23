package com.example.controller;

import com.alibaba.fastjson2.JSON;
import com.alibaba.fastjson2.JSONArray;
import com.alibaba.fastjson2.JSONObject;
import com.example.entity.Book;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@CrossOrigin(origins = "*")
@RequestMapping("/api/borrow")
public class BorrowController {
    @PostMapping("/borrow-books")
    public void doBorrow(@RequestBody String books){
       List<Book> bookList = JSON.parseArray(books,Book.class);
        bookList.forEach(System.out::println);

    }
}
