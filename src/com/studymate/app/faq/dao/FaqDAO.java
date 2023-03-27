package com.studymate.app.faq.dao;

import org.apache.ibatis.session.SqlSession;

import com.mybatis.config.MyBatisConfig;

public class FaqDAO {
	public SqlSession sqlSession;
	
	public FaqDAO(){
		sqlSession= MyBatisConfig.getSqlSessionFactory().openSession(true);
	}
}
