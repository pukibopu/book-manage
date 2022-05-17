package com.example.service;

import com.example.entity.LoginDTO;
import com.example.result.Result;

public interface LoginService {
    public Result login(LoginDTO loginDTO);
}
