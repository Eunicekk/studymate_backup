package com.studymate.app.studyGroup.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import com.mybatis.config.MyBatisConfig;
import com.studymate.app.studyGroup.vo.StudyGroupVO;

public class StudyGroupDAO {
	public SqlSession sqlSession;
	
	public StudyGroupDAO(){
		sqlSession= MyBatisConfig.getSqlSessionFactory().openSession(true);
	}
	
	public List<StudyGroupVO> selectAll(Map <String, Integer> pageMap) {
		return sqlSession.selectList("studyGroup.selectAll", pageMap);
//		return sqlSession.selectList("studyGroup.selectAll");
		// mapper에 studyGroup이라는 namespace를 가진, 쿼리문모음집에서, selectAll을 실행
		// main Okcontroller로 간다
		
	}
	
//	 게시글 전체 갯수 가져오기 - 페이징 처리 하기 위해서
	public int getTotal() {
		return sqlSession.selectOne("studyGroup.getTotal");
	}
	
//	StudyGroup read 페이지 내용 불러오기. 
	public StudyGroupVO select (int studyGroupNumber) {
		return sqlSession.selectOne("studyGroup.select", studyGroupNumber);
	}
	
	
}
