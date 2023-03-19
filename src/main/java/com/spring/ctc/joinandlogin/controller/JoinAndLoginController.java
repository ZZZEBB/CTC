package com.spring.ctc.joinandlogin.controller;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

public interface JoinAndLoginController {

	public ModelAndView findId(@RequestParam Map<String, String> findIdMap,HttpServletResponse response, HttpServletRequest request) throws Exception;

	/* �쉶�썝媛��엯 硫붿씤�럹�씠吏� �씠�룞 */
	public ModelAndView join_main(HttpServletRequest request, HttpServletResponse response) throws Exception;
	/* 媛쒖씤�쉶�썝媛��엯 �씠�룞 */
	public ModelAndView join_member(HttpServletRequest request, HttpServletResponse response) throws Exception;
	/* �궗�뾽�옄�쉶�썝媛��엯 �씠�룞 */
	public ModelAndView join_com(HttpServletRequest request, HttpServletResponse response) throws Exception;
	public ModelAndView loginForm(HttpServletRequest request, HttpServletResponse response) throws Exception;
}
