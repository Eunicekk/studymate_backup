package com.studymate.app.studyGroupComment.dao;

import org.apache.ibatis.session.SqlSession;

import com.mybatis.config.MyBatisConfig;

public class StudyGroupCommentDAO {
	public SqlSession sqlSession;
	
	public StudyGroupCommentDAO(){
		sqlSession= MyBatisConfig.getSqlSessionFactory().openSession(true);
	}
}
