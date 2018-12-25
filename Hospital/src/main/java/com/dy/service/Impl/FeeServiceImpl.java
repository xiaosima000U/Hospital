package com.dy.service.Impl;  
  
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.dy.dao.FeeMapper;
import com.dy.model.Fee;
import com.dy.service.FeeService;
  
@Service("feeService")  
public class FeeServiceImpl implements FeeService {  
    @Resource  
    private FeeMapper feemapper;

	
	public int deleteByPrimaryKey(Integer feeid) {
		// TODO Auto-generated method stub
		return feemapper.deleteByPrimaryKey(feeid);
	}

	
	public int insert(Fee record) {
		// TODO Auto-generated method stub
		return feemapper.insert(record);
	}

	
	public int insertSelective(Fee record) {
		// TODO Auto-generated method stub
		return feemapper.insertSelective(record);
	}

	
	public Fee selectByPrimaryKey(Integer feeid) {
		// TODO Auto-generated method stub
		return feemapper.selectByPrimaryKey(feeid);
	}

	
	public int updateByPrimaryKeySelective(Fee record) {
		// TODO Auto-generated method stub
		return feemapper.updateByPrimaryKeySelective(record);
	}

	
	public int updateByPrimaryKey(Fee record) {
		// TODO Auto-generated method stub
		return feemapper.updateByPrimaryKey(record);
	}

	
	public List<Fee> selectFeeList(Fee record) {
		// TODO Auto-generated method stub
		return feemapper.selectFeeList(record);
	}  
  
}