package com.dy.service;

import java.util.List;

import com.dy.model.Doctor;
import com.dy.model.Order;

public interface DoctorService {

	public Doctor getDoctorById(int doctorId);  
	public Doctor selectByuserid(int userid);  
	
	public Doctor getDoctor(Doctor doctor);
	  
    public Integer insertDoctor(Doctor doctor);  
    
    public List<Doctor> searchDoctors(Doctor doctor);  
  
    public Doctor searchDoctorsByOrder(Order order); 
    
    public List<Doctor> searchAllDoctors();
    
    public int updateByPrimaryKeySelective(Doctor record);
    
    public int deleteByPrimaryKey(Integer doctorid);
    
    public Doctor selectByPrimaryKey(Integer doctorid);
}
