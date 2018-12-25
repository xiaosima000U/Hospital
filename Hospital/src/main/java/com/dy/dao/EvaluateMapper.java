package com.dy.dao;

import com.dy.model.Evaluate;

public interface EvaluateMapper {

	int deleteByPrimaryKey(Integer evaluateid);

    int insert(Evaluate record);

    int insertSelective(Evaluate record);

    Evaluate selectByPrimaryKey(Integer evaluateid);

    int updateByPrimaryKeySelective(Evaluate record);

    int updateByPrimaryKey(Evaluate record);
}