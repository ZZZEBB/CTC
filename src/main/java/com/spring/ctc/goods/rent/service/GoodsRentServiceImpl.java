package com.spring.ctc.goods.rent.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.ctc.goods.rent.dao.GoodsRentDAO;
import com.spring.ctc.goods.rent.vo.GoodsRentVO;

@Service("rentService")
public class GoodsRentServiceImpl implements GoodsRentService{
	@Autowired
	private GoodsRentDAO goodsrentDAO;
	
	@Override
	public List<GoodsRentVO> selectRentList(Map keyword) throws Exception{
		return goodsrentDAO.selectListRent(keyword);
	}
	
	@Override
	public List<GoodsRentVO> selectRentAllList() throws Exception{
		return goodsrentDAO.selectRentAllList();
	}
	
	@Override
	public List<GoodsRentVO> selectRentDetail(String car_name) throws Exception{
		return goodsrentDAO.selectRentDetailList(car_name);
	}
}
