package com.spring.ctc.goods.rent.controller;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.spring.ctc.goods.rent.service.GoodsRentService;
import com.spring.ctc.goods.rent.vo.GoodsRentVO;

@Controller("rentController")
@RequestMapping(value="/goods")
public class GoodsRentControllerImpl implements GoodsRentController{
   @Autowired
   private GoodsRentService goodsrentservice;
   
   @Override
   @RequestMapping(value="/goodsRentSearch.do" ,method =  {RequestMethod.GET,RequestMethod.POST})
   public ModelAndView goodsRentSearch(HttpServletRequest request, HttpServletResponse response) throws Exception {
      String viewName=(String)request.getAttribute("viewName");
      List<GoodsRentVO> carmodel = goodsrentservice.selectRentAllList();
      ModelAndView mav = new ModelAndView(viewName);
      mav.addObject("carList" , carmodel);
      /* Date car_start_date = request.getAttribute("car_start_date"); */
      return mav;
   }
   
   
   @Override
   @RequestMapping(value="/goodsRentDetail.do" ,method = {RequestMethod.GET,RequestMethod.POST})
   public ModelAndView goodsRentDetail(@RequestParam("car_name") String car_name , HttpServletRequest request, HttpServletResponse response) throws Exception {
      String viewName=(String)request.getAttribute("viewName");
      List<GoodsRentVO> car_imt = goodsrentservice.selectRentDetail(car_name); 
      ModelAndView mav = new ModelAndView(viewName);
      mav.addObject("carList", car_imt);
      return mav;
   }
   
   @Override
   @RequestMapping(value="/rentsearchWord.do" ,method =  {RequestMethod.GET,RequestMethod.POST})
   public ModelAndView goodsSearch(@RequestParam Map<String,String> carResult, HttpServletRequest request, HttpServletResponse response) throws Exception {
      request.setCharacterEncoding("utf-8");
      String viewName=(String)request.getAttribute("/goods/goodsRentSearch");
      ModelAndView mav = new ModelAndView(viewName);
      try {
    	  List<GoodsRentVO> carmodel = goodsrentservice.selectRentList(carResult);
    	  
    	  mav.addObject("user_start" , carResult.get("start"));
    	  mav.addObject("user_end" , carResult.get("End"));
    	  mav.addObject("carList" , carmodel);
      }catch(Exception e) {
    	  return mav;  
      }
      return mav;
   }

}