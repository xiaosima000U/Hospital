package com.dy.service.Impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.dy.dao.BusinessMapper;
import com.dy.model.Business;
import com.dy.service.BusinessService;
@Service("businessService")
public class BusinessServiceImpl implements BusinessService {
	@Resource
	private BusinessMapper businessmapper;
	
	public int deleteByPrimaryKey(Integer id) {
		return businessmapper.deleteByPrimaryKey(id);
	}

	public int insert(Business record) {
		return businessmapper.insert(record);
	}

	public int insertSelective(Business record) {
		return businessmapper.insertSelective(record);
	}

	public Business selectByPrimaryKey(Integer id) {
		return businessmapper.selectByPrimaryKey(id);
	}

	public int updateByPrimaryKeySelective(Business record) {
		return businessmapper.updateByPrimaryKeySelective(record);
	}

	public int updateByPrimaryKey(Business record) {
		return businessmapper.updateByPrimaryKey(record);
	}

	public List<Business> selectAllBusiness() {
		return businessmapper.selectAllBusiness();
	}

}
