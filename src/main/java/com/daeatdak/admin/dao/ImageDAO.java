//package com.daeatdak.admin.dao;
//
//import org.apache.ibatis.session.SqlSession;
//
//import com.daeatdak.admin.dto.ImageDTO;
//import com.mybatis.config.MyBatisConfig;
//
//public class ImageDAO {
//private SqlSession sqlSession;
//	
//	public ImageDAO() {
//		sqlSession = MyBatisConfig.getSqlSessionFactory().openSession(true);
//	}
//	
//	public void goodsRegist(ImageDTO imageDTO) {
//		sqlSession.insert("admin.GoodsImg", imageDTO);
//	}
//	
//	public int lastId() {
//		return sqlSession.selectOne("admin.lastId");
//	}
//}
