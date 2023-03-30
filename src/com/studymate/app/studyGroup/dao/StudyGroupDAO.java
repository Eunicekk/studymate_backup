package com.studymate.app.studyGroup.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.mybatis.config.MyBatisConfig;
import com.studymate.app.studyGroup.vo.StudyGroupVO;

public class StudyGroupDAO {
	public SqlSession sqlSession;
	
	public StudyGroupDAO(){
		sqlSession= MyBatisConfig.getSqlSessionFactory().openSession(true);
	}
	
	public List<StudyGroupVO> selectAll() {
		return sqlSession.selectList("studyGroup.selectAll");
//		return sqlSession.selectList("studyGroup.selectAll");
		// mapper에 studyGroup이라는 namespace를 가진, 쿼리문모음집에서, selectAll을 실행
		// main Okcontroller로 간다
	}
}
