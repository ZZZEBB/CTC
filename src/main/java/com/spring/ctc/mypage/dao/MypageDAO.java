package com.spring.ctc.mypage.dao;

import org.springframework.dao.DataAccessException;

import com.spring.ctc.joinandlogin.vo.MemberVO;

public interface MypageDAO {
	
	public MemberVO selectMember(String member_id) throws DataAccessException;

}
