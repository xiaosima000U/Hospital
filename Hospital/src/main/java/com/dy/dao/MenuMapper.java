package com.dy.dao;

import java.util.List;

import com.dy.model.Menu;

public interface MenuMapper {

	int deleteByPrimaryKey(Integer id);

    int insert(Menu record);

    int insertSelective(Menu record);

    Menu selectByPrimaryKey(Integer id);
    
    List<Menu> selectAllMenu();

    int updateByPrimaryKeySelective(Menu record);

    int updateByPrimaryKey(Menu record);
}