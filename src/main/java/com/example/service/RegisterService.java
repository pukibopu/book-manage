package com.example.service;

import com.example.DTO.RegisterDTO;
import com.example.result.Result;

public interface RegisterService {
    Result RegisterUser(RegisterDTO registerDTO);
}
