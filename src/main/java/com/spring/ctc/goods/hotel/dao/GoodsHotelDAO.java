package com.spring.ctc.goods.hotel.dao;

import java.util.List;

import org.springframework.dao.DataAccessException;

import com.spring.ctc.goods.hotel.vo.GoodsHotelVO;

public interface GoodsHotelDAO {
   public List<GoodsHotelVO> selectHotelAllList() throws DataAccessException;
   public List<GoodsHotelVO> selectHotelDetailList(String hotel_name) throws DataAccessException; 

}