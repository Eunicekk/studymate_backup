package com.studymate.app.boardFile.dao;

import org.apache.ibatis.session.SqlSession;

import com.mybatis.config.MyBatisConfig;

public class BoardFileDAO{
	public SqlSession sqlSession;
	
	public BoardFileDAO(){
		sqlSession= MyBatisConfig.getSqlSessionFactory().openSession(true);
	}
}
