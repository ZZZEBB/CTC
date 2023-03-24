package com.spring.ctc.goods.hotel.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

public interface GoodsHotelController {
   
   public ModelAndView goodsHotelSearch(HttpServletRequest request, HttpServletResponse response) throws Exception;
   public ModelAndView goodsHotelDetail(@RequestParam("hotel_name") String hotel_name, HttpServletRequest request, HttpServletResponse response) throws Exception;

}