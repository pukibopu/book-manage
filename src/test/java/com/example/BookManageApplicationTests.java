package com.example;

import com.example.entity.Book;
import com.example.entity.Category;
import com.example.mapper.BookMapper;
import com.example.mapper.MapperTest;
import com.example.service.CategoryService;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import javax.annotation.Resource;
import java.util.List;

@SpringBootTest
class BookManageApplicationTests {
    @Autowired
    BookMapper mapper;
    @Test
    void contextLoads() {
        System.out.println(mapper.getBookByName("编程"));
    }

}
