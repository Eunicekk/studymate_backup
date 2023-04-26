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
		sqlSession.insert("memberProfile.insert", memberProfileDTO);
	}
	
	public int select(int memberNumber) {
		return sqlSession.selectOne("memberProfile.select", memberNumber);
	}
	
	public void update(MemberProfileDTO memberProfileDTO) {
		sqlSession.update("memberProfile.update", memberProfileDTO);
	}
}
