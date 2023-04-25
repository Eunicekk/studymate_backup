

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

	
	
	

	public MemberDTO login(MemberDTO memberDTO) {
		MemberDTO result=sqlSession.selectOne("member.login",memberDTO);
		System.out.println(result);
		return result;
	}



	public int checkPassword(MemberDTO memberDTO) {
		Integer result = sqlSession.selectOne("member.checkPassword", memberDTO);
		return result == null ? 0 : result;
	}

	
	public boolean checkId(String memberId) {
		return(Integer)sqlSession.selectOne("member.checkId",memberId)<1;
	}
	
	public int findAccount(MemberDTO memberDTO) {
		Integer result = sqlSession.selectOne("member.findAccount", memberDTO);
		return result == null ? 0 : result;
	}
	
	
	public void newPassword(MemberDTO memberDTO) {
	    sqlSession.update("member.newPassword", memberDTO);
	}
	//인자로 전달받은 MemberDTO 객체는 변경할 회원의 이메일 아이디 새로운 비밀번호가지고있음
	//sqlSession 객체를 사용하여 mapper파일에 정의된 sql쿼리를 실행하여 데이터베이스에서 회원정보 업데이트
	//따라서 newPassword() 메서드를 호출하면 회원 비밀번호가 새로운 비밀번호로 변경

		
	




	public String getMemberId(int memberNumber) {
		return sqlSession.selectOne("member.getMemberId", memberNumber);
	}
}
