package com.studymate.app.admin.dao;

import org.apache.ibatis.session.SqlSession;

import com.mybatis.config.MyBatisConfig;
import com.studymate.app.admin.dto.AdminDTO;

public class AdminDAO {
	public SqlSession sqlSession;
	
	public AdminDAO(){
		sqlSession= MyBatisConfig.getSqlSessionFactory().openSession(true);
	}
	
	public String adminLogin(AdminDTO adminDTO) {
		return sqlSession.selectOne("admin.adminLogin",adminDTO);
	}
}
