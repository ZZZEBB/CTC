package com.spring.ctc.joinandlogin.service;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;

import com.spring.ctc.joinandlogin.dao.JoinAndLoginDAO;
import com.spring.ctc.joinandlogin.vo.MemberVO;

public class JoinAndLoginServiceImpl implements JoinAndLoginService{
	/*
	 * @Autowired private JoinAndLoginDAO joinAndLoginDAO;
	 */
	
	@Override
	   public MemberVO findId(Map findIdMap) throws Exception {
	      return joinAndLoginDAO.findId(findIdMap);
	   }
}
