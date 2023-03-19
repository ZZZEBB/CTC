package com.spring.ctc.joinandlogin.controller;

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

import com.spring.ctc.joinandlogin.dao.JoinAndLoginDAO;
import com.spring.ctc.joinandlogin.service.JoinAndLoginService;
import com.spring.ctc.joinandlogin.vo.MemberVO;

@Controller("joinAndLoginController")
@RequestMapping(value="/joinAndLogin")
public class JoinAndLoginControllerImpl implements JoinAndLoginController {
//	@Autowired
//	private JoinAndLoginService joinAndLoginService;
//	@Autowired
//	private MemberVO memberVO;
//	@Autowired
//	private JoinAndLoginDAO joinAndLoginDAO;
	
	@Override
	   @RequestMapping(value="/lookup_id.do" ,method = RequestMethod.POST)
	   public ModelAndView findId(@RequestParam Map<String, String> findIdMap, 
	                        HttpServletResponse response, HttpServletRequest request) throws Exception {
	      ModelAndView mav = new ModelAndView();
	        memberVO = joinAndLoginService.findId(findIdMap);
	        
	        if (memberVO!= null) {
	           String memberId = memberVO.getMember_id();
	           HttpSession session=request.getSession();
	            session.setAttribute("id", memberId);
	            mav.setViewName("forward:/member/find_id.do"); 
	      } else {
	         
	         String message="�씠由� �삉�뒗 �씠硫붿씪�씠 �씪移섑븯吏� �븡�뒿�땲�떎. �쉶�썝�젙蹂대�� �솗�씤�빐二쇱꽭�슂.";
	         mav.addObject("id", message);
	         mav.setViewName("forward:/member/find_id.do"); //forward�뒗 留듯븨媛믪씠�옉 �씠由� 媛숈쑝硫� �삤瑜�(李얜뒗嫄� 臾댄븳 諛섎났)
	      }

           return mav;

	   }
	
	/* 회원가입 메인페이지 이동 */
	@RequestMapping(value= "/join_main.do" ,method={RequestMethod.POST,RequestMethod.GET})
	public ModelAndView join_main(HttpServletRequest request, HttpServletResponse response) throws Exception{
		
		ModelAndView mav = new ModelAndView();
		String viewName = (String)request.getAttribute("viewName");
		mav.setViewName(viewName);
		return mav;
	}
	
	/* 개인 회원 가입 이동 */
	@RequestMapping(value= "/join_member.do" ,method={RequestMethod.POST,RequestMethod.GET})
	public ModelAndView join_member(HttpServletRequest request, HttpServletResponse response) throws Exception{
		
		ModelAndView mav = new ModelAndView();
		String viewName = (String)request.getAttribute("viewName");
		mav.setViewName(viewName);
		return mav;
	}
	
	/* 사업자 회원 가입 이동 */
	@RequestMapping(value= "/join_com.do" ,method={RequestMethod.POST,RequestMethod.GET})
	public ModelAndView join_com(HttpServletRequest request, HttpServletResponse response) throws Exception{
		
		ModelAndView mav = new ModelAndView();
		String viewName = (String)request.getAttribute("viewName");
		mav.setViewName(viewName);
		return mav;
	}

	@Override
	@RequestMapping(value= "/loginForm.do" ,method={RequestMethod.POST,RequestMethod.GET})
	public ModelAndView loginForm(HttpServletRequest request, HttpServletResponse response) throws Exception {
		ModelAndView mav = new ModelAndView();
		String viewName = (String)request.getAttribute("viewName");
		mav.setViewName(viewName);
		return mav;
	}
	
	   
}
