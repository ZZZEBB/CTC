package com.spring.ctc.company.goods.dao;

import java.util.List;
import java.util.Map;

import org.springframework.dao.DataAccessException;

import com.spring.ctc.order.vo.OrderVO;

public interface CompanyGoodsDAO {

	public List<OrderVO> selectComList() throws DataAccessException;
	public List<OrderVO> comfind(Map find) throws DataAccessException;
}
