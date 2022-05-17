package com.example.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.example.entity.LoginDTO;
import com.example.entity.Reader;
import com.example.mapper.ReaderMapper;
import com.example.result.Result;
import com.example.service.LoginService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
@Service
public class LoginServiceImpl implements LoginService {
    @Resource
    ReaderMapper mapper;
    @Override
    public Result login(LoginDTO loginDTO) {
        if(loginDTO.getLoginEmail().isEmpty()){
            return new Result(400,"邮箱不为空","");
        }
        if(loginDTO.getLoginPwd().isEmpty()){
            return new Result(400,"密码不能为空","");
        }
        QueryWrapper<Reader> wrapper=new QueryWrapper<>();
        wrapper.eq("Email",loginDTO.getLoginEmail());
        Reader reader=mapper.selectOne(wrapper);
        if(reader!=null&&reader.getPassword().equals(loginDTO.getLoginPwd())){
            return new Result(200,"",reader);
        }
        return new Result(400,"登陆失败","");
    }
}
