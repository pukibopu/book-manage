package com.example.entity;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import lombok.Data;

import java.util.Date;

@Data
public class Borrow {
    private int id;
    private int readerId;
    private int bookId;
    private Date borrowData;
    private Date returnedData;
    private Date returnData;
    private String reBorrow;

}
