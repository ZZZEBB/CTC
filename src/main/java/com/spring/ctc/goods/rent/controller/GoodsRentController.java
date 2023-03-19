package com.spring.ctc.goods.rent.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

public interface GoodsRentController {
	public ModelAndView goodsRentSearch(HttpServletRequest request, HttpServletResponse response) throws Exception;
	public ModelAndView goodsRentDetail(HttpServletRequest request, HttpServletResponse response) throws Exception;
	public ModelAndView goodsSearch(@RequestParam("carResult") String carResult, HttpServletRequest request, HttpServletResponse response) throws Exception;
}
