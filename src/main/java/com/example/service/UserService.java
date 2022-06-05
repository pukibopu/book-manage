package com.example.service;

import com.example.DTO.UserDTO;
import com.example.result.Result;

public interface UserService {

    Result updateUser(UserDTO userDTO);
    Result depositMoney(UserDTO userDTO);

}
