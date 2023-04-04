package com.studymate.app.myPage.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.mybatis.config.MyBatisConfig;
import com.studymate.app.board.dto.BoardDTO;
import com.studymate.app.member.dto.MemberDTO;
import com.studymate.app.myPage.vo.MyPageVO;

public class MyPageDAO {
public SqlSession sqlSession;
	
	public MyPageDAO(){
		sqlSession= MyBatisConfig.getSqlSessionFactory().openSession(true);
	}
	
	public MemberDTO selectMember(int memberNumber) {
		return sqlSession.selectOne("myPage.selectMember", memberNumber);
	}
	
	public void update(MemberDTO memberDTO) {
		sqlSession.update("myPage.update", memberDTO);
	}
	
	public List<BoardDTO> myPageSelect(MyPageVO mypageVO) {
		return sqlSession.selectList("myPage.myPageSelect",mypageVO);
	}
	
	public List<BoardDTO> myPageCommentCount(int boardNumber) {
		return sqlSession.selectList("myPage.myPageCommentCount",boardNumber);
	}
}
