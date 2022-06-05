package com.example.service;

import com.example.DTO.LoginDTO;
import com.example.result.Result;

public interface LoginService {
    public Result login(LoginDTO loginDTO);
}
