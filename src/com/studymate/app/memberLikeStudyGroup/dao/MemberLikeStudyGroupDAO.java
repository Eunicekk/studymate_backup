package com.studymate.app.memberLikeStudyGroup.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import com.mybatis.config.MyBatisConfig;
import com.studymate.app.memberLikeStudyGroup.dto.MemberLikeStudyGroupDTO;
import com.studymate.app.studyGroup.dto.StudyGroupDTO;

public class MemberLikeStudyGroupDAO {
	public SqlSession sqlSession;
	
	public MemberLikeStudyGroupDAO(){
		sqlSession= MyBatisConfig.getSqlSessionFactory().openSession(true);
	}
	
	
	public int likeCheck(MemberLikeStudyGroupDTO memberLikeStudyGroupDTO) {
		return sqlSession.selectOne("memberLikeStudyGroup.likeCheck", memberLikeStudyGroupDTO );
	}
	
//	studyGroup main 페이지. 좋아요 누르기 
	public void insert(MemberLikeStudyGroupDTO memberLikeStudyGroupDTO)  {
		 sqlSession.insert("memberLikeStudyGroup.insert", memberLikeStudyGroupDTO);
	}
	
//	studyGroup main 페이지 좋아요 취소 
	public void delete(MemberLikeStudyGroupDTO memberLikeStudyGroupDTO)  {
		sqlSession.delete("memberLikeStudyGroup.delete", memberLikeStudyGroupDTO);
	}
	
//	좋아요 클릭 후 좋아요 수 재업로드 
	public int likeCnt( int studyGroupNumber) {
		return sqlSession.selectOne("memberLikeStudyGroup.likeCnt", studyGroupNumber);
	}
	
	// 멤버 넘버 비교해서 내가 좋아요한 게시글 좋아요 띄우기. 
	public List<Integer> haveLike(int memberNumber) {
		return sqlSession.selectList("memberLikeStudyGroup.haveLike",memberNumber );
	}

}
