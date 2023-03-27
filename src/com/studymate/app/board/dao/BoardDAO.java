package com.studymate.app.board.dao;

import org.apache.ibatis.session.SqlSession;

import com.mybatis.config.MyBatisConfig;

public class BoardDAO {
	public SqlSession sqlSession;
	
	public BoardDAO(){
		sqlSession= MyBatisConfig.getSqlSessionFactory().openSession(true);
	}
}