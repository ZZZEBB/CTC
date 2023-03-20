package com.spring.ctc.goods.flight.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.spring.ctc.goods.flight.dao.GoodsFlightDAO;
import com.spring.ctc.goods.flight.vo.GoodsFlightVO;

@Service("flightService")
@Transactional(propagation=Propagation.REQUIRED)
public class GoodsFlightServiceImpl implements GoodsFlightService{
   @Autowired
   private GoodsFlightDAO goodsflightDAO;
   
   @Override
   public List<GoodsFlightVO> selectListFlight(Map keyword) throws Exception {
      return goodsflightDAO.selectListFlight(keyword);
   }
}