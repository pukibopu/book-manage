package com.example.controller;

import com.alibaba.fastjson2.JSON;
import com.alibaba.fastjson2.JSONArray;
import com.alibaba.fastjson2.JSONObject;
import com.example.entity.Book;
import com.example.result.Result;
import com.example.service.BorrowService;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import java.util.ArrayList;
import java.util.List;

@RestController
@CrossOrigin(origins = "*")
@RequestMapping("/api/borrow")
public class BorrowController {
    @Resource
    BorrowService service;

    @PostMapping("/borrow-books")
    public Result doBorrow(@RequestBody String books) throws Exception {
        JSONObject object = JSON.parseObject(books);
        int readerId = object.getIntValue("readerId");
        JSONArray array = object.getJSONArray("bookids");
        return service.borrowBooks(readerId,array);
    }
    @PostMapping("/get-borrow-list")
    public Result getBorrowInfo(@RequestBody String rid){
        int RId = JSON.parseObject(rid).getIntValue("readerId");
        return new Result(200,"",service.getBorrowInfoByRId(RId));

    }
    @PostMapping("/return-borrow")
    public Result returnBorrow(@RequestBody String bid){
        int bId= JSON.parseObject(bid).getIntValue("bookId");
       return service.doReturnBorrow(bId);
    }
    @PostMapping("/re-borrow")
    public Result reBorrow(@RequestBody String bid){
        int bId= JSON.parseObject(bid).getIntValue("bookId");
        return service.doReBorrow(bId);
    }
}
