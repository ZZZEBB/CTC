package com.spring.ctc.board.dao;

import java.util.List;
import java.util.Map;

import org.springframework.dao.DataAccessException;

import com.spring.ctc.board.vo.EventVO;

public interface BoardDAO {
	
	public List<EventVO> eventLists() throws DataAccessException;
	public Map selectEventDetail(int event_num) throws DataAccessException;
}
