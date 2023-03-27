package com.studymate.app.studyCafeFile.dao;

import org.apache.ibatis.session.SqlSession;

import com.mybatis.config.MyBatisConfig;

public class StudyCafeFileDAO {
	public SqlSession sqlSession;
	
	public StudyCafeFileDAO(){
		sqlSession= MyBatisConfig.getSqlSessionFactory().openSession(true);
	}
}
