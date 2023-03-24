package com.spring.ctc.goods.hotel.service;

import java.util.List;

import com.spring.ctc.goods.hotel.vo.GoodsHotelVO;

public interface GoodsHotelService {
   
   public List<GoodsHotelVO> selectHotelAllList() throws Exception;
   public List<GoodsHotelVO> selectHotelDetailList(String hotel_name) throws Exception; 

}