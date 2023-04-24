package com.studymate.app.studyGroup.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import com.mybatis.config.MyBatisConfig;
import com.studymate.app.studyCafe.vo.StudyCafeVO;
import com.studymate.app.studyGroup.dto.StudyGroupDTO;
import com.studymate.app.studyGroup.vo.StudyGroupVO;
import com.studymate.app.studyGroupSearch.vo.StudyGroupSearchVO;

public class StudyGroupDAO {
	public SqlSession sqlSession;
	
	public StudyGroupDAO(){
		sqlSession= MyBatisConfig.getSqlSessionFactory().openSession(true);
	}
	
	public List<StudyGroupVO> selectAll(Map <String, Integer> pageMap) {
		return sqlSession.selectList("studyGroup.selectAll", pageMap);
//		return sqlSession.selectList("studyGroup.selectAll");
		// mapper에 studyGroup이라는 namespace를 가진, 쿼리문모음집에서, selectAll을 실행
		// main Okcontroller로 간다
	}
	
//	 게시글 전체 갯수 가져오기 - 페이징 처리 하기 위해서
	public int getTotal() {
		return sqlSession.selectOne("studyGroup.getTotal");
	}
	
//	StudyGroup read 페이지 내용 불러오기. 
	public StudyGroupVO select (int studyGroupNumber) {
		return sqlSession.selectOne("studyGroup.select", studyGroupNumber);
	}

//	study Group read count 조회수 
	public void updateReadCount(int studyGroupNumber) {
		sqlSession.update("studyGroup.updateReadCount", studyGroupNumber);
	}
	
//	메인 - 조회수 정렬 
	public List<StudyGroupVO> arrayReadCount(Map <String, Integer> pageMap) {
		return sqlSession.selectList("studyGroup.arrayReadCount", pageMap);
	}
	
//	메인 - 좋아요 정렬 
	public List<StudyGroupVO> arrayLikeCount(Map <String, Integer> pageMap) {
		return sqlSession.selectList("studyGroup.arrayLikeCount", pageMap);
	}
	
//	메인 - 댓글수 정렬 
	public List<StudyGroupVO> arrayCommentCount(Map <String, Integer> pageMap) {
		return sqlSession.selectList("studyGroup.arrayCommentCount", pageMap);
	}
	
//	메인 - 검색기능 
	public List<StudyGroupVO> search(String searchInput){
		return sqlSession.selectList("studyGroup.search", searchInput);
	}
	
	
////	메인 - 검색기능 / 진행방식 (온라인오프라인) 
//	public List<StudyGroupVO> searchOnline (Map <String, Integer> pageMap) {
//		return sqlSession.selectList("studyGroup.searchOnline", pageMap );
//	}
//	
////	메인 - 검색기능 / 모집분야 (어학 등등 7개) 
//	public List<StudyGroupVO> searchField (Map <String, Integer> pageMap) {
//		return sqlSession.selectList("studyGroup.searchField", pageMap );
//	}
	
//	동적 쿼리 사용한 검색 기능 최종 
	public List<StudyGroupVO> searchOption (StudyGroupSearchVO studyGroupSearchVO) {
		return sqlSession.selectList("studyGroup.searchOption", studyGroupSearchVO );
	}
	
	
//	게시글 삭제 (스터디그룹) 
	public void delete(int studyGroupNumber) {
		sqlSession.delete("studyGroup.delete", studyGroupNumber);
	}
	
//	게시글 수정 (스터디그룹) 
	public void update(StudyGroupDTO studyGroupDTO) {
		sqlSession.update("studyGroup.update", studyGroupDTO);
	}
	
	
//	스터디그룹 작성 
	public void insert(StudyGroupDTO studyGroupDTO) {
		sqlSession.insert("studyGroup.insert",studyGroupDTO );
	}
	
	// 시퀀스 - 파일 저장용 
	public int getSequence() {
		return sqlSession.selectOne("studyGroup.getSequence");
	}
	
}
