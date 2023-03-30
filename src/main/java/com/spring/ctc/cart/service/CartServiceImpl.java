package com.spring.ctc.cart.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.ctc.cart.dao.CartDAO;
import com.spring.ctc.cart.vo.CartVO;
import com.spring.ctc.goods.GoodsVO;

@Service("cartService")
public class CartServiceImpl implements CartService {
	@Autowired
	private CartDAO cartDAO;
	
	public Map<String, List> cartList(CartVO cartVO) throws Exception {
		
		Map<String, List> cartMap = new HashMap<String, List>();
		List<CartVO> cartList = cartDAO.selectCartList(cartVO);
		if (cartList.size() == 0) {
			return null;
		}
		/*
		 * List<GoodsFlightVO> flightCartList = cartDAO.selectFlightCartList(cartList);
		 * List<GoodsHotelVO> hotelCartList = cartDAO.selectHotelCartList(cartList);
		 * List<GoodsPackVO> packCartList = cartDAO.selectPackCartList(cartList);
		 * List<GoodsRentVO> rentCartList = cartDAO.selectRentCartList(cartList);
		 * 
		 * cartMap.put("cartList", cartList); cartMap.put("flightCartList",
		 * flightCartList); cartMap.put("hotelCartList", hotelCartList);
		 * cartMap.put("packCartList", packCartList); cartMap.put("rentCartList",
		 * rentCartList);
		 */
		
		return cartMap;
	}

}
