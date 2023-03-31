package com.spring.ctc.cart.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

public interface CartController {
	
	public ModelAndView myCartMain(HttpServletRequest request, HttpServletResponse response) throws Exception;
	public @ResponseBody String addGoodsInCart(@RequestParam("goods_code") String goods_code,HttpServletRequest request, HttpServletResponse response)  throws Exception;
	public  @ResponseBody String modifyCartQty(@RequestParam("goods_code") String goods_code,@RequestParam("cart_headcount") int cart_headcount,
            HttpServletRequest request, HttpServletResponse response)  throws Exception;
	public ModelAndView removeCartGoods(@RequestParam("cart_id") int cart_id,HttpServletRequest request, HttpServletResponse response)  throws Exception;
}