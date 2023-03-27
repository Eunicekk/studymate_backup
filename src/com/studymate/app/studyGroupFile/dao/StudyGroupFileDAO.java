package com.studymate.app.studyGroupFile.dao;

import org.apache.ibatis.session.SqlSession;

import com.mybatis.config.MyBatisConfig;

public class StudyGroupFileDAO {
	public SqlSession sqlSession;
	
	public StudyGroupFileDAO(){
		sqlSession= MyBatisConfig.getSqlSessionFactory().openSession(true);
	}
}
