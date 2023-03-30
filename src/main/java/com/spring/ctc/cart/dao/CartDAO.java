package com.spring.ctc.cart.dao;

import java.util.List;

import org.springframework.dao.DataAccessException;

import com.spring.ctc.cart.vo.CartVO;
import com.spring.ctc.goods.GoodsVO;

public interface CartDAO {
	
	public List<CartVO> selectCartList(CartVO cartVO) throws DataAccessException;
	public List<GoodsVO> selectGoodsList(List<CartVO> cartList) throws DataAccessException;

}
