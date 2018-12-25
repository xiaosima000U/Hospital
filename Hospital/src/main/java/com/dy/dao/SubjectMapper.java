package com.dy.dao;

import java.util.List;

import com.dy.model.Subject;

public interface SubjectMapper {
    int deleteByPrimaryKey(Integer subjectid);
    
    int insert(Subject record);
    
    int insertSelective(Subject record);
    
    Subject selectByPrimaryKey(Integer subjectid);
    
    List<Subject> selectAllSubject();
    
    int updateByPrimaryKeySelective(Subject record);
    
    int updateByPrimaryKey(Subject record);
}