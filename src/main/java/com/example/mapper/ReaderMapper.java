package com.example.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.example.entity.Reader;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Update;

@Mapper
public interface ReaderMapper extends BaseMapper<Reader> {
    @Update("update reader set Name=#{name},Grade=#{grade},Password=#{pwd} , Email=#{email} where Id=#{id}")
    int updateUserInfo(@Param("name") String name,@Param("grade") String grade,@Param("pwd") String newPwd,@Param("id") int id,@Param("email") String email);
    @Update("update reader set deposit=deposit+#{money} where id=#{id}")
    int updateDeposit(@Param("money") double money,@Param("id") int id);
}
