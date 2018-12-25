package com.dy.service.Impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.dy.dao.MenuMapper;
import com.dy.model.Menu;
import com.dy.service.MenuService;

@Service("menuService")
public class MenuServiceImpl implements MenuService {
	@Resource
	private MenuMapper menumapper;
	public int deleteByPrimaryKey(Integer id) {
		return menumapper.deleteByPrimaryKey(id);
	}

	public int insert(Menu record) {
		return menumapper.insert(record);
	}

	public int insertSelective(Menu record) {
		return menumapper.insertSelective(record);
	}

	public Menu selectByPrimaryKey(Integer id) {
		return menumapper.selectByPrimaryKey(id);
	}

	public int updateByPrimaryKeySelective(Menu record) {
		return menumapper.updateByPrimaryKeySelective(record);
	}

	public int updateByPrimaryKey(Menu record) {
		return menumapper.updateByPrimaryKey(record);
	}

	public List<Menu> selectAllMenu() {
		return menumapper.selectAllMenu();
	}

}
