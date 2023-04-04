package com.studymate.app.member.dao;

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
	public String getMemberId(int memberNumber) {
		return sqlSession.selectOne("member.getMemberId", memberNumber);
	}
}
