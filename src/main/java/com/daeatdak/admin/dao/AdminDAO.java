package com.daeatdak.admin.dao;



import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.daeatdak.admin.dto.AdminDTO;
import com.daeatdak.admin.vo.GoodsInfoListVO;
import com.mybatis.config.MyBatisConfig;

public class AdminDAO  {

	private SqlSession sqlSession;
	
	public AdminDAO() {
		sqlSession = MyBatisConfig.getSqlSessionFactory().openSession(true);
	}
	
	public void goodsRegist(AdminDTO adminDTO) {
		sqlSession.insert("admin.GoodsRegist", adminDTO);
	}
	public int getSequence() {
		return sqlSession.selectOne("admin.getSequence");
	}
	
	public List<GoodsInfoListVO> goodsInfoList() {
		
		return sqlSession.selectList("admin.GoodsInfoList");
		
	}
	
	
	  public void goodsDelete(int goodsNumber) {
	  sqlSession.delete("admin,goodsListDelete", goodsNumber); }
	 

}
