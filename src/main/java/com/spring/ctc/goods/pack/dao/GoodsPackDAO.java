package com.spring.ctc.goods.pack.dao;

import java.util.List;

import org.springframework.dao.DataAccessException;

import com.spring.ctc.goods.pack.vo.GoodsPackVO;

public interface GoodsPackDAO {
   public List<GoodsPackVO> selectPackageAllList() throws DataAccessException;
   public List<GoodsPackVO> selectPackageDetailList(String package_name) throws DataAccessException;

}