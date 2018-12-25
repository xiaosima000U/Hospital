package com.dy.service.Impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.dy.dao.ManagerMapper;
import com.dy.model.Manager;
import com.dy.service.ManagerService;

@Service("managerService") 
public class ManagerServiceImpl implements ManagerService {
	@Resource
	private ManagerMapper managermapper;
	
	public Manager getManagerById(int managerid) {
		return managermapper.selectByPrimaryKey(managerid);
	}

	
	public Manager getManager(Manager manager) {
		return managermapper.selectByManager(manager);
	}

}
