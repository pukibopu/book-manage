package com.example.controller;

import com.alibaba.fastjson2.JSON;
import com.example.entity.Category;
import com.example.service.BookService;
import com.example.service.CategoryService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import java.util.List;


@RestController
@CrossOrigin(origins = "*")
@RequestMapping("/api/index")
public class MainController {
    @Resource
    CategoryService categoryService;
    @Resource
    BookService bookService;
    @RequestMapping("/category")
    public String cate(){
        List<Category> list=categoryService.getCategory();
        return JSON.toJSONString(list);
    }
    @RequestMapping("/book-list")
    public String bookList(){
        return JSON.toJSONString(bookService.getBookList());
    }
    @RequestMapping(value = "/book-cate",method = RequestMethod.GET)
    public String getBookCate(@RequestParam("cid")int cid){
        return JSON.toJSONString(bookService.getBookListByCid(cid));
    }
    @RequestMapping(value = "/book-search")
    public String searchBook(@RequestParam("name")String name){
        return JSON.toJSONString(bookService.getBookBySearch(name));
    }

}
