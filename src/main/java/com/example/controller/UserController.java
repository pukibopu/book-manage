package com.example.controller;

import com.example.DTO.UserDTO;
import com.example.result.Result;
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
    @PostMapping("/change_info")
    @Transactional
    public Result changeInfo(@RequestBody UserDTO form){
        System.out.println(form);
        return service.updateUser(form);
    }
    @PostMapping("/update_money")
    @Transactional
    public Result updateMoney(@RequestBody UserDTO form){
        System.out.println(form);
        return service.depositMoney(form);
    }
}
