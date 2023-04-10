package com.spring.ctc.mypage.dao;

import java.util.List;
import java.util.Map;

import org.springframework.dao.DataAccessException;

import com.spring.ctc.joinandlogin.vo.CompanyVO;
import com.spring.ctc.joinandlogin.vo.MemberVO;
import com.spring.ctc.order.vo.OrderVO;

public interface MypageDAO {
	
	public MemberVO selectMember(String member_id) throws DataAccessException;
	public CompanyVO selectCompany(String company_id) throws DataAccessException;
	public List<OrderVO> selectOrder(MemberVO memberInfo) throws DataAccessException;
	public void updateMember(Map memberInfo) throws DataAccessException;
	public List<OrderVO> checkMileage() throws DataAccessException;
}
