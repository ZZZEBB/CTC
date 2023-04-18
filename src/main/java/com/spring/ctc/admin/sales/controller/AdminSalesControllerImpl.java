package com.spring.ctc.admin.sales.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping(value="/admin")
public class AdminSalesControllerImpl implements AdminSalesController{

	//관리자 모드 - 메인페이지(매출관리 페이지, /adminSalesMain.do)
	@RequestMapping(value= "/adminSalesMain.do" ,method={RequestMethod.POST,RequestMethod.GET})
	public ModelAndView adminSalesMain(HttpServletRequest request, HttpServletResponse response) throws Exception{
		String viewName = (String)request.getAttribute("viewName");
		HttpSession session = request.getSession();
		session = request.getSession();
		ModelAndView mav = new ModelAndView(viewName);
        //관리자 - 매출관리 사이드메뉴
		session.setAttribute("side_menu", "salesManage_mode"); 
        return mav;
	}
}
