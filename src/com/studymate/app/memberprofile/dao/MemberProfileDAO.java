package com.studymate.app.memberprofile.dao;

import org.apache.ibatis.session.SqlSession;

import com.mybatis.config.MyBatisConfig;

public class MemberProfileDAO {
	public SqlSession sqlSession;
	
	public MemberProfileDAO(){
		sqlSession= MyBatisConfig.getSqlSessionFactory().openSession(true);
	}
}
