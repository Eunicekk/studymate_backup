package com.studymate.app.member.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.mybatis.config.MyBatisConfig;
import com.studymate.app.member.dto.MemberDTO;

public class MemberDAO {
	public SqlSession sqlSession;

	public MemberDAO() {
		sqlSession = MyBatisConfig.getSqlSessionFactory().openSession(true);
	}

	public void join(MemberDTO memberDTO) {
		sqlSession.insert("member.join", memberDTO);
		// member 매퍼에 있는 join 쿼리 실행할거야 그리고 매개변수 넘겨줄값은 memberDTO야
	}

	public int login(MemberDTO memberDTO) {
		int result=sqlSession.selectOne("member.login",memberDTO);
		System.out.println(result);
		return result;
	}

	public MemberDTO findAccount(MemberDTO memberDTO) {
		MemberDTO result=sqlSession.selectOne("member.findAccount",memberDTO);
		return result;
	}
	
	public boolean checkId(String memberId) {
		return(Integer)sqlSession.selectOne("member.checkId",memberId)<1;
	}

	


	
}
