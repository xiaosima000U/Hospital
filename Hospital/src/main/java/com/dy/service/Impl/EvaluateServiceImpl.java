package com.dy.service.Impl;  
  
import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.dy.dao.EvaluateMapper;
import com.dy.model.Evaluate;
import com.dy.service.EvaluateService;
  
@Service("evaluateService")  
public class EvaluateServiceImpl implements EvaluateService {  
    @Resource  
    private EvaluateMapper evaluatemapper;

	
	public int deleteByPrimaryKey(Integer evaluateid) {
		// TODO Auto-generated method stub
		return evaluatemapper.deleteByPrimaryKey(evaluateid);
	}

	
	public int insert(Evaluate record) {
		// TODO Auto-generated method stub
		return evaluatemapper.insert(record);
	}

	
	public int insertSelective(Evaluate record) {
		// TODO Auto-generated method stub
		return evaluatemapper.insertSelective(record);
	}

	
	public Evaluate selectByPrimaryKey(Integer evaluateid) {
		// TODO Auto-generated method stub
		return evaluatemapper.selectByPrimaryKey(evaluateid);
	}

	
	public int updateByPrimaryKeySelective(Evaluate record) {
		// TODO Auto-generated method stub
		return evaluatemapper.updateByPrimaryKeySelective(record);
	}

	
	public int updateByPrimaryKey(Evaluate record) {
		// TODO Auto-generated method stub
		return evaluatemapper.updateByPrimaryKey(record);
	}

  
}