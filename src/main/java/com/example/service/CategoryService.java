package com.example.service;

import com.example.entity.Category;
import org.springframework.stereotype.Service;

import java.util.List;


public interface CategoryService {
    List<Category> getCategory();
    Category getCategoryById(int cid);
}
