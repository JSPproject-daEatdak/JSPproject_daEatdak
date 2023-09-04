package com.daeatdak.myPage.dao;

import org.apache.ibatis.session.SqlSession;

import com.daeatdak.login.dto.UserDTO;
import com.mybatis.config.MyBatisConfig;

public class myPageDAO {

	
	public SqlSession sqlSession;
	
	public myPageDAO() {
		sqlSession = MyBatisConfig.getSqlSessionFactory().openSession(true);
	}
	
	public UserDTO revise(UserDTO userDTO) {
		System.out.println("요긴 안 와?");
		
		sqlSession.update("user.revise", userDTO);
		return null;
	}
}
