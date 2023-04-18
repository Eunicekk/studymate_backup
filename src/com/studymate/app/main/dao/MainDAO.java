package com.studymate.app.main.dao;

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
import com.studymate.app.studyCafe.vo.StudyCafeVO;
import com.studymate.app.studyCafeFile.dto.StudyCafeFileDTO;

public class MainDAO {
	public SqlSession sqlSession;
	
	public MainDAO(){
		sqlSession= MyBatisConfig.getSqlSessionFactory().openSession(true);
	}
	
	public List<adminCafeVO> selectAll(Map<String, Integer> pageMap){
		return sqlSession.selectList("Main.cafeSelectAll", pageMap);
	}
	
	public int getTotal() {
		return sqlSession.selectOne("studyCafe.getTotal");
	}
}
