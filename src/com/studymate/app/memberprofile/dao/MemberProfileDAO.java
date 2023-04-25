package com.studymate.app.memberprofile.dao;

import org.apache.ibatis.session.SqlSession;

import com.mybatis.config.MyBatisConfig;
import com.studymate.app.memberprofile.dto.MemberProfileDTO;

public class MemberProfileDAO {
	public SqlSession sqlSession;
	
	public MemberProfileDAO(){
		sqlSession= MyBatisConfig.getSqlSessionFactory().openSession(true);
	}
	
	public void insert(MemberProfileDTO memberProfileDTO) {
		
	}
}
