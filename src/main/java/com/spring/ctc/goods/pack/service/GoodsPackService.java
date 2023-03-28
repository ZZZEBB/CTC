package com.spring.ctc.goods.pack.service;

import java.util.List;

import com.spring.ctc.goods.pack.vo.GoodsPackVO;

public interface GoodsPackService {
   
   public List<GoodsPackVO> selectPackageAllList() throws Exception;
   public List<GoodsPackVO> selectPackageDetailList(String package_name) throws Exception;

}