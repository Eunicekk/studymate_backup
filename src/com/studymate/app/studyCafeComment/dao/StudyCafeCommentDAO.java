package com.studymate.app.studyCafeComment.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.mybatis.config.MyBatisConfig;
import com.studymate.app.studyCafeComment.dto.StudyCafeCommentDTO;
import com.studymate.app.studyCafeComment.vo.StudyCafeCommentVO;

public class StudyCafeCommentDAO {
	public SqlSession sqlSession;
	
	public StudyCafeCommentDAO(){
		sqlSession= MyBatisConfig.getSqlSessionFactory().openSession(true);
	}
	
	public List<StudyCafeCommentVO> selectAll(int studyCafeNumber){
		return sqlSession.selectList("studyCafeComment.selectAll", studyCafeNumber);
	}
	
	public void insert(StudyCafeCommentDTO studyCafeCommentDTO) {
		sqlSession.insert("studyCafeComment.insert", studyCafeCommentDTO);
	}
	
	public List<StudyCafeCommentVO> arrayByScoreAsc(int studyCafeNumber){
		return sqlSession.selectList("studyCafeComment.arrayByScoreAsc", studyCafeNumber);
	}
	
	public List<StudyCafeCommentVO> arrayByScoreDesc(int studyCafeNumber){
		return sqlSession.selectList("studyCafeComment.arrayByScoreDesc", studyCafeNumber);
	}
	
}
