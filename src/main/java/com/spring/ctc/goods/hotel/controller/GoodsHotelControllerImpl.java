package com.spring.ctc.goods.hotel.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller("HotelController")
@RequestMapping(value = "/goods")
public class GoodsHotelControllerImpl implements GoodsHotelController{

	@Override
	@RequestMapping(value ="/goodsHotelSearch.do", method = {RequestMethod.GET,RequestMethod.POST}  )
	public ModelAndView goodsHotelSearch(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String viewName=(String)request.getAttribute("viewName");
		HttpSession session=request.getSession();
		ModelAndView mav = new ModelAndView(viewName);
		return mav;
	}

	@Override
	@RequestMapping(value ="/goodsHotelDetail.do", method = {RequestMethod.GET,RequestMethod.POST}  )
	public ModelAndView goodsHotelDetail(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String viewName=(String)request.getAttribute("viewName");
		HttpSession session=request.getSession();
		ModelAndView mav = new ModelAndView(viewName);
		return mav;
	}
	
	
	

}
