package com.example.controller;

import com.example.DTO.LoginDTO;
import com.example.result.Result;
import com.example.service.LoginService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class LoginController {
    @Autowired
    LoginService service;
    @PostMapping(value = "/api/login")
    @CrossOrigin
    public Result login(@RequestBody LoginDTO loginDTO){
        return service.login(loginDTO);

    }
}
