package com.studymate.app.memberLikeStudyGroup.dao;

import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import com.mybatis.config.MyBatisConfig;
import com.studymate.app.studyGroup.dto.StudyGroupDTO;

public class MemberLikeStudyGroupDAO {
	public SqlSession sqlSession;
	
	public MemberLikeStudyGroupDAO(){
		sqlSession= MyBatisConfig.getSqlSessionFactory().openSession(true);
	}
	
	
// studyGroup 좋아요 여부 확인하기 위해서 멤버 넘버 가져오기 
	public int likeCheck(Map<String, Object> likeCheck) {
		
		 int result = 0;
		try {
			result = 0; 
			 result = sqlSession.selectOne("memberLikeStudyGroup.likeCheck",likeCheck);
		} catch (Exception e) {
			System.out.println("기존좋아요체크 정보가져오기오류남" + e);
			e.printStackTrace();
		}
	
		 return result;
	
	}
	
//	studyGroup main 페이지. 좋아요 누르기 
	public void insert(Map<String, Object> likeCheck) {
		 sqlSession.insert("memberLikeStudyGroup.insert", likeCheck);
	}
	
//	studyGroup main 페이지 좋아요 취소 
	public void delete(Map<String, Object> likeCheck) {
		sqlSession.delete("memberLikeStudyGroup.delete", likeCheck);
	}
	

}
