package com.spring.ctc.cart.controller;

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
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.spring.ctc.cart.service.CartService;
import com.spring.ctc.cart.vo.CartVO;
import com.spring.ctc.joinandlogin.vo.MemberVO;

@Controller("cartController")
@RequestMapping(value = "/cart")
public class CartControllerImpl implements CartController {
	@Autowired
	private CartService cartService;
	@Autowired
	private CartVO cartVO;
	@Autowired
	private MemberVO memberVO;

	// 장바구니 페이지 이동(/cartList.do)
	@RequestMapping(value = "/cartList.do", method = { RequestMethod.POST, RequestMethod.GET })
	public ModelAndView cartList(HttpServletRequest request, HttpServletResponse response) throws Exception {

		String viewName = (String) request.getAttribute("viewName");
		ModelAndView mav = new ModelAndView(viewName);
		HttpSession session = request.getSession();
		MemberVO memberVO = (MemberVO) session.getAttribute("memberInfo");
		String member_id = memberVO.getMember_id();
		Map<String, List> cartMap = cartService.cartList(cartVO);
		session.setAttribute("cartMap", cartMap);
		mav.setViewName(viewName);
		return mav;
	}

	/*
	 * //장바구니 상품 추가
	 * 
	 * @RequestMapping(value="/addGoodsInCart.do" ,method =
	 * RequestMethod.POST,produces = "application/text; charset=utf8")
	 * public @ResponseBody String addGoodsInCart(@RequestParam("goods_code") String
	 * goods_code, HttpServletRequest request, HttpServletResponse response) throws
	 * Exception{ HttpSession session=request.getSession();
	 * memberVO=(MemberVO)session.getAttribute("memberInfo"); String
	 * member_id=memberVO.getMember_id();
	 * 
	 * cartVO.setMember_id(member_id); //카트 등록전에 이미 등록된 제품인지 판별한다.
	 * cartVO.setGoods_code(goods_code); cartVO.setMember_id(member_id);
	 * 
	 * 상품번호가 장바구니 테이블에 있는지 조회합니다 boolean
	 * isAreadyExisted=cartService.findCartGoods(cartVO);
	 * 
	 * System.out.println("isAreadyExisted:"+isAreadyExisted);
	 * 
	 * 상품번호가 이미 장바구니 테이블에 있으면 이미 추가되었다는 메시지를 브라우저로 전송, 없을시 장바구니 추가
	 * if(isAreadyExisted==true){ return "already_existed"; }else{
	 * cartService.addGoodsInCart(cartVO); return "add_success"; } }
	 */

}
