package com.studymate.app.studyCafeComment.dao;

import org.apache.ibatis.session.SqlSession;

import com.mybatis.config.MyBatisConfig;

public class StudyCafeCommentDAO {
	public SqlSession sqlSession;
	
	public StudyCafeCommentDAO(){
		sqlSession= MyBatisConfig.getSqlSessionFactory().openSession(true);
	}
}
