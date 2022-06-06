package com.example.controller;

import com.example.DTO.RegisterDTO;
import com.example.DTO.UserDTO;
import com.example.mapper.ReaderMapper;
import com.example.result.Result;
import com.example.service.RegisterService;
import com.example.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;


@RequestMapping("/api/user")
@RestController
@CrossOrigin(origins = "*")
public class UserController {
    @Resource
    UserService service;
    @Resource
    RegisterService registerService;
    @PostMapping("/change_info")
    @Transactional
    public Result changeInfo(@RequestBody UserDTO form){
        return service.updateUser(form);
    }
    @PostMapping("/update_money")
    @Transactional
    public Result updateMoney(@RequestBody UserDTO form){
        return service.depositMoney(form);
    }
    @PostMapping("/register")
    @Transactional
    public Result register(@RequestBody RegisterDTO registerDTO){
        System.out.println(registerDTO);
        return registerService.RegisterUser(registerDTO);
    }
}
