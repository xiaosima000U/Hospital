package com.dy.dao;

import java.util.List;

import com.dy.model.Doctor;
import com.dy.model.Order;

public interface DoctorMapper {

	int deleteByPrimaryKey(Integer doctorid);

    int insert(Doctor record);

    int insertSelective(Doctor record);

    Doctor selectByPrimaryKey(Integer doctorid);
    
    Doctor selectByuserid(Integer userid);
    
    List<Doctor> searchDoctors(Doctor doctor);
    
    Doctor searchDoctorsByOrder(Order order);
    
    List<Doctor> searchAllDoctors();

    int updateByPrimaryKeySelective(Doctor record);

    int updateByPrimaryKey(Doctor record);
}