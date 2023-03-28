package com.spring.ctc.goods.pack.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Repository;

import com.spring.ctc.goods.pack.vo.GoodsPackVO;

@Repository("packDAO")
public class GoodsPackDAOImpl implements GoodsPackDAO{
   
   @Autowired
   SqlSession sqlsession;

   @Override
   public List<GoodsPackVO> selectPackageAllList() throws DataAccessException {
      List<GoodsPackVO> pack = sqlsession.selectList("mapper.package.packageAllList");
      return pack;
   }

   @Override
   public List<GoodsPackVO> selectPackageDetailList(String package_name) throws DataAccessException {
      List<GoodsPackVO> pack = sqlsession.selectList("mapper.package.packageDetailList", package_name);
      return pack;
   }

   
}