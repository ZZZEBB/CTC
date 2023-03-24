package com.spring.ctc.goods.hotel.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.ctc.goods.hotel.dao.GoodsHotelDAO;
import com.spring.ctc.goods.hotel.vo.GoodsHotelVO;

@Service("hotelService")
public class GoodsHotelServiceImpl implements GoodsHotelService {
   @Autowired
   private GoodsHotelDAO goodsHotelDAO;

   @Override
   public List<GoodsHotelVO> selectHotelAllList() throws Exception {
      return goodsHotelDAO.selectHotelAllList();
   }

   @Override
   public List<GoodsHotelVO> selectHotelDetailList(String hotel_name) throws Exception {
      return goodsHotelDAO.selectHotelDetailList(hotel_name);
   }
   
   

}