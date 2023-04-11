package com.studymate.app.memberLikeCafe.dao;

import org.apache.ibatis.session.SqlSession;

import com.mybatis.config.MyBatisConfig;
import com.studymate.app.memberLikeCafe.dto.MemberLikeCafeDTO;

public class MemberLikeCafeDAO {
	public SqlSession sqlSession;
	
	public MemberLikeCafeDAO(){
		sqlSession= MyBatisConfig.getSqlSessionFactory().openSession(true);
	}
	
	public int checkLike(MemberLikeCafeDTO memberLikeCafeDTO) {
		return sqlSession.selectOne("memberLikeCafe.checkLike", memberLikeCafeDTO);
	}
	
	public void plusLike(MemberLikeCafeDTO memberLikeCafeDTO) {
		sqlSession.insert("memberLikeCafe.plusLike", memberLikeCafeDTO);
	}
	
	public void minusLike(MemberLikeCafeDTO memberLikeCafeDTO) {
		sqlSession.delete("memberLikeCafe.minusLike", memberLikeCafeDTO);
	}
	
	public int countLike(int studyCafeNumber) {
		return sqlSession.selectOne("memberLikeCafe.countLike", studyCafeNumber);
	}
	
}
