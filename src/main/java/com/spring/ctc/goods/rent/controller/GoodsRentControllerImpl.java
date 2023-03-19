package com.spring.ctc.goods.rent.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller("rentController")
@RequestMapping(value="/goods")
public class GoodsRentControllerImpl {
	@RequestMapping(value="/goodsRentSearch.do" ,method =  {RequestMethod.GET,RequestMethod.POST})
	public ModelAndView goodsRentSearch(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String viewName=(String)request.getAttribute("viewName");
		ModelAndView mav = new ModelAndView(viewName);
		return mav;
	}
	
	@RequestMapping(value="/rentsearchWord.do" ,method =  {RequestMethod.GET,RequestMethod.POST})
	public ModelAndView goodsSearch(@RequestParam("carResult") String carResult, HttpServletRequest request, HttpServletResponse response) throws Exception {
		request.setCharacterEncoding("utf-8");
		String viewName=(String)request.getAttribute("/goods/goodsRentSearch");
		ModelAndView mav = new ModelAndView(viewName);
			
		mav.addObject("carsize" , carResult);

		return mav;
	}
	
	@RequestMapping(value="/goodsRentDetail.do" ,method = {RequestMethod.GET,RequestMethod.POST})
	public ModelAndView goodsRentDetail(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String viewName=(String)request.getAttribute("viewName");
		ModelAndView mav = new ModelAndView(viewName);
		return mav;
	}
}
