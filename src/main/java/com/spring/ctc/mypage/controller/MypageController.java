package com.spring.ctc.mypage.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class MypageController {
	
		//마이페이지 클릭시(/myInfo.do)
		//나의 회원정보 페이지가 출력됨
		@RequestMapping(value= "/myInfo.do" ,method={RequestMethod.POST,RequestMethod.GET})
		public ModelAndView myInfo(HttpServletRequest request, HttpServletResponse response) throws Exception {
			HttpSession session = request.getSession();
			session = request.getSession();
			session.setAttribute("side_menu", "member"); //사용자 사이드메뉴
			
			ModelAndView mav = new ModelAndView();
			String viewName = (String)request.getAttribute("viewName");
			mav.setViewName(viewName);
			return mav;
		}
}
