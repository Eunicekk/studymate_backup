package com.studymate.app.studyCafe.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import com.mybatis.config.MyBatisConfig;
import com.studymate.app.studyCafe.vo.StudyCafeVO;

public class StudyCafeDAO {
	public SqlSession sqlSession;
	
	public StudyCafeDAO(){
		sqlSession= MyBatisConfig.getSqlSessionFactory().openSession(true);
	}
	
	public List<StudyCafeVO> selectAll(Map<String, Integer> pageMap){
		return sqlSession.selectList("studyCafe.selectAll", pageMap);
	}
	
	public int getTotal() {
		return sqlSession.selectOne("studyCafe.getTotal");
	}
	
	public StudyCafeVO select(int studyCafeNumber) {
		return sqlSession.selectOne("studyCafe.select", studyCafeNumber);
	}
	
	public void updateReadCount(int studyCafeNumber) {
		sqlSession.update("studyCafe.updateReadCount", studyCafeNumber);
	}
	
	public List<StudyCafeVO> search(String studyCafeName){
		return sqlSession.selectList("studyCafe.search", studyCafeName);
	}
	
	public List<StudyCafeVO> arrayByScore(Map<String, Integer> pageMap){
		return sqlSession.selectList("studyCafe.arrayByScore", pageMap);
	}
	
	public List<StudyCafeVO> arrayByLike(Map<String, Integer> pageMap){
		return sqlSession.selectList("studyCafe.arrayByLike", pageMap);
	}
	
	public List<StudyCafeVO> arrayByRead(Map<String, Integer> pageMap){
		return sqlSession.selectList("studyCafe.arrayByRead", pageMap);
	}

}
