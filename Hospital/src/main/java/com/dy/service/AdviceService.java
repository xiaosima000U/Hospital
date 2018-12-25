package com.dy.service;

import java.util.List;

import com.dy.model.Advice;
import com.dy.model.User;

public interface AdviceService {
	
	int deleteByPrimaryKey(Integer adviceid);

    int insert(Advice record);

    int insertSelective(Advice record);

    Advice selectByPrimaryKey(Integer adviceid);
    
    List<Advice> selectAdvicesList(Advice record);

    int updateByPrimaryKeySelective(Advice record);

    int updateByPrimaryKey(Advice record);
  
}
