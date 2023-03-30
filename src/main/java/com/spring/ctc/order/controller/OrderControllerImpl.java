package com.spring.ctc.order.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.spring.ctc.order.service.OrderService;
import com.spring.ctc.order.vo.OrderVO;

@Controller("OrderController")
@RequestMapping(value="/order")
public class OrderControllerImpl implements OrderController {
	@Autowired
	private OrderService orderService;
	
	//항공 상품 예약/결제 페이지
	@Override
	@RequestMapping(value= "/order.do" ,method={RequestMethod.POST,RequestMethod.GET})
	public ModelAndView order(HttpServletRequest request, HttpServletResponse response) throws Exception{
		String viewName = (String)request.getAttribute("viewName");
		ModelAndView mav = new ModelAndView(viewName);
		return mav;
	}
	
}
