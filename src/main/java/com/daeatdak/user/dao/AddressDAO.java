package com.daeatdak.user.dao;

import org.apache.ibatis.session.SqlSession;

import com.daeatdak.user.dto.AddressDTO;
import com.mybatis.config.MyBatisConfig;

public class AddressDAO {
	SqlSession sqlSession;
	
	
	public AddressDAO() {
		sqlSession = MyBatisConfig.getSqlSessionFactory().openSession(true);
	}
	public void insert(AddressDTO addressDTO) {
		sqlSession.insert("user.joinAddress", addressDTO);
	}
	public int getSequence() {
		return sqlSession.selectOne("user.getSequence");
	}
}
