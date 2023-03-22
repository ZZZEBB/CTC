package com.spring.ctc.goods.flight.dao;

import java.util.List;
import java.util.Map;

import org.springframework.dao.DataAccessException;

import com.spring.ctc.goods.flight.vo.GoodsFlightVO;
import com.spring.ctc.goods.rent.vo.GoodsRentVO;

public interface GoodsFlightDAO {
	public List<GoodsFlightVO> selectListFlight(Map keyword) throws DataAccessException;
}
