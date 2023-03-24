package com.spring.ctc.board.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

public interface BoardController {
	
	public ModelAndView eventList(HttpServletRequest request, HttpServletResponse response) throws Exception;
	public ModelAndView eventDetail(@RequestParam("event_num") int event_num, HttpServletRequest request, HttpServletResponse response) throws Exception;
	public ModelAndView faq(HttpServletRequest request, HttpServletResponse response) throws Exception;
}
