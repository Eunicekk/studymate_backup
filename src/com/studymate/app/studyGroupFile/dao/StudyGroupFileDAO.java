package com.studymate.app.studyGroupFile.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.mybatis.config.MyBatisConfig;
import com.studymate.app.studyGroupFile.dto.StudyGroupFileDTO;

public class StudyGroupFileDAO {
	public SqlSession sqlSession;
	
	public StudyGroupFileDAO(){
		sqlSession= MyBatisConfig.getSqlSessionFactory().openSession(true);
	}
	
	public void studyGroupFileInsert(StudyGroupFileDTO studyGroupFileDTO) {
		sqlSession.insert("studyGroupFile.studyGroupFileInsert", studyGroupFileDTO);
	}
	
	public List<StudyGroupFileDTO> studyGroupFileSelect(int studyGroupNumber ) {
		return sqlSession.selectList("studyGroupFile.studyGroupFileSelect", studyGroupNumber);
	}
}
