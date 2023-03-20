package com.spring.ctc.joinandlogin.service;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.ctc.joinandlogin.dao.JoinAndLoginDAO;
import com.spring.ctc.joinandlogin.vo.MemberVO;

@Service
public class JoinAndLoginServiceImpl implements JoinAndLoginService{
	
	@Autowired 
	private JoinAndLoginDAO joinAndLoginDAO;
	
	
	@Override
	   public MemberVO findId(Map<String,String> findIdMap) throws Exception {
	      return joinAndLoginDAO.findId(findIdMap);
	   }
}
