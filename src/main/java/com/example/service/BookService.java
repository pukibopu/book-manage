package com.example.service;

import com.example.entity.Book;
import com.example.mapper.BookMapper;
import org.apache.ibatis.annotations.Select;

import javax.annotation.Resource;
import java.util.List;

public interface BookService {
    List<Book> getBookList();
    List<Book> getBookListByCid(int cid);
    List<Book> getBookBySearch(String name);
}
