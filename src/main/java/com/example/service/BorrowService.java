package com.example.service;

import com.alibaba.fastjson2.JSONArray;
import com.example.entity.Borrow;
import com.example.result.Result;

import java.util.List;

public interface BorrowService {
     Result borrowBooks(int readerId, JSONArray array) throws Exception;
     List<Borrow> getBorrowInfoByRId(int readerId);
     Result doReturnBorrow(int bookId);
     Result doReBorrow(int bookId);

}
