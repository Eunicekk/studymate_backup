package com.studymate.app.reservation.dao;

import org.apache.ibatis.session.SqlSession;

import com.mybatis.config.MyBatisConfig;

public class ReservationDAO {
	public SqlSession sqlSession;
	
	public ReservationDAO(){
		sqlSession= MyBatisConfig.getSqlSessionFactory().openSession(true);
	}
}
