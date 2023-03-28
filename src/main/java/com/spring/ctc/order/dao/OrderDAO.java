package com.spring.ctc.order.dao;

import java.util.List;

import org.springframework.dao.DataAccessException;

import com.spring.ctc.order.vo.OrderVO;


public interface OrderDAO {
	public List<OrderVO> orderList() throws DataAccessException;
}
