package com.example.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.example.entity.Book;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import java.util.List;

@Mapper
public interface BookMapper extends BaseMapper<Book> {
    @Select("select *from book where CategoryId= ${cid}")
    List<Book> getBookByCateId(@Param("cid") int cid);
    @Select("select *from book where name like '%${name}%'")
    List<Book> getBookByName(String name);
    @Update("update book set status=#{status} where id=#{id}")
    int setBookStatus(@Param("status") String status,@Param("id") int bookId);

}
