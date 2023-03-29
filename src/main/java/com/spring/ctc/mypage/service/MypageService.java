package com.spring.ctc.mypage.service;

import com.spring.ctc.joinandlogin.vo.CompanyVO;
import com.spring.ctc.joinandlogin.vo.MemberVO;

public interface MypageService {
	
	public MemberVO selectMember(String member_id) throws Exception;
	public CompanyVO selectCompany(String company_id) throws Exception;

}
