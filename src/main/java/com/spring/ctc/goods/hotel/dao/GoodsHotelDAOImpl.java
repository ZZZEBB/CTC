package com.spring.ctc.goods.hotel.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Repository;

import com.spring.ctc.goods.hotel.vo.GoodsHotelVO;

@Repository("hotelDAO")
public class GoodsHotelDAOImpl implements GoodsHotelDAO {
   
   @Autowired
   private SqlSession sqlsession;

   @Override
   public List<GoodsHotelVO> selectHotelAllList() throws DataAccessException {
      List<GoodsHotelVO> hotel = sqlsession.selectList("mapper.hotel.hotelAllList");
      return hotel;
   }

   @Override
   public List<GoodsHotelVO> selectHotelDetailList(String hotel_name) throws DataAccessException {
      List<GoodsHotelVO> hotel = sqlsession.selectList("mapper.hotel.hotelDetailList", hotel_name);
      return hotel;
   }
   
   
   
   
}