package com.spring.ctc.board.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.spring.ctc.board.service.BoardService;

//@Controller("boardController")
@Controller
@RequestMapping(value="/board")
public class BoardControllerImpl implements BoardController {
	
	@Autowired
	private BoardService boardService;
	
	@RequestMapping(value= "/eventList.do" ,method={RequestMethod.POST,RequestMethod.GET})
	public ModelAndView eventList(HttpServletRequest request, HttpServletResponse response) throws Exception{
		
		ModelAndView mav = new ModelAndView();
		String viewName = (String)request.getAttribute("viewName");
		
		boardService.test();
		
		mav.setViewName(viewName);
		return mav;
	}
	
	@RequestMapping(value= "/eventDetail.do" ,method={RequestMethod.POST,RequestMethod.GET})
	public ModelAndView eventDetail(HttpServletRequest request, HttpServletResponse response) throws Exception{
		
		ModelAndView mav = new ModelAndView();
		String viewName = (String)request.getAttribute("viewName");
		mav.setViewName(viewName);
		return mav;
	}
}
