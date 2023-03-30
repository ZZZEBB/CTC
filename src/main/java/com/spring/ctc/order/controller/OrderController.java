package com.spring.ctc.order.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.ModelAndView;

public interface OrderController {
	
	public ModelAndView flightOrder(HttpServletRequest request, HttpServletResponse response) throws Exception;
	public ModelAndView hotelOrder(HttpServletRequest request, HttpServletResponse response) throws Exception;
	public ModelAndView packOrder(HttpServletRequest request, HttpServletResponse response) throws Exception;
	public ModelAndView rentOrder(HttpServletRequest request, HttpServletResponse response) throws Exception;
}
