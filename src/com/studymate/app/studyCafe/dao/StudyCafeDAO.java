package com.studymate.app.studyCafe.dao;

import org.apache.ibatis.session.SqlSession;

import com.mybatis.config.MyBatisConfig;

public class StudyCafeDAO {
	public SqlSession sqlSession;
	
	public StudyCafeDAO(){
		sqlSession= MyBatisConfig.getSqlSessionFactory().openSession(true);
	}
}
