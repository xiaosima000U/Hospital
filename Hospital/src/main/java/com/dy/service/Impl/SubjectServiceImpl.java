package com.dy.service.Impl;  
  
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.dy.dao.SubjectMapper;
import com.dy.model.Doctor;
import com.dy.model.Subject;
import com.dy.service.SubjectService;
  
@Service("subjectService")  
public class SubjectServiceImpl implements SubjectService {  
    @Resource  
    private SubjectMapper subjectmapper;

	
	public int deleteByPrimaryKey(Integer subjectid) {
		// TODO Auto-generated method stub
		return 0;
	}

	
	public int insert(Subject record) {
		// TODO Auto-generated method stub
		return 0;
	}

	
	public int insertSelective(Subject record) {
		// TODO Auto-generated method stub
		return 0;
	}

	
	public Subject selectByPrimaryKey(Integer subjectid) {
		// TODO Auto-generated method stub
		return subjectmapper.selectByPrimaryKey(subjectid);
	}

	
	public List<Subject> selectAllSubject() {
		// TODO Auto-generated method stub
		return subjectmapper.selectAllSubject();
	}

	
	public int updateByPrimaryKeySelective(Subject record) {
		// TODO Auto-generated method stub
		return 0;
	}

	
	public int updateByPrimaryKey(Subject record) {
		// TODO Auto-generated method stub
		return 0;
	}
  
}