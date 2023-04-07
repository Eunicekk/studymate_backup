package com.studymate.app.studyGroupComment.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.mybatis.config.MyBatisConfig;
import com.studymate.app.studyGroupComment.dto.StudyGroupCommentDTO;
import com.studymate.app.studyGroupComment.vo.StudyGroupCommentVO;

public class StudyGroupCommentDAO {
	public SqlSession sqlSession;
	
	public StudyGroupCommentDAO(){
		sqlSession= MyBatisConfig.getSqlSessionFactory().openSession(true);
	}
	
	public List<StudyGroupCommentVO> selectAll (int studyGroupNumber) {
		return sqlSession.selectList("studyGroupComment.selectAll", studyGroupNumber);
	}
	
	public void insert(StudyGroupCommentDTO studyGroupCommentDTO) {
		sqlSession.insert("studyGroupComment.insert",studyGroupCommentDTO );
	}
	
	public void delete (int studyGroupCommentNumber ) {
		sqlSession.delete("studyGroupComment.delete",studyGroupCommentNumber );
	}
}
