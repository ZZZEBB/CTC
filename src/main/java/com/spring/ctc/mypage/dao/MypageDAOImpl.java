package com.spring.ctc.mypage.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Repository;

import com.spring.ctc.joinandlogin.vo.CompanyVO;
import com.spring.ctc.joinandlogin.vo.MemberVO;
import com.spring.ctc.order.vo.OrderVO;


@Repository("mypageDAO")
public class MypageDAOImpl implements MypageDAO {
   @Autowired
   private SqlSession sqlSession;
   
   @Override
   public MemberVO selectMember(String member_id) throws DataAccessException{
		MemberVO member = sqlSession.selectOne("mapper.mypage.selectMyMember", member_id);
		System.out.println(member);
		return member;
   }
   
   @Override
   public CompanyVO selectCompany(String company_id) throws DataAccessException{
	   CompanyVO com = sqlSession.selectOne("mapper.mypage.selectMyCompany", company_id);
	   return com;
   }
   
   //상품결제목록 출력
   @Override
   public List<OrderVO> selectOrder(MemberVO memberInfo) throws DataAccessException{
	   List<OrderVO> revervation = sqlSession.selectList("mapper.mypage.selectOrderList" , memberInfo);
	   return revervation;
   }
   
   public void updateMember(Map memberInfo) throws DataAccessException{
	   sqlSession.update("mapper.mypage.updateMember",memberInfo);
   }
   
   public void deleteMember(Map member) throws DataAccessException{
	      sqlSession.update("mapper.mypage.deleteMember",member);
	   }
   
   @Override
   public List<OrderVO> checkMileage() throws DataAccessException {
      List<OrderVO> mileage = sqlSession.selectList("mapper.order.checkMileage");
      return mileage;
   }
 }