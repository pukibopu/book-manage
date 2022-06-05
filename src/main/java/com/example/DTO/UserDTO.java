package com.example.DTO;

import com.example.entity.Reader;
import lombok.Data;
import lombok.experimental.Accessors;

@Data
public class UserDTO {
    private int id;
    private String name;
    private String email;
    private String oldPwd;
    private String newPwd;
    private String grade;
    private double money;
}
