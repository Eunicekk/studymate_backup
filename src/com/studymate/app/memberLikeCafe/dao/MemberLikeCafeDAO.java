package com.studymate.app.memberLikeCafe.dao;

import org.apache.ibatis.session.SqlSession;

import com.mybatis.config.MyBatisConfig;

public class MemberLikeCafeDAO {
	public SqlSession sqlSession;
	
	public MemberLikeCafeDAO(){
		sqlSession= MyBatisConfig.getSqlSessionFactory().openSession(true);
	}
}
