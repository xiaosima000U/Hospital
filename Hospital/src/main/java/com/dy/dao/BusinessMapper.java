package com.dy.dao;

import java.util.List;

import com.dy.model.Business;

public interface BusinessMapper {

	int deleteByPrimaryKey(Integer id);

    int insert(Business record);

    int insertSelective(Business record);

    Business selectByPrimaryKey(Integer id);
    
    List<Business> selectAllBusiness();

    int updateByPrimaryKeySelective(Business record);

    int updateByPrimaryKey(Business record);
}