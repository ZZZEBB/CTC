package com.spring.ctc.goods.flight.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller("flightController")
@RequestMapping(value="/goods")
public class GoodsFlightControllerImpl {
	
	@RequestMapping(value="/goodsAirSearch.do" ,method = {RequestMethod.GET,RequestMethod.POST})
	public ModelAndView goodsAirSearch(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String viewName=(String)request.getAttribute("viewName");
		HttpSession session=request.getSession();
		ModelAndView mav = new ModelAndView(viewName);
		return mav;
	}
}
