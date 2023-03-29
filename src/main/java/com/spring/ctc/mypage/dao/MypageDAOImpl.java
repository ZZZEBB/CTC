package com.spring.ctc.mypage.dao;

import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Repository;

import com.spring.ctc.joinandlogin.vo.CompanyVO;
import com.spring.ctc.joinandlogin.vo.MemberVO;


@Repository("mypageDAO")
public class MypageDAOImpl implements MypageDAO {
   @Autowired
   private SqlSession sqlSession;
   
   public MemberVO selectMember(String member_id) throws DataAccessException{
		MemberVO member = sqlSession.selectOne("mapper.mypage.selectMyMember", member_id);
		System.out.println(member);
		return member;
   }
   
   public CompanyVO selectCompany(String company_id) throws DataAccessException{
	   CompanyVO com = sqlSession.selectOne("mapper.mypage.selectMyCompany", company_id);
	   return com;
   }
}