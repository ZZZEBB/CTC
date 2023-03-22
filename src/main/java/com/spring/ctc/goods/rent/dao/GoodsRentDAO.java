package com.spring.ctc.goods.rent.dao;

import java.util.List;
import java.util.Map;

import org.springframework.dao.DataAccessException;

import com.spring.ctc.goods.flight.vo.GoodsFlightVO;
import com.spring.ctc.goods.rent.vo.GoodsRentVO;

public interface GoodsRentDAO {
	public List<GoodsRentVO> selectListRent(Map keyword) throws DataAccessException;
	 public List<GoodsRentVO> selectRentAllList() throws DataAccessException;
	 public List<GoodsRentVO> selectRentDetailList(String car_name) throws DataAccessException;
}
