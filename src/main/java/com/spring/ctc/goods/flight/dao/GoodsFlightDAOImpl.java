package com.spring.ctc.goods.flight.dao;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Repository;

import com.spring.ctc.goods.flight.vo.GoodsFlightVO;

@Repository("flightDAO")
public class GoodsFlightDAOImpl implements GoodsFlightDAO{
	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public List<GoodsFlightVO> selectListFlight(Map keyword) throws DataAccessException{
		List<GoodsFlightVO> flight = sqlSession.selectList("mapper.flight.flightList",keyword);
		return flight;
	}	
}
