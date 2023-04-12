package com.spring.ctc.mypage.controller;

import java.text.DecimalFormat;
import java.util.Calendar;
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

import com.spring.ctc.board.vo.QnaVO;
import com.spring.ctc.joinandlogin.vo.CompanyVO;
import com.spring.ctc.joinandlogin.vo.MemberVO;
import com.spring.ctc.mypage.service.MypageService;
import com.spring.ctc.order.vo.OrderVO;

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
      @RequestMapping(value= "/myQna.do", method={RequestMethod.POST, RequestMethod.GET})
		public ModelAndView myQna(HttpServletRequest request, HttpServletResponse response) throws Exception {
		    String viewName = (String) request.getAttribute("viewName");
		    ModelAndView mav = new ModelAndView(viewName);
		    HttpSession session = request.getSession();
		    MemberVO memberVO = (MemberVO) session.getAttribute("memberInfo");
		    String member_id = memberVO.getMember_id();
		    
		    // QnaVO 객체를 생성하고 초기화합니다.
		    QnaVO qnaVO = new QnaVO();
		    qnaVO.setMember_id(member_id);
		    
		    List myQnaList = mypageService.myQnaList(qnaVO);
		    session.setAttribute("myQnaList", myQnaList);
		    
		    return mav;
		}
      
		//나의 예약내역 조회(/myOrder.do)
		@RequestMapping(value= "/myOrder.do" ,method={RequestMethod.POST,RequestMethod.GET})
		public ModelAndView myOrder(HttpServletRequest request, HttpServletResponse response) throws Exception {
			String viewName = (String)request.getAttribute("viewName");
			HttpSession session = request.getSession();
			//마이페이지 사이드메뉴
			session.setAttribute("side_menu", "my_page");
			ModelAndView mav = new ModelAndView();
			MemberVO memberVO = (MemberVO)session.getAttribute("memberInfo");
			List<OrderVO> reservation = mypageService.selectOrder(memberVO);
			
			mav.setViewName(viewName);
			mav.addObject("orderInfo" , reservation);
			return mav;
		}
		
		//회원 정보 수정 페이지(/myDetailInfo.do)
		@RequestMapping(value="/myDetailInfo.do" ,method = RequestMethod.GET)
		public ModelAndView myDetailInfo(HttpServletRequest request, HttpServletResponse response)  throws Exception {
			HttpSession session = request.getSession();
			MemberVO memberVO = (MemberVO)session.getAttribute("memberInfo");
			String viewName=(String)request.getAttribute("viewName");
			ModelAndView mav = new ModelAndView(viewName);
			mav.addObject("memberInfo" , memberVO);
			return mav;
		}	
		
		//회원 정보 수정 (/myModify.do)
		@RequestMapping(value="/modifyMyInfo.do" ,method={RequestMethod.POST,RequestMethod.GET})
		public ModelAndView modifyMyInfo(@RequestParam Map<String,String> memberDify,HttpServletRequest request, HttpServletResponse response)  throws Exception {
			String viewName=(String)request.getAttribute("viewName");
			mypageService.difyMember(memberDify);
			ModelAndView mav = new ModelAndView("/main/main");
			return mav;
		}
		
		//회원 정보 탈퇴 페이지 이동(/mypageDelete.do)
		@RequestMapping(value="/mypageDelete.do" ,method={RequestMethod.POST,RequestMethod.GET})
	      public ModelAndView mypageDelete(HttpServletRequest request, HttpServletResponse response)  throws Exception {
	         HttpSession session = request.getSession();
	         MemberVO memberVO = (MemberVO)session.getAttribute("memberInfo");
	         String viewName=(String)request.getAttribute("viewName");
	         ModelAndView mav = new ModelAndView(viewName);
	         mav.addObject("memberInfo" , memberVO);
	         return mav;
	      }   

	      
	      //회원 정보 탈퇴 (/delMember.do)
	      @RequestMapping(value="/delMember.do" ,method={RequestMethod.POST,RequestMethod.GET})
	      public ModelAndView delMember(@RequestParam Map<String,String> member , HttpServletRequest request, HttpServletResponse response)  throws Exception {
	         HttpSession session = request.getSession();
	         MemberVO memberVO = (MemberVO)session.getAttribute("memberInfo");
	         mypageService.deleteMember(member);
	         String viewName=(String)request.getAttribute("viewName");
	         ModelAndView mav = new ModelAndView("/main/main");
	         return mav;
	      }   

		
		 @RequestMapping(value = "/listMyOrderHistory.do", method={RequestMethod.POST,RequestMethod.GET})
	      public ModelAndView listMyOrderHistory(@RequestParam Map<String, String> dateMap, HttpServletRequest request, HttpServletResponse response) throws Exception {
	         String viewName = (String)request.getAttribute("viewName");
	         
	         ModelAndView mav = new ModelAndView(viewName);
	         HttpSession session = request.getSession();
	         //마이페이지 사이드메뉴
	         session.setAttribute("side_menu", "my_page");
	         memberVO = (MemberVO)session.getAttribute("memberInfo");
	         String member_id = memberVO.getMember_id();
	         String fixedSearchPeriod = dateMap.get("fixedSearchPeriod");
	         String beginDate = null, endDate = null;
	         String[] tempDate = calcSearchPeriod(fixedSearchPeriod).split(",");
	         beginDate=tempDate[0];
	         endDate=tempDate[1];
	         dateMap.put("beginDate", beginDate);
	         dateMap.put("endDate", endDate);
	         dateMap.put("member_id", member_id);
	         List<OrderVO> myOrderHistList=mypageService.listMyOrderHistory(dateMap);
	         String beginDate1[]=beginDate.split("-");
	         String endDate1[]=endDate.split("-");
	         mav.addObject("beginYear", beginDate1[0]);
	         mav.addObject("beginMonth", beginDate1[1]);
	         mav.addObject("beginDay", beginDate1[2]);
	         mav.addObject("endYear", endDate1[0]);
	         mav.addObject("endYear", endDate1[1]);
	         mav.addObject("endYear", endDate1[2]);
	         mav.addObject("myOrderHistList", myOrderHistList);
	         mav.addObject("member", memberVO);
	         return mav;
	      }
	      
	      protected String calcSearchPeriod(String fixedSearchPeriod){
	         String beginDate=null;
	         String endDate=null;
	         String endYear=null;
	         String endMonth=null;
	         String endDay=null;
	         String beginYear=null;
	         String beginMonth=null;
	         String beginDay=null;
	         DecimalFormat df = new DecimalFormat("00");
	         Calendar cal=Calendar.getInstance();
	         
	         endYear   = Integer.toString(cal.get(Calendar.YEAR));
	         endMonth  = df.format(cal.get(Calendar.MONTH) + 1);
	         endDay   = df.format(cal.get(Calendar.DATE));
	         endDate = endYear +"-"+ endMonth +"-"+endDay;
	         
	         if(fixedSearchPeriod == null) {
	            cal.add(cal.MONTH,-4);
	         }else if(fixedSearchPeriod.equals("one_week")) {
	            cal.add(Calendar.DAY_OF_YEAR, -7);
	         }else if(fixedSearchPeriod.equals("two_week")) {
	            cal.add(Calendar.DAY_OF_YEAR, -14);
	         }else if(fixedSearchPeriod.equals("one_month")) {
	            cal.add(cal.MONTH,-1);
	         }else if(fixedSearchPeriod.equals("two_month")) {
	            cal.add(cal.MONTH,-2);
	         }else if(fixedSearchPeriod.equals("three_month")) {
	            cal.add(cal.MONTH,-3);
	         }else if(fixedSearchPeriod.equals("four_month")) {
	            cal.add(cal.MONTH,-4);
	         }
	         
	         beginYear   = Integer.toString(cal.get(Calendar.YEAR));
	         beginMonth  = df.format(cal.get(Calendar.MONTH) + 1);
	         beginDay   = df.format(cal.get(Calendar.DATE));
	         beginDate = beginYear +"-"+ beginMonth +"-"+beginDay;
	         
	         return beginDate+","+endDate;
	      }

		
}
