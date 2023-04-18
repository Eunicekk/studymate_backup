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
	
	public int getTotal(int memberNumber) {
		return sqlSession.selectOne("myPage.getTotal", memberNumber);
	}
	
//	public List<MyPageVO> selectPortfolio(Map<String, Integer> pageMap) {
//		return sqlSession.selectList("myPage.selectPortfolio", pageMap);
//	}

	public List<MyPageVO> myPortfolio(Map<String, Integer> pageMap) {
		return sqlSession.selectList("myPage.myPortfolio", pageMap);
	}
	
	public List<MyPageVO> myLikeCafe(int memberNumber){
		return sqlSession.selectList("myPage.myLikeCafe", memberNumber);
	}
	
	public List<MyPageVO> myReservation(int memberNumber){
		return sqlSession.selectList("myPage.myReservation", memberNumber);
	}
	public List<MyPageVO> myUsaDetails(int memberNumber){
		return sqlSession.selectList("myPage.myUsaDetails", memberNumber);
	}
	
	public List<MyPageVO> myLeaderGroup(int memberNumber){
		return sqlSession.selectList("myPage.myLeaderGroup", memberNumber);
	}
	public List<MyPageVO> myInterestGroup(int memberNumber){
		return sqlSession.selectList("myPage.myInterestGroup", memberNumber);
	}
	public List<MyPageVO> myJoinGroup(int memberNumber){
		return sqlSession.selectList("myPage.myJoinGroup", memberNumber);
	}
	public List<MyPageVO> myEndGroup(int memberNumber){
		return sqlSession.selectList("myPage.myEndGroup", memberNumber);
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
