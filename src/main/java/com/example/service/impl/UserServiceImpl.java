package com.example.service.impl;

import com.example.DTO.UserDTO;
import com.example.entity.Reader;
import com.example.mapper.ReaderMapper;
import com.example.result.Result;
import com.example.service.UserService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

@Service
public class UserServiceImpl implements UserService {
    @Resource
    ReaderMapper mapper;
    @Override
    public Result updateUser(UserDTO userDTO) {
        Reader reader=mapper.selectById(userDTO.getId());
        if(reader.getPassword()!=userDTO.getOldPwd()){
            return new Result(401,"旧密码不正确","");
        }
        int su=mapper.updateUserInfo(userDTO.getName(), userDTO.getGrade(), userDTO.getNewPwd(), userDTO.getId(), userDTO.getEmail());
        if(su>0){
            return new Result(200,"修改成功",mapper.selectById(userDTO.getId()));
        }
        else return new Result(400,"修改失败,未知错误","");
    }

    @Override
    public Result depositMoney(UserDTO userDTO) {
        if(userDTO.getMoney()<=0){
            return new Result(400,"充值失败","");
        }
        int i=mapper.updateDeposit(userDTO.getMoney(), userDTO.getId());
        if(i>0){
            return new Result(200,"充值成功",mapper.selectById(userDTO.getId()));
        }

        return new Result(400,"充值失败","");
    }
}
