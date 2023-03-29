package com.spring.ctc.board.controller;

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
import com.spring.ctc.board.vo.FaqVO;
import com.spring.ctc.board.vo.NoticeVO;

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
	
	//고객센터(고객센터 메인 - 자주묻는질문 페이지) 이동(/faq.do)
	@RequestMapping(value= "/faq.do" ,method={RequestMethod.POST,RequestMethod.GET})
	public ModelAndView faq(HttpServletRequest request, HttpServletResponse response) throws Exception{
		ModelAndView mav = new ModelAndView();
		HttpSession session = request.getSession();
		session = request.getSession();
		String viewName = (String)request.getAttribute("viewName");
		int hotel = 1; 
		int flight = 2; 
		int rent = 3; 
		int packages = 4; 
		List<FaqVO> faqhotel = boardService.faqList(hotel);
		List<FaqVO> faqflight = boardService.faqList(flight);
		List<FaqVO> faqrent = boardService.faqList(rent);
		List<FaqVO> faqpackage = boardService.faqList(packages);
		
		System.out.println(faqpackage.toString());
		
		//고객센터 사이드메뉴
		session.setAttribute("side_menu", "customercenter_mode");
		
		mav.setViewName(viewName);
		mav.addObject("faqhotel" , faqhotel);
		mav.addObject("faqflight" , faqflight);
		mav.addObject("faqrent" , faqrent);
		mav.addObject("faqpackage" , faqpackage);
		return mav;
	}

	//공지사항 목록 조회 이동(/noticeList.do)
   @Override
   @RequestMapping(value= "/noticeList.do" ,method={RequestMethod.POST,RequestMethod.GET})
   public ModelAndView noticeList(HttpServletRequest request, HttpServletResponse response) throws Exception{
		HttpSession session = request.getSession();
		session = request.getSession();
		String viewName = (String)request.getAttribute("viewName");
		List<NoticeVO> noticeList = boardService.noticeList();
		ModelAndView mav = new ModelAndView(viewName);
		
		//고객센터 사이드메뉴
		session.setAttribute("side_menu", "customercenter_mode");
		
		mav.addObject("noticeList", noticeList);
		return mav;
   }
   
   //공지사항 목록 조회 이동(/noticeDetail.do)
   @Override
   @RequestMapping(value= "/noticeDetail.do" ,method={RequestMethod.POST,RequestMethod.GET})
   public ModelAndView noticeDetail(@RequestParam("notice_num") int notice_num, HttpServletRequest request, HttpServletResponse response) throws Exception {
	   	HttpSession session = request.getSession();
		session = request.getSession();
		String viewName = (String)request.getAttribute("viewName");
		ModelAndView mav = new ModelAndView(viewName);
		
		//고객센터 사이드메뉴
		session.setAttribute("side_menu", "customercenter_mode");
				
		Map noticeMap = boardService.noticeDetail(notice_num);
		mav.addObject("noticeMap", noticeMap);
		NoticeVO noticeVO = (NoticeVO) noticeMap.get("noticeVO");
		return mav;
   }
	
}