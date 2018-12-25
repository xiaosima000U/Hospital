package com.dy.service;

import java.util.List;

import com.dy.model.Advice;
import com.dy.model.Menu;
import com.dy.model.User;

public interface MenuService {
	
	int deleteByPrimaryKey(Integer id);

    int insert(Menu record);

    int insertSelective(Menu record);

    Menu selectByPrimaryKey(Integer id);
    
    List<Menu> selectAllMenu();

    int updateByPrimaryKeySelective(Menu record);

    int updateByPrimaryKey(Menu record);
  
}
