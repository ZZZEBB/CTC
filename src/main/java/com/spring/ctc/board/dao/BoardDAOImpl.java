package com.spring.ctc.board.dao;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Repository;

import com.spring.ctc.board.vo.EventVO;

@Repository("boardDAO")
public class BoardDAOImpl implements BoardDAO {
	
	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public List<EventVO> eventLists() throws DataAccessException {
		List<EventVO> eventLists = (ArrayList) sqlSession.selectList("mapper.board.eventList");
	   return eventLists;
	}
	
	@Override
	public Map selectEventDetail(int event_num) throws DataAccessException {
	   return sqlSession.selectOne("mapper.board.selectEventDetail", event_num);
	  
	}

}