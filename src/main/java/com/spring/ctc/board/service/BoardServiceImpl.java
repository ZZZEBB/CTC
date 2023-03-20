package com.spring.ctc.board.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.spring.ctc.board.dao.BoardDAO;
import com.spring.ctc.board.vo.EventVO;

@Service("boardService")
@Transactional(propagation=Propagation.REQUIRED)
public class BoardServiceImpl implements BoardService {
	
	@Autowired
	private BoardDAO baordDAO;

	public List<EventVO> eventList() throws Exception {
		List<EventVO> eventLists = baordDAO.eventLists();
		return eventLists;
	}
	
	@Override
	//public Map eventDetail(int event_num) throws Exception {
		/*
		 * Map eventMap = new HashMap(); ArrayList<EventVO> eventList =
		 * baordDAO.selectEventDetail(event_num);
		 * 
		 * orderMap.put("orderList",orderList);
		 * orderMap.put("deliveryInfo",deliveryInfo); orderMap.put("orderer", orderer);
		 * return orderMap;
		 */
	}
}
