package com.spring.ctc.joinandlogin.dao;

import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Repository;

import com.spring.ctc.joinandlogin.vo.MemberVO;

@Repository
public class JoinAndLoginDAOImpl implements JoinAndLoginDAO{
	
	@Autowired 
	private SqlSession sqlSession;
	 
	@Override
	public MemberVO findId(Map<String,String> findIdMap) throws DataAccessException {
		MemberVO member=(MemberVO)sqlSession.selectOne("mapper.login.findId", findIdMap);
		return member;
	}
}
