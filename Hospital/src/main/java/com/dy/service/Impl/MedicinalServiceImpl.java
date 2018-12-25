package com.dy.service.Impl;  
  
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.dy.dao.MedicinalMapper;
import com.dy.model.Medicinal;
import com.dy.service.MedicinalService;
  
@Service("medicinalService")  
public class MedicinalServiceImpl implements MedicinalService {

	@Resource
	private MedicinalMapper medicinalmapper;
	
	public int deleteByPrimaryKey(Integer medicinalid) {
		// TODO Auto-generated method stub
		return medicinalmapper.deleteByPrimaryKey(medicinalid);
	}

	
	public int insert(Medicinal record) {
		// TODO Auto-generated method stub
		return medicinalmapper.insert(record);
	}

	
	public int insertSelective(Medicinal record) {
		// TODO Auto-generated method stub
		return medicinalmapper.insertSelective(record);
	}

	
	public Medicinal selectByPrimaryKey(Integer medicinalid) {
		// TODO Auto-generated method stub
		return medicinalmapper.selectByPrimaryKey(medicinalid);
	}

	
	public int updateByPrimaryKeySelective(Medicinal record) {
		// TODO Auto-generated method stub
		return medicinalmapper.updateByPrimaryKeySelective(record);
	}

	
	public int updateByPrimaryKey(Medicinal record) {
		// TODO Auto-generated method stub
		return medicinalmapper.updateByPrimaryKey(record);
	}

	
	public List<Medicinal> selectAllMedicinal() {
		// TODO Auto-generated method stub
		return medicinalmapper.selectAllMedicinal();
	}  
	
}