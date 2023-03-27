package com.studymate.app.studyGroupLeader.dao;

import org.apache.ibatis.session.SqlSession;

import com.mybatis.config.MyBatisConfig;

public class StudyGroupLeaderDAO {
	public SqlSession sqlSession;
	
	public StudyGroupLeaderDAO(){
		sqlSession= MyBatisConfig.getSqlSessionFactory().openSession(true);
	}
}
