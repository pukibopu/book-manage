package com.example.service.impl;

import com.example.entity.Category;
import com.example.mapper.MapperTest;
import com.example.service.CategoryService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;
@Service
public class CategoryServiceImpl implements CategoryService {
    @Resource
    MapperTest mapper;
    @Override
    public List<Category> getCategory() {
        return mapper.selectList(null);
    }

    @Override
    public Category getCategoryById(int id) {
        return mapper.selectById(id);
    }
}
