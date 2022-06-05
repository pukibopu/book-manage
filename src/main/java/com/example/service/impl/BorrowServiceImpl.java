package com.example.service.impl;

import com.alibaba.fastjson2.JSONArray;
import com.example.entity.Borrow;
import com.example.mapper.BookMapper;
import com.example.mapper.BorrowMapper;
import com.example.result.Result;
import com.example.service.BorrowService;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.sql.SQLException;
import java.util.List;

@Service
public class BorrowServiceImpl implements BorrowService {
    @Resource
    BorrowMapper mapper;
    @Resource
    BookMapper bookMapper;

    @Override
    @Transactional(rollbackFor = Exception.class)
    public Result borrowBooks(int readerId, JSONArray array) {
        for (int i = 0; i < array.size(); i++) {
            int sqlState = mapper.insertBorrowInfo(readerId, array.getIntValue(i));
            if (sqlState > 0) {
                bookMapper.setBookStatus("无货", array.getIntValue(i));
            } else {
                return new Result(400, "借阅失败", "");
            }
        }
        return new Result(200, "借阅成功", "");
    }

    @Override
    public List<Borrow> getBorrowInfoByRId(int readerId) {
        return mapper.getBorrowListByRId(readerId);
    }

    @Override
    @Transactional(rollbackFor = Exception.class)
    public Result doReturnBorrow(int bookId) {
        int i = 0;
        i += bookMapper.setBookStatus("有货", bookId);
        i += mapper.returnedBorrow(bookId);
        if (i>=2){
            return new Result(200,"归还成功","");
        }
        return new Result(400,"归还失败","");
    }

    @Override
    public Result doReBorrow(int bookId) {
        if(mapper.reBorrow(bookId)>0)
        {
            return new Result(200,"续借成功","");
        }
        return new Result(400,"续借失败","");
    }


}
