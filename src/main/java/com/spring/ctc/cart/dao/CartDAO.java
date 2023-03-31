package com.spring.ctc.cart.dao;

import java.util.List;

import org.springframework.dao.DataAccessException;

import com.spring.ctc.goods.GoodsVO;
import com.spring.ctc.cart.vo.CartVO;

public interface CartDAO {
	
	public List<CartVO> selectCartList(CartVO cartVO) throws DataAccessException;
	public List<GoodsVO> selectGoodsList(List<CartVO> cartList) throws DataAccessException;
	public boolean selectCountInCart(CartVO cartVO) throws DataAccessException;
	public void insertGoodsInCart(CartVO cartVO) throws DataAccessException;
	public void updateCartGoodsQty(CartVO cartVO) throws DataAccessException;
	public void deleteCartGoods(int cart_id) throws DataAccessException;
	

}