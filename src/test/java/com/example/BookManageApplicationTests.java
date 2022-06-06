package com.example;

import com.example.mapper.BookMapper;
import com.example.mapper.BorrowMapper;
import com.example.mapper.FineMapper;
import com.example.mapper.ReaderMapper;
import com.example.service.UserService;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.transaction.annotation.Transactional;

@SpringBootTest
class BookManageApplicationTests {
    @Autowired
    FineMapper mapper;
    @Test
    void test(){
        System.out.println(mapper.selectList(null));
    }



}
