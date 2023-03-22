package com.spring.ctc.goods.rent.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Repository;

import com.spring.ctc.goods.rent.vo.GoodsRentVO;


@Repository("rentDAO")
public class GoodsRentDAOImpl implements GoodsRentDAO{
	
	@Autowired
	private SqlSession sqlSession;
	
	//최초전체페이지
	 @Override 
	 public List<GoodsRentVO> selectListRent(Map keyword) throws DataAccessException{
		 List<GoodsRentVO> rent = sqlSession.selectList("mapper.rent.rentList",keyword);
		 
		 return rent;
	 } 
	 //검색조건으로 상품조회
	 @Override
	 public List<GoodsRentVO> selectRentAllList() throws DataAccessException{
		 List<GoodsRentVO> rent = sqlSession.selectList("mapper.rent.rentAllList");
		 return rent;
	 }
	 //디테일페이지 상품조회
	 @Override
	 public List<GoodsRentVO> selectRentDetailList(String car_name) throws DataAccessException{
		 List<GoodsRentVO> rent = sqlSession.selectList("mapper.rent.rentOneList",car_name);
		 return rent;
	 }
}
