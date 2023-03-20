package com.spring.ctc.joinandlogin.service;

import java.util.Map;

import com.spring.ctc.joinandlogin.vo.MemberVO;

public interface JoinAndLoginService {

	public MemberVO findId(Map<String,String> findIdMap) throws Exception;
}
