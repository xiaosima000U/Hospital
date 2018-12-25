package com.dy.service;

import java.util.List;

import com.dy.model.Subject;

public interface SubjectService {

int deleteByPrimaryKey(Integer subjectid);
    
    public int insert(Subject record);
    
    public int insertSelective(Subject record);
    
    public Subject selectByPrimaryKey(Integer subjectid);
    
    public List<Subject> selectAllSubject();
    
    public int updateByPrimaryKeySelective(Subject record);
    
    public int updateByPrimaryKey(Subject record);
}
