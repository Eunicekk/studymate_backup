package com.studymate.app.boardComment.dao;

import org.apache.ibatis.session.SqlSession;

import com.mybatis.config.MyBatisConfig;

public class BoardCommentDAO{
	public SqlSession sqlSession;
	
	public BoardCommentDAO(){
		sqlSession= MyBatisConfig.getSqlSessionFactory().openSession(true);
	}
}