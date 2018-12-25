package com.dy.service;

import java.util.List;

import com.dy.model.Case;
import com.dy.model.Profession;
import com.dy.model.User;

public interface ProfessionService {

	    public int deleteByPrimaryKey(Integer professionid);

	    public int insert(Profession record);

	    public int insertSelective(Profession record);

	    public Profession selectByPrimaryKey(Integer professionid);

	    public int updateByPrimaryKeySelective(Profession record);

	    public int updateByPrimaryKey(Profession record);
	    
	    public List<Profession> selectAllProfessions();
}
