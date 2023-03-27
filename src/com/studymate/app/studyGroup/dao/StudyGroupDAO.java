package com.studymate.app.studyGroup.dao;

import org.apache.ibatis.session.SqlSession;

import com.mybatis.config.MyBatisConfig;

public class StudyGroupDAO {
	public SqlSession sqlSession;
	
	public StudyGroupDAO(){
		sqlSession= MyBatisConfig.getSqlSessionFactory().openSession(true);
	}
}
