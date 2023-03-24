package com.spring.ctc.order.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping(value="/order")
public class OrderControllerImpl {
	
	//항공 상품 예약정보확인 페이지
	@RequestMapping(value= "/flightOrderCheck.do" ,method={RequestMethod.POST,RequestMethod.GET})
	public ModelAndView flightOrderCheck(HttpServletRequest request, HttpServletResponse response) throws Exception{
		
		ModelAndView mav = new ModelAndView();
		String viewName = (String)request.getAttribute("viewName");
		mav.setViewName(viewName);
		return mav;
	}
	
	//항공 상품 약관/결제 페이지
	@RequestMapping(value= "/flightOrderPay.do" ,method={RequestMethod.POST,RequestMethod.GET})
	public ModelAndView flightOrderPay(HttpServletRequest request, HttpServletResponse response) throws Exception{
		
		ModelAndView mav = new ModelAndView();
		String viewName = (String)request.getAttribute("viewName");
		mav.setViewName(viewName);
		return mav;
	}
	
	@RequestMapping(value= "/hotelOrder.do" ,method={RequestMethod.POST,RequestMethod.GET})
	public ModelAndView hotelOrder(HttpServletRequest request, HttpServletResponse response) throws Exception{
		
		ModelAndView mav = new ModelAndView();
		String viewName = (String)request.getAttribute("viewName");
		mav.setViewName(viewName);
		return mav;
	}
	
	@RequestMapping(value= "/packOrder.do" ,method={RequestMethod.POST,RequestMethod.GET})
	public ModelAndView packOrder(HttpServletRequest request, HttpServletResponse response) throws Exception{
		
		ModelAndView mav = new ModelAndView();
		String viewName = (String)request.getAttribute("viewName");
		mav.setViewName(viewName);
		return mav;
	}
	
	@RequestMapping(value= "/rentOrder.do" ,method={RequestMethod.POST,RequestMethod.GET})
	public ModelAndView rentOrder(HttpServletRequest request, HttpServletResponse response) throws Exception{
		
		ModelAndView mav = new ModelAndView();
		String viewName = (String)request.getAttribute("viewName");
		mav.setViewName(viewName);
		return mav;
	}

}
