package com.spring.ctc.order.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.ModelAndView;

public interface OrderController {
	
	public ModelAndView order(HttpServletRequest request, HttpServletResponse response) throws Exception;
}
