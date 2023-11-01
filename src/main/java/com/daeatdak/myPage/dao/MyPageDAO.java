package com.daeatdak.myPage.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.daeatdak.login.dto.UserDTO;
import com.daeatdak.myPage.dto.MyPageDTO;
import com.mybatis.config.MyBatisConfig;

public class MyPageDAO {

	
	public SqlSession sqlSession;
		
	public MyPageDAO() {
		sqlSession = MyBatisConfig.getSqlSessionFactory().openSession(true);
	}
	
	public UserDTO revise(UserDTO userDTO) {
		System.out.println("요긴 안 와?");
		sqlSession.update("myPage.revise", userDTO);
		System.out.println("값 : " + userDTO);
		return null;
	}
	
	public List<MyPageDTO> productList(){
		System.out.println("여긴 왔나??");
		return sqlSession.selectList("myPage.productList");
		
	}

}
