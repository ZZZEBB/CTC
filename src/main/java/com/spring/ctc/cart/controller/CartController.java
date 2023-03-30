package com.spring.ctc.cart.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.ModelAndView;

public interface CartController {
	
	public ModelAndView myCartMain(HttpServletRequest request, HttpServletResponse response)  throws Exception;
}
