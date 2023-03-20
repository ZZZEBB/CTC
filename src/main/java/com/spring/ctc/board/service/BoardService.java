package com.spring.ctc.board.service;

import java.util.List;

import com.spring.ctc.board.vo.EventVO;
public interface BoardService {

	public List<EventVO> eventList() throws Exception;
}
