package com.spring.ctc.goods.rent.service;

import java.util.List;
import java.util.Map;

import com.spring.ctc.goods.rent.vo.GoodsRentVO;

public interface GoodsRentService {
	public List<GoodsRentVO> selectRentList(Map keyword) throws Exception;
	public List<GoodsRentVO> selectRentAllList() throws Exception;
	public List<GoodsRentVO> selectRentDetail(String car_name) throws Exception;
}
