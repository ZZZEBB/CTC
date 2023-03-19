package com.spring.ctc.goods.flight.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.web.servlet.ModelAndView;

public interface GoodsFlightController {
	
	public ModelAndView goodsAirSearch(HttpServletRequest request, HttpServletResponse response) throws Exception;
}
