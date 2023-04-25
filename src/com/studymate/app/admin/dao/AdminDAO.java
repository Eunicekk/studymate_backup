package com.studymate.app.admin.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import com.mybatis.config.MyBatisConfig;
import com.studymate.app.admin.board.vo.AdminBoardVO;
import com.studymate.app.admin.cafe.vo.adminCafeVO;
import com.studymate.app.admin.dto.AdminDTO;
import com.studymate.app.admin.group.vo.AdminGroupVO;
import com.studymate.app.admin.search.vo.SearchVO;
import com.studymate.app.faq.dto.FaqDTO;
import com.studymate.app.member.dto.MemberDTO;
import com.studymate.app.studyCafe.dto.StudyCafeDTO;
import com.studymate.app.studyCafeFile.dto.StudyCafeFileDTO;

public class AdminDAO {
	public SqlSession sqlSession;
	
	public AdminDAO(){
		sqlSession= MyBatisConfig.getSqlSessionFactory().openSession(true);
	}
	
	public String adminLogin(AdminDTO adminDTO) {
		return sqlSession.selectOne("admin.adminLogin",adminDTO);
	}
	
	public List<MemberDTO> adminMemberCheck(Map<String,Integer> pageMap) {
		 return sqlSession.selectList("admin.memberSelectAll", pageMap);
	}
	public List<MemberDTO> adminMemberCheckDesc(Map<String,Integer> pageMap) {
		return sqlSession.selectList("admin.memberSelectAllDesc", pageMap);
	}
	
	public int getTotal() {
		return sqlSession.selectOne("admin.getTotal");
	}
	
	public void memberDelete(int memberNumber) {
		sqlSession.delete("admin.memberDelete",memberNumber);
	}
	
	public int memberSearchTotal(String memberId) {
		return sqlSession.selectOne("admin.memberSearchTotal",memberId);
	}
	
	public List<MemberDTO> MemberSearch(SearchVO searchText) {
		return sqlSession.selectList("admin.memberSearch",searchText);
	}
	
	
	//cafe 
	public void cafeInsert(StudyCafeDTO studyCafeDTO) {
		sqlSession.insert("admin.cafeInsert",studyCafeDTO);
	}
	public void cafeFileInsert(StudyCafeFileDTO studyCafeFileDTO) {
		sqlSession.insert("admin.cafeFileInsert",studyCafeFileDTO);
	}
	
	public int getSequence() {
		return sqlSession.selectOne("admin.getSequence");
	}
	
	
	
//	카페 order
	public List<adminCafeVO> cafeList(Map<String,Integer> pageMap){
		return sqlSession.selectList("admin.cafeList",pageMap);
	}
	
	public List<adminCafeVO> cafeCommentNumber(Map<String,Integer> pageMap){
		return sqlSession.selectList("admin.cafeCommentNumber",pageMap);
	}
	
	public List<adminCafeVO> cafeLikeDesc(Map<String,Integer> pageMap){
		return sqlSession.selectList("admin.cafeLikeDesc",pageMap);
	}
	
	//cafe 검색
	
	public int cafeSearchTotal(String cafeName) {
		return sqlSession.selectOne("admin.cafeSearchTotal",cafeName);
	}
	
	public List<adminCafeVO> cafeSearch(SearchVO searchText) {
		return sqlSession.selectList("admin.cafeSearch",searchText);
	}
	
	
	public int cafeTotal() {
		return sqlSession.selectOne("admin.cafeTotal");
		
	}
	
	public List<StudyCafeFileDTO> cafeFileSelect(int studyCafeNumber){
		return sqlSession.selectList("admin.cafeFileSelect",studyCafeNumber);
	}
	
	public void cafeDelete(int studyCafeNumber) {
		sqlSession.delete("admin.cafeDelete",studyCafeNumber);
	}
	
//	포트폴리오
	public List<AdminBoardVO> boardList(Map<String,Integer> pageMap) {
		return sqlSession.selectList("admin.boardList",pageMap);
	}
	
	public List<AdminBoardVO> boardListDesc(Map<String,Integer> pageMap) {
		return sqlSession.selectList("admin.boardListDesc",pageMap);
	}
	
