package com.dy.service.Impl;  
  
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.dy.dao.CaseMapper;
import com.dy.model.Case;
import com.dy.model.User;
import com.dy.service.CaseService;
import com.dy.service.UserService;
  
@Service("caseService")  
public class CaseServiceImpl implements CaseService {  
    @Resource  
    private CaseMapper casemapper;

	public int deleteByPrimaryKey(Integer caseid) {
		// TODO Auto-generated method stub
		return casemapper.deleteByPrimaryKey(caseid);
	}

	public int insert(Case record) {
		// TODO Auto-generated method stub
		return casemapper.insert(record);
	}

	public int insertSelective(Case record) {
		// TODO Auto-generated method stub
		return 0;
	}

	public Case selectByPrimaryKey(Integer caseid) {
		// TODO Auto-generated method stub
		return casemapper.selectByPrimaryKey(caseid);
	}

	public List<Case> selectCaseList(Case record) {
		// TODO Auto-generated method stub
		return casemapper.selectCaseList(record);
	}

	public int updateByPrimaryKeySelective(Case record) {
		// TODO Auto-generated method stub
		return casemapper.updateByPrimaryKeySelective(record);
	}

	public int updateByPrimaryKey(Case record) {
		// TODO Auto-generated method stub
		return 0;
	}  
  
}