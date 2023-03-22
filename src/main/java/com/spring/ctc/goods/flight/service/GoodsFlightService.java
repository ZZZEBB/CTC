package com.spring.ctc.goods.flight.service;

import java.util.List;
import java.util.Map;

import com.spring.ctc.goods.flight.vo.GoodsFlightVO;

public interface GoodsFlightService {
	public List<GoodsFlightVO> selectListFlight(Map keyword)throws Exception;
}
