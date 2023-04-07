package com.studymate.app.myPage.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import com.mybatis.config.MyBatisConfig;
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
	
	public void delete(int memberNumber) {
		sqlSession.delete("myPage.deleteMember", memberNumber);
	}
	
	public int getTotal() {
		return sqlSession.selectOne("myPage.getTotal");
	}
	
	public List<MyPageVO> selectAll(Map<String, Integer> pageMap) {
		return sqlSession.selectList("myPage.selectAll", pageMap);
	}

	public List<MyPageVO> myPortfolio(int memberNumber, Map<String, Integer> pageMap) {
		return sqlSession.selectList("myPage.myPortfolio", memberNumber);
	}
	
	public List<MyPageVO> myLikeCafe(int memberNumber){
		return sqlSession.selectList("myPage.myLikeCafe", memberNumber);
	}
	
	public List<MyPageVO> myReservation(int memberNumber){
		return sqlSession.selectList("myPage.myReservation", memberNumber);
	}
//	public List<MyPageVO> myPortfolio(int memberNumber, Map<String, Integer> pageMap) {
//		return sqlSession.selectList("myPage.myPortfolio", memberNumber); // MyBatis 매퍼 호출
//	}
	
	
//	public List<BoardDTO> myPageSelect(MyPageVO mypageVO) {
//		return sqlSession.selectList("myPage.myPageSelect",mypageVO);
//	}
//	
//	public List<BoardDTO> myPageCommentCount(int boardNumber) {
//		return sqlSession.selectList("myPage.myPageCommentCount",boardNumber);
//	}
}
