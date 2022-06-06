package com.example.service.impl;

import com.example.DTO.RegisterDTO;
import com.example.mapper.ReaderMapper;
import com.example.result.Result;
import com.example.service.RegisterService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
@Service
public class RegisterServiceImpl implements RegisterService {
    @Resource
    ReaderMapper mapper;
    @Override
    public Result RegisterUser(RegisterDTO registerDTO) {
        int i=mapper.insertInfo(registerDTO.getName(),registerDTO.getGrade(), registerDTO.getEmail(), registerDTO.getPassword());
        if(i>0){
            return new Result(200,"注册成功","");
        }
        return new Result(400,"注册失败","");
    }
}
