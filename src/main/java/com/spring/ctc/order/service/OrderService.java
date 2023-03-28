package com.spring.ctc.order.service;

import java.util.List;

import com.spring.ctc.order.vo.OrderVO;

public interface OrderService {
	public List<OrderVO> orderList() throws Exception;

}
