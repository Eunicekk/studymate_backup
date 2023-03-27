package com.studymate.app.memberLikeStudyGroup.dao;

import org.apache.ibatis.session.SqlSession;

import com.mybatis.config.MyBatisConfig;

public class MemberLikeStudyGroupDAO {
	public SqlSession sqlSession;
	
	public MemberLikeStudyGroupDAO(){
		sqlSession= MyBatisConfig.getSqlSessionFactory().openSession(true);
	}
}
