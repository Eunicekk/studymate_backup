package com.studymate.app.reservation.dao;

import org.apache.ibatis.session.SqlSession;

import com.mybatis.config.MyBatisConfig;
import com.studymate.app.reservation.dto.ReservationDTO;

public class ReservationDAO {
	public SqlSession sqlSession;
	
	public ReservationDAO(){
		sqlSession= MyBatisConfig.getSqlSessionFactory().openSession(true);
	}
	
	public void insert(ReservationDTO reservationDTO) {
		sqlSession.insert("reservation.insert", reservationDTO);
	}
}
