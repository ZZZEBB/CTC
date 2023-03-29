package com.spring.ctc.mypage.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.spring.ctc.joinandlogin.vo.CompanyVO;
import com.spring.ctc.joinandlogin.vo.MemberVO;
import com.spring.ctc.mypage.service.MypageService;

@Controller
@RequestMapping(value="/mypage")
public class MypageController {
		@Autowired
		MypageService mypageService;
		@Autowired
		MemberVO memberVO;
		CompanyVO comVO;
		
	      //마이페이지 클릭시(/myInfo.do)
	      //나의 회원정보 페이지가 출력됨
	      @RequestMapping(value= "/myInfo.do" ,method={RequestMethod.POST,RequestMethod.GET})
	      public ModelAndView myInfo(HttpServletRequest request, HttpServletResponse response) throws Exception {
	         String viewName = (String)request.getAttribute("viewName");
	         HttpSession session = request.getSession();
	         ModelAndView mav = new ModelAndView();
	         mav.setViewName(viewName);
	         memberVO = (MemberVO)session.getAttribute("memberInfo");
	         comVO = (CompanyVO)session.getAttribute("comInfo");
	         
	         if(memberVO != null) {
		         mav.addObject("member", memberVO);
	         }
	         else if(comVO != null) {
	        	 mav.addObject("com", comVO);
	         }
	         //마이페이지 사이드메뉴
	         session.setAttribute("side_menu", "my_page"); 
	         return mav;
	      }
		
		//나의 문의내역 페이지 조회(/myQna.do)
		@RequestMapping(value= "/myQna.do" ,method={RequestMethod.POST,RequestMethod.GET})
		public ModelAndView myQna(HttpServletRequest request, HttpServletResponse response) throws Exception {
			HttpSession session = request.getSession();
			session = request.getSession();
			//마이페이지 사이드메뉴
			session.setAttribute("side_menu", "my_page"); 
			
			ModelAndView mav = new ModelAndView();
			String viewName = (String)request.getAttribute("viewName");
			mav.setViewName(viewName);
			return mav;
		}
		
		//나의 문의내역 페이지 조회(/myMileage.do)
		@RequestMapping(value= "/myMileage.do" ,method={RequestMethod.POST,RequestMethod.GET})
		public ModelAndView myMileage(HttpServletRequest request, HttpServletResponse response) throws Exception {
			HttpSession session = request.getSession();
			session = request.getSession();
			//마이페이지 사이드메뉴
			session.setAttribute("side_menu", "my_page"); 
			
			ModelAndView mav = new ModelAndView();
			String viewName = (String)request.getAttribute("viewName");
			mav.setViewName(viewName);
			return mav;
		}
}
