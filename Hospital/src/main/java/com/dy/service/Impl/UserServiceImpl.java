package com.dy.service.Impl;  
  
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.dy.dao.UserMapper;
import com.dy.model.User;
import com.dy.service.UserService;
  
@Service("userService")  
public class UserServiceImpl implements UserService {  
    @Resource  
    private UserMapper usermapper;  
      
    public User getUserById(int userId) {  
        return usermapper.selectByPrimaryKey(userId);  
    }  
  
    public Integer insertUser(User user) {  
    	return usermapper.insert(user); 
    }  
  
	
	public User getUser(User user) {
		return usermapper.selectByUser(user);
	}

	
	public int updateByPrimaryKeySelective(User record) {
		// TODO Auto-generated method stub
		return usermapper.updateByPrimaryKeySelective(record);
	}  
  
}