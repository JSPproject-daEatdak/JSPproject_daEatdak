package com.mybatis.config;

import java.io.IOException;
import java.io.Reader;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

public class MyBatisConfig {

	// sqlSession을 만들기 위한 세션 팩토리가 필요하다.
	private static SqlSessionFactory sqlSessionFactory;
	
	static {
		try {
			System.out.println("트라이문 시작");
			// 설정파일의 경로를 작성한다.
			String resource = "./com/mybatis/config/config.xml";
			System.out.println("리소스 이후");

			// 리소스 클래스를 이용하여 리소스를 읽어들여 reader객체로 만든다.
			Reader reader = Resources.getResourceAsReader(resource);
			System.out.println("리덜 이후");

			// 세션 팩토리 빌더에게 팩토리를 지어달라고 한다.
			sqlSessionFactory = new SqlSessionFactoryBuilder().build(reader);
			System.out.println("트라이문 끝");
		} catch (IOException e) {
			System.out.println("MyBatisConfig.java 초기화 문제 발생");
			e.printStackTrace();

		}

	}

	public static SqlSessionFactory getSqlSessionFactory() {
		System.out.println("여기 오류나는데");
		return sqlSessionFactory;
	}


}
