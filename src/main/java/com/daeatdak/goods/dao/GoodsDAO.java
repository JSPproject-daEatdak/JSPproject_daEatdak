package com.daeatdak.goods.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.daeatdak.goods.dto.GoodsDTO;
import com.daeatdak.goods.dto.GoodsImageDTO;
import com.mybatis.config.MyBatisConfig;

public class GoodsDAO {
	   public SqlSession sqlSession;
	   
	   public GoodsDAO() {
	      sqlSession = MyBatisConfig.getSqlSessionFactory().openSession(true);
	   }
	   
	   public List<GoodsDTO> selectCategory(int categoryNum){
	      return sqlSession.selectList("goods.selectCategory", categoryNum);
	   }
	   
   
	   public List<GoodsImageDTO> selectImage(){
		   return sqlSession.selectList("goods.selectImage");
	   }
	   
	   public GoodsImageDTO selectImageByGoodsNum(int goodsNum){
		   return sqlSession.selectOne("goods.selectImageByGoodsNum",goodsNum);
	   }
	   
	   public GoodsDTO selectGoodsNum(int goodsNum){
		   return sqlSession.selectOne("goods.selectGoodsNum", goodsNum);
	   }
	   
}
