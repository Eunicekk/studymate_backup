package com.studymate.app.studyGroup;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.studymate.app.Execute;
import com.studymate.app.studyGroup.dao.StudyGroupDAO;
import com.studymate.app.studyGroup.vo.StudyGroupVO;

public class StudyGroupMainOkController implements Execute {

	@Override
	public void execute(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// 여기서 페이징 처리하기. 
		// 일단 앞전 dao와 vo를 사용하기 위해 불러오기. 
		
		StudyGroupDAO studyGroupDAO = new StudyGroupDAO();
		// studyGroupDAO.selectAll();
		// DAO 안애 있는 selectAll을 사용할건데 셀렉트 올의 반환 타입은 List 이므로 
		// List 에다가 저장해준다. 
		// selectAll을 해서 VO로 저장해주고 studyGroups라는 이름도 줌 
//		StudyGroupVO studyGroupVO = new StudyGroupVO(); 
//		
		
		List<StudyGroupVO> studyGroups = studyGroupDAO.selectAll();	
		System.out.println(studyGroups);
		req.setAttribute("studyGroups", studyGroups);
		
		// 파란글씨 이름 지어주고 VO가 저장된 리스트들을 넣어줌. 
		
		req.getRequestDispatcher("/app/group/studyGroupMain.jsp").forward(req, resp);
		
		// 여기서 jsp로 간다. 
		
		
	}

}
