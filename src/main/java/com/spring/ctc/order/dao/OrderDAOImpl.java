package com.spring.ctc.order.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Repository;

import com.spring.ctc.order.vo.OrderVO;

@Repository("orderDAO")
public class OrderDAOImpl implements OrderDAO{
	
	 @Autowired
	   private SqlSession sqlsession;

	@Override
	public List<OrderVO> orderList() throws DataAccessException {
		List<OrderVO> order = sqlsession.selectList("mapper.order.orderList");
	      return order;
	}

	
}
