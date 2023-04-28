package com.studymate.app.myPage.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import com.mybatis.config.MyBatisConfig;
import com.studymate.app.member.dto.MemberDTO;
import com.studymate.app.myPage.vo.MyCafeVO;
import com.studymate.app.myPage.vo.MyGroupVO;
import com.studymate.app.myPage.vo.MyPageVO;
import com.studymate.app.myPage.vo.MyProfileVO;
import com.studymate.app.myPage.vo.MyReserveVO;

public class MyPageDAO {
	public SqlSession sqlSession;

	public MyPageDAO() {
		sqlSession = MyBatisConfig.getSqlSessionFactory().openSession(true);
	}

	public MyProfileVO selectMember(int memberNumber) {
		return sqlSession.selectOne("myPage.selectMember", memberNumber);
	}

	public void update(MyProfileVO memberNumber) {
		sqlSession.update("myPage.update", memberNumber);
	}

	public void delete(int memberNumber) {
		sqlSession.delete("myPage.deleteMember", memberNumber);
	}

	public List<MyPageVO> myPortfolio(Map<String, Integer> pageMap) {
		return sqlSession.selectList("myPage.myPortfolio", pageMap);
	}

	public int getTotal(int memberNumber) {
		return sqlSession.selectOne("myPage.getTotal", memberNumber);
	}

	public List<MyCafeVO> myLikeCafe(Map<String, Integer> pageMap) {
		return sqlSession.selectList("myPage.myLikeCafe", pageMap);
	}

	public int likeCafeTotal(int memberNumber) {
		return sqlSession.selectOne("myPage.likeCafeTotal", memberNumber);
	}
	
	public void likeCafeDelete(int studyCafeNumber) {
		sqlSession.delete("myPage.likeCafeDelete", studyCafeNumber);
	}

	public List<MyReserveVO> myReservation(Map<String, Integer> pageMap) {
		return sqlSession.selectList("myPage.myReservation", pageMap);
	}
	
	public int reservationTotal(int memberNumber) {
		return sqlSession.selectOne("myPage.reservationTotal", memberNumber);
	}
	
	public void reservationDelete(int reservationNumber) {
		sqlSession.delete("myPage.reservationDelete", reservationNumber);
	}

	public List<MyReserveVO> myUsaDetails(Map<String, Integer> pageMap) {
		return sqlSession.selectList("myPage.myUsaDetails", pageMap);
	}
	
	public int usageDatailsTotal(int memberNumber) {
		return sqlSession.selectOne("myPage.usageDatailsTotal", memberNumber);
	}

	public void usageDatailsDelete(int reservationNumber) {
		sqlSession.delete("myPage.usageDatailsDelete", reservationNumber);
	}
	
	public List<MyGroupVO> myLeaderGroup(Map<String, Integer> pageMap) {
		return sqlSession.selectList("myPage.myLeaderGroup", pageMap);
	}

	public int leaderGroupTotal(int memberNumber) {
		return sqlSession.selectOne("myPage.leaderGroupTotal", memberNumber);
	}

	public void leaderGroupDelete(int studyGroupNumber) {
		sqlSession.delete("myPage.leaderGroupDelete", studyGroupNumber);
	}
	
	public List<MyGroupVO> myInterestGroup(Map<String, Integer> pageMap) {
		return sqlSession.selectList("myPage.myInterestGroup", pageMap);
	}
	
	public int interestGroupTotal(int memberNumber) {
		return sqlSession.selectOne("myPage.interestGroupTotal", memberNumber);
	}
	
	public void interestGroupDelete(int studyGroupNumber) {
		sqlSession.delete("myPage.interestGroupDelete", studyGroupNumber);
	}

	public List<MyGroupVO> myJoinGroup(Map<String, Integer> pageMap) {
		return sqlSession.selectList("myPage.myJoinGroup", pageMap);
	}

	public int myJoinGroupTotal(int memberNumber) {
		return sqlSession.selectOne("myPage.myJoinGroupTotal", memberNumber);
	}
	
	public void myJoinGroupDelete(int studyGroupNumber) {
		sqlSession.delete("myPage.myJoinGroupDelete", studyGroupNumber);
	}
}
