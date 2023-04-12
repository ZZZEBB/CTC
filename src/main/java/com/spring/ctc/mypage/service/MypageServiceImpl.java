package com.spring.ctc.mypage.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.ctc.board.vo.QnaVO;
import com.spring.ctc.joinandlogin.vo.CompanyVO;
import com.spring.ctc.joinandlogin.vo.MemberVO;
import com.spring.ctc.mypage.dao.MypageDAO;
import com.spring.ctc.order.vo.OrderVO;

@Service("mypageservice")
public class MypageServiceImpl implements MypageService {
   @Autowired
   MypageDAO mypageDAO;
   
   public MemberVO selectMember(String member_id) throws Exception{
      return mypageDAO.selectMember(member_id);
   }
   
   public CompanyVO selectCompany(String company_id) throws Exception{
	   return mypageDAO.selectCompany(company_id);
   }
   
   public List<QnaVO> myQnaList(QnaVO qnaVO) throws Exception{
	   List<QnaVO> myQnaList = mypageDAO.myQnaList(qnaVO);
	   if(myQnaList.size()==0) {
		   return null;
	   }
	   return myQnaList;
   }
   
   public List<OrderVO> selectOrder(MemberVO memberInfo) throws Exception{
	   return mypageDAO.selectOrder(memberInfo);
   }
   
   public void difyMember(Map memberInfo) throws Exception{
	      mypageDAO.updateMember(memberInfo);
	   }
	   
   public void deleteMember(Map member) throws Exception{
      mypageDAO.deleteMember(member);
   }
   
   @Override
   public List<OrderVO> checkMileage() throws Exception {
      return mypageDAO.checkMileage();
   }

   @Override
   public List<OrderVO> listMyOrderHistory(Map dateMap) throws Exception {
      return mypageDAO.selectMyOrderHistory(dateMap);
   }

	/*
	 * @Override public List<ReviewVO> reviewList(String member_id) throws Exception
	 * { return mypageDAO.reviewList(member_id); }
	 */

   
}