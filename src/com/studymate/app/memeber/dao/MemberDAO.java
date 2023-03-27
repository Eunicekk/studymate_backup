package com.studymate.app.memeber.dao;

import org.apache.ibatis.session.SqlSession;

import com.mybatis.config.MyBatisConfig;


public class MemberDAO {
	public SqlSession sqlSession;
	
	public MemberDAO() {
		sqlSession = MyBatisConfig.getSqlSessionFactory().openSession(true);
	}
}
