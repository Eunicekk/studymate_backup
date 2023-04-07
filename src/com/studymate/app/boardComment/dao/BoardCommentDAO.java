package com.studymate.app.boardComment.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.mybatis.config.MyBatisConfig;
import com.studymate.app.boardComment.dto.BoardCommentDTO;
import com.studymate.app.boardComment.vo.BoardCommentVO;

public class BoardCommentDAO{
	public SqlSession sqlSession;
	
	public BoardCommentDAO(){
		sqlSession= MyBatisConfig.getSqlSessionFactory().openSession(true);
	}
	
	public List<BoardCommentVO> selectAll(int boardNumber) {
		return sqlSession.selectList("boardComment.selectAll", boardNumber);
	}
	
	public void insert(BoardCommentDTO boardCommentDTO) {
		sqlSession.insert("boardComment.insert", boardCommentDTO);
	}
	
	public void delete(int boardCommentNumber) {
		sqlSession.delete("boardComment.delete", boardCommentNumber);
	}
	
	public void update(BoardCommentDTO boardCommentDTO) {
		sqlSession.update("reply.update", boardCommentDTO);
	}
}