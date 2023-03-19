package com.spring.ctc.joinandlogin.dao;

import java.util.Map;

import org.springframework.dao.DataAccessException;

import com.spring.ctc.joinandlogin.vo.MemberVO;

public interface JoinAndLoginDAO {

	public MemberVO findId(Map findIdMap) throws DataAccessException;
}
