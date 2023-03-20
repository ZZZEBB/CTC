package com.spring.ctc.board.dao;

import java.util.List;

import org.springframework.dao.DataAccessException;

import com.spring.ctc.board.vo.EventVO;

public interface BoardDAO {
	
	public List<EventVO> eventLists() throws DataAccessException;
	public List eventDetail(int event_num) throws DataAccessException;
}
