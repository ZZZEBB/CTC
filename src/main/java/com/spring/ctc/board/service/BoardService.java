package com.spring.ctc.board.service;

import java.util.List;
import java.util.Map;

import com.spring.ctc.board.vo.EventVO;
public interface BoardService {

	public List<EventVO> eventList() throws Exception;
	public Map eventDetail(int event_num) throws Exception;
}
