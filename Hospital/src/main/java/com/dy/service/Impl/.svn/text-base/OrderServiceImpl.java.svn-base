package com.dy.service.Impl;  
  
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.dy.dao.OrderMapper;
import com.dy.model.Order;
import com.dy.service.OrderService;
  
@Service("orderService")  
public class OrderServiceImpl implements OrderService {  
    @Resource  
    private OrderMapper ordermapper;

	
	public Order getOrderById(int orderid) {
		return ordermapper.selectByPrimaryKey(orderid);
	}

	
	public int insertOrder(Order order) {
		return ordermapper.insert(order);
		
	}

	
	public List<Order> getAllOrder() {
		return null;
	}

	
	public List<Order> searchOrder(Order order) {
		// TODO Auto-generated method stub
		return ordermapper.selectOrderList(order);
	}

	
	public Integer updateOrder(Order Order) {
		// TODO Auto-generated method stub
		return ordermapper.updateByPrimaryKeySelective(Order);
	}  
      
  
}