package com.studymate.app.admin.dao;

import org.apache.ibatis.session.SqlSession;

import com.mybatis.config.MyBatisConfig;

public class AdminDAO {
	public SqlSession sqlSession;
	
	public AdminDAO(){
		sqlSession= MyBatisConfig.getSqlSessionFactory().openSession(true);
	}
}
