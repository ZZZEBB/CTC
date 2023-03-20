package com.spring.ctc.board.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.ModelAndView;

public interface BoardController {
	
	public ModelAndView eventList(HttpServletRequest request, HttpServletResponse response) throws Exception;
	public ModelAndView eventDetail(HttpServletRequest request, HttpServletResponse response) throws Exception;
}
