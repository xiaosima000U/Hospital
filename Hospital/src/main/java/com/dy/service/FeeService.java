package com.dy.service;

import java.util.List;

import com.dy.model.Fee;
import com.dy.model.User;

public interface FeeService {
	
	public int deleteByPrimaryKey(Integer feeid);

	public int insert(Fee record);

	public int insertSelective(Fee record);

	public Fee selectByPrimaryKey(Integer feeid);

	public int updateByPrimaryKeySelective(Fee record);

	public int updateByPrimaryKey(Fee record);
	
	public List<Fee> selectFeeList(Fee record);
}
