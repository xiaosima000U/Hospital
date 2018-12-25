package com.dy.dao;

import java.util.List;

import com.dy.model.Profession;

public interface ProfessionMapper {
    int deleteByPrimaryKey(Integer professionid);

    int insert(Profession record);

    int insertSelective(Profession record);

    Profession selectByPrimaryKey(Integer professionid);
    
    List<Profession> selectAllProfessions();

    int updateByPrimaryKeySelective(Profession record);

    int updateByPrimaryKey(Profession record);
}