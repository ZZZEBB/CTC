package com.spring.ctc.mypage.service;

import java.util.List;
import java.util.Map;

import com.spring.ctc.board.vo.QnaVO;
import com.spring.ctc.joinandlogin.vo.CompanyVO;
import com.spring.ctc.joinandlogin.vo.MemberVO;
import com.spring.ctc.order.vo.OrderVO;

public interface MypageService {
	
	public MemberVO selectMember(String member_id) throws Exception;
	public CompanyVO selectCompany(String company_id) throws Exception;
	public List<QnaVO> myQnaList(QnaVO qnaVO) throws Exception;
	public List<OrderVO> selectOrder(MemberVO memberInfo) throws Exception;
	public void difyMember(Map memberInfo) throws Exception;
	public void deleteMember(Map member) throws Exception;
	public List<OrderVO> checkMileage() throws Exception;
}