	public int boardTotal() {
		return sqlSession.selectOne("admin.boardTotal");
	}
	
	public void boardDelete(int boardNumber) {
		sqlSession.delete("admin.boardDelete",boardNumber);
	}
	
	public List<AdminBoardVO> boardSearch(String memberId) {
		return sqlSession.selectList("admin.boardSearch",memberId);
		
	}
	
	public int boardSearchTotal(String memberId) {
		return sqlSession.selectOne("admin.boardSearchTotal",memberId);
	}
	
	public List<AdminGroupVO> boardSearch(SearchVO searchText) {
		return sqlSession.selectList("admin.boardSearch",searchText);
	}

	

	
	//스터디 그룹
	public List<AdminGroupVO> groupList(Map<String,Integer> pageMap) {
		return sqlSession.selectList("admin.groupList",pageMap);
	}
	
	public List<AdminGroupVO> groupListDate(Map<String,Integer> pageMap) {
		return sqlSession.selectList("admin.groupListDate",pageMap);
	}
	
	public int groupTotal() {
		return sqlSession.selectOne("admin.groupTotal");
	}
	
	public void groupDelete(int studyGroupNumber) {
		sqlSession.delete("admin.groupDelete",studyGroupNumber);
	}
	
	public List<AdminGroupVO> listSearch(String listText){
		return sqlSession.selectList("admin.listSearch",listText);
	}
	
	//그룹 검색 페이징
	public int groupSearchTotal(String memberNickName) {
		return sqlSession.selectOne("admin.groupSearchTotal",memberNickName);
	}
	
	public List<AdminGroupVO> groupSearch(SearchVO searchText) {
		return sqlSession.selectList("admin.groupSearch",searchText);
	}
	
	
	
	//FAQ
	public List<FaqDTO> faqList(Map<String,Integer> pageMap) {
		return sqlSession.selectList("admin.faqList",pageMap);
	}
	
	public int faqTotal() {
		return sqlSession.selectOne("admin.faqTotal");
	}
	
	public void faqWrite(FaqDTO faqDTO) {
		sqlSession.insert("admin.faqWrite", faqDTO);
	}
	
	public int adminNumber(String adminNickname) {
		return sqlSession.selectOne("admin.adminNumber",adminNickname);
	}
	
	public List<FaqDTO> faqSelect(int faqNumber) {
		return sqlSession.selectList("admin.faqSelect",faqNumber);
	}
	
	public void faqUpdate(FaqDTO faqDTO) {
		sqlSession.update("admin.faqUpdate",faqDTO);
	}
	
	public void faqDelete(int faqNumber) {
		sqlSession.delete("admin.faqDelete",faqNumber);
	}
	//차트 board
	public List<Map<String, Integer>> boardChartDay() {
	    return sqlSession.selectList("admin.boardChartDay");
	}
	
	public List<Map<String, Integer>> boardChartMonth() {
		return sqlSession.selectList("admin.boardChartMonth");
	}
	
	//그룹 차트
	public List<Map<String, Integer>> groupChartDay() {
	    return sqlSession.selectList("admin.groupChartDay");
	}
	
	public List<Map<String, Integer>> groupChartMonth() {
		return sqlSession.selectList("admin.groupChartMonth");
	}
	//카페 차트
	public List<Map<String, Integer>> cafeChartDay() {
	    return sqlSession.selectList("admin.cafeChartDay");
	}
	
	public List<Map<String, Integer>> cafeChartMonth() {
		return sqlSession.selectList("admin.cafeChartMonth");
	}
	
	//멤버 남자 차트
	public List<Map<String, Integer>> memberChartM() {
	    return sqlSession.selectList("admin.memberChartM");
	}
	
	public List<Map<String, Integer>> memberChartMonthM() {
		return sqlSession.selectList("admin.memberChartMonthM");
	}
	
	//맴버 여자 차트
	public List<Map<String, Integer>> memberChartF() {
		return sqlSession.selectList("admin.memberChartF");
	}
	
	public List<Map<String, Integer>> memberChartMonthF() {
		return sqlSession.selectList("admin.memberChartMonthF");
	}
}
