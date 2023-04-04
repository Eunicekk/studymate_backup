package com.studymate.app.boardFile.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.mybatis.config.MyBatisConfig;
import com.studymate.app.boardFile.dto.BoardFileDTO;

public class BoardFileDAO{
	public SqlSession sqlSession;
	
	public BoardFileDAO() {
		sqlSession = MyBatisConfig.getSqlSessionFactory().openSession(true);
	}
	
	public void insert(BoardFileDTO fileDTO) {
		sqlSession.insert("file.insert", fileDTO);
	}
	
	public List<BoardFileDTO> select(int boardNumber) {
		return sqlSession.selectList("file.select", boardNumber);
	}
	
	public void delete(int boardNumber) {
		sqlSession.delete("file.delete", boardNumber);
	}
}
