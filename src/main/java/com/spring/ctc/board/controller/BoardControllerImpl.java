package com.spring.ctc.board.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.spring.ctc.board.service.BoardService;
import com.spring.ctc.board.vo.EventVO;

//@Controller("boardController")
@Controller
@RequestMapping(value="/board")
public class BoardControllerImpl implements BoardController {
	
	@Autowired
	private BoardService boardService;
	
	private EventVO eventVO;
	
	//이벤트 목록 조회(/eventList.do)
	@Override
	@RequestMapping(value= "/eventList.do" ,method={RequestMethod.POST,RequestMethod.GET})
	public ModelAndView eventList(HttpServletRequest request, HttpServletResponse response) throws Exception {
		HttpSession session = request.getSession();
		session = request.getSession();
		/* session.setAttribute("side_menu", "member"); -> 사이드메뉴*/
		
		String viewName = (String)request.getAttribute("viewName");
		ModelAndView mav = new ModelAndView(viewName);
		eventVO = (EventVO)session.getAttribute("eventLists");
		
		List<EventVO> eventLists = boardService.eventList();
		for(int i = 0; i < eventLists.size(); i++) {
			System.out.println("##" + eventLists.get(i).getEvent_num());
		}
		
		mav.addObject("eventLists", eventLists);
		return mav;
	}
	
	//이벤트 상세 조회(/eventDetail.do)
	@Override
	@RequestMapping(value= "/eventDetail.do" ,method={RequestMethod.POST,RequestMethod.GET})
	public ModelAndView eventDetail(@RequestParam("event_num") int event_num, HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		String viewName = (String)request.getAttribute("viewName");
		ModelAndView mav = new ModelAndView(viewName);
		Map eventMap = boardService.eventDetail(event_num);
		mav.addObject("eventMap", eventMap);
		EventVO eventVO = (EventVO) eventMap.get("eventVO");
		return mav;
	}
	
}