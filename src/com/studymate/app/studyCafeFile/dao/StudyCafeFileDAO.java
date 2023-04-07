package com.studymate.app.studyCafeFile.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.mybatis.config.MyBatisConfig;
import com.studymate.app.studyCafeFile.dto.StudyCafeFileDTO;

public class StudyCafeFileDAO {
	public SqlSession sqlSession;
	
	public StudyCafeFileDAO(){
		sqlSession= MyBatisConfig.getSqlSessionFactory().openSession(true);
	}
	
}
