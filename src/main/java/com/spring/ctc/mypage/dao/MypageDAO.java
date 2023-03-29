package com.spring.ctc.mypage.dao;

import org.springframework.dao.DataAccessException;

import com.spring.ctc.joinandlogin.vo.CompanyVO;
import com.spring.ctc.joinandlogin.vo.MemberVO;

public interface MypageDAO {
	
	public MemberVO selectMember(String member_id) throws DataAccessException;
	public CompanyVO selectCompany(String company_id) throws DataAccessException;

}
