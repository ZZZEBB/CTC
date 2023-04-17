package com.spring.ctc.company.goods.service;

import java.util.List;
import java.util.Map;

import com.spring.ctc.order.vo.OrderVO;

public interface CompanyGoodsService {

	public List<OrderVO> selectOrderList() throws Exception;
	public List<OrderVO> findOrderGoods(Map find) throws Exception;
	
}
