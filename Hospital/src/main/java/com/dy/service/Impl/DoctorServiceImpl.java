package com.dy.service.Impl;  
  
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.dy.dao.DoctorMapper;
import com.dy.model.Doctor;
import com.dy.model.Order;
import com.dy.service.DoctorService;
  
@Service("DoctorService")  
public class DoctorServiceImpl implements DoctorService {  
    @Resource  
    private DoctorMapper Doctormapper;

	
	public Doctor getDoctorById(int doctorid) {
		// TODO Auto-generated method stub
		return Doctormapper.selectByPrimaryKey(doctorid);
	}

	
	public Doctor getDoctor(Doctor doctor) {
		return null;
	}

	
	public Integer insertDoctor(Doctor doctor) {
		// TODO Auto-generated method stub
		return Doctormapper.insert(doctor);
	}

	
	public Doctor selectByuserid(int userid) {
		// TODO Auto-generated method stub
		return Doctormapper.selectByuserid(userid);
	}

	
	public List<Doctor> searchDoctors(Doctor doctor) {
		// TODO Auto-generated method stub
		return Doctormapper.searchDoctors(doctor);
	}

	
	public Doctor searchDoctorsByOrder(Order order) {
		// TODO Auto-generated method stub
		return Doctormapper.searchDoctorsByOrder(order);
	}

	
	public List<Doctor> searchAllDoctors() {
		// TODO Auto-generated method stub
		return Doctormapper.searchAllDoctors();
	}

	
	public int updateByPrimaryKeySelective(Doctor record) {
		// TODO Auto-generated method stub
		return Doctormapper.updateByPrimaryKeySelective(record);
	}

	
	public int deleteByPrimaryKey(Integer doctorid) {
		// TODO Auto-generated method stub
		return Doctormapper.deleteByPrimaryKey(doctorid);
	}

	
	public Doctor selectByPrimaryKey(Integer doctorid) {
		// TODO Auto-generated method stub
		return Doctormapper.selectByPrimaryKey(doctorid);
	}
      
  
}