package com.dy.service.Impl;  
  
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.dy.dao.AdviceMapper;
import com.dy.model.Advice;
import com.dy.service.AdviceService;
  
@Service("adviceService")  
public class AdviceServiceImpl implements AdviceService {  
    @Resource  
    private AdviceMapper advicemapper;

	public int deleteByPrimaryKey(Integer adviceid) {
		// TODO Auto-generated method stub
		return advicemapper.deleteByPrimaryKey(adviceid);
	}

	public int insert(Advice record) {
		// TODO Auto-generated method stub
		return advicemapper.insert(record);
	}

	public int insertSelective(Advice record) {
		// TODO Auto-generated method stub
		return advicemapper.insertSelective(record);
	}

	public Advice selectByPrimaryKey(Integer adviceid) {
		// TODO Auto-generated method stub
		return advicemapper.selectByPrimaryKey(adviceid);
	}

	public List<Advice> selectAdvicesList(Advice record) {
		// TODO Auto-generated method stub
		return advicemapper.selectAdvicesList(record);
	}

	public int updateByPrimaryKeySelective(Advice record) {
		// TODO Auto-generated method stub
		return advicemapper.updateByPrimaryKeySelective(record);
	}

	public int updateByPrimaryKey(Advice record) {
		// TODO Auto-generated method stub
		return advicemapper.updateByPrimaryKey(record);
	}

  
}