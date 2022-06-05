package com.example.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.example.entity.Borrow;
import org.apache.ibatis.annotations.*;

import java.util.List;

@Mapper
public interface BorrowMapper extends BaseMapper<Borrow> {
    @Insert("insert into " +
            "borrow(ReaderId,BookId,BorrowData,ReturnedData,ReturnData,ReBorrow) " +
            "values(#{readerId},#{bookId},NOW(),null,DATE_ADD(NOW(),INTERVAL 12 DAY),'n')")
    int insertBorrowInfo(@Param("readerId") int readerId, @Param("bookId") int bookId);
    @Select("select *from borrow where readerId=#{readerId}")
    List<Borrow> getBorrowListByRId(int readerId);
    @Update("update borrow set returnedData=NOW() where bookId=#{bookId}")
    int returnedBorrow(int bookId);
    @Update("update borrow set returnData=DATE_ADD(returnData,INTERVAL 12 DAY) where bookId=#{bookId}")
    int reBorrow(int bookId);

}
