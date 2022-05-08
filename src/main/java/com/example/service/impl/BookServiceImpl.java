package com.example.service.impl;

import com.example.entity.Book;
import com.example.mapper.BookMapper;
import com.example.service.BookService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;
@Service
public class BookServiceImpl implements BookService {
   @Resource
    BookMapper mapper;
    @Override
    public List<Book> getBookList() {
        return mapper.selectList(null);
    }

    @Override
    public List<Book> getBookListByCid(int cid) {
        return mapper.getBookByCateId(cid);
    }

    @Override
    public List<Book> getBookBySearch(String name) {
       return mapper.getBookByName(name);
    }
}
