package com.spring.ctc.mypage.service;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.spring.ctc.joinandlogin.vo.MemberVO;
import com.spring.ctc.mypage.dao.MypageDAO;

@Service("mypageservice")
public class MypageServiceImpl implements MypageService {
   @Autowired
   MypageDAO mypageDAO;
   
   public MemberVO selectMember(String member_id) throws Exception{
      return mypageDAO.selectMember(member_id);
   }
}