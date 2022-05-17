package com.example;

import com.example.mapper.BookMapper;
import com.example.mapper.ReaderMapper;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

@SpringBootTest
class BookManageApplicationTests {
    @Autowired
    ReaderMapper mapper;

    @Test
    void test(){
        System.out.println(mapper.selectList(null));
    }

}
