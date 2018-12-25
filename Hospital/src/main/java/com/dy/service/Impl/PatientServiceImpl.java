package com.dy.service.Impl;  
  
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.dy.dao.PatientMapper;
import com.dy.model.Patient;
import com.dy.model.User;
import com.dy.service.PatientService;
  
@Service("patientService")  
public class PatientServiceImpl implements PatientService {  
    @Resource  
    private PatientMapper patientmapper;

	
	public Patient getPatientById(int patientid) {
		// TODO Auto-generated method stub
		return patientmapper.selectByPrimaryKey(patientid);
	}

	
	public Patient getPatient(Patient patient) {
		return null;
	}

	
	public Integer insertPatient(Patient patient) {
		// TODO Auto-generated method stub
		return patientmapper.insert(patient);
	}

	
	public Patient selectPatientByUserid(int userId) {
		// TODO Auto-generated method stub
		return patientmapper.selectPatientByUserid(userId);
	}

	
	public Patient selectByPrimaryKey(Integer patientid) {
		// TODO Auto-generated method stub
		return patientmapper.selectByPrimaryKey(patientid);
	}

	
	public List<Patient> selectAllPatient() {
		// TODO Auto-generated method stub
		return patientmapper.selectAllPatient();
	}

	
	public int updateByPrimaryKeySelective(Patient record) {
		// TODO Auto-generated method stub
		return patientmapper.updateByPrimaryKeySelective(record);
	}

	
	public int deleteByPrimaryKey(Integer patientid) {
		// TODO Auto-generated method stub
		return patientmapper.deleteByPrimaryKey(patientid);
	}
      
  
}