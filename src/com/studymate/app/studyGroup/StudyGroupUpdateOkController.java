package com.studymate.app.studyGroup;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import com.studymate.app.Execute;
import com.studymate.app.studyGroup.dao.StudyGroupDAO;
import com.studymate.app.studyGroup.dto.StudyGroupDTO;

public class StudyGroupUpdateOkController implements Execute {

	@Override
	public void execute(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		StudyGroupDAO studyGroupDAO = new StudyGroupDAO(); 
		StudyGroupDTO studyGroupDTO = new StudyGroupDTO();
		
		System.out.println("write Ok 컨트롤러 탔음");
		System.out.println(req.getParameter("memberNumber"));
		System.out.println(req.getParameter("studyGroupField"));
		System.out.println(req.getParameter("studyGroupCapacity"));
		System.out.println(req.getParameter("studyGroupOnline"));
		System.out.println(req.getParameter("studyGroupDuration"));
		System.out.println(req.getParameter("studyGroupContact"));
		System.out.println(req.getParameter("studyGroupContactAddress"));
		System.out.println(req.getParameter("studyGroupEndDate"));
		System.out.println(req.getParameter("studyGroupTitle"));
		System.out.println(req.getParameter("studyGroupcontent"));
		
		studyGroupDTO.setMemberNumber(4);
		// 세션 넘버 비교 
//		studyGroupDTO.setMemberNumber((Integer)req.getSession().getAttribute("memberNumber"));
		studyGroupDTO.setStudyGroupField(req.getParameter("studyGroupField"));
		studyGroupDTO.setStudyGroupCapacity(req.getParameter("studyGroupCapacity"));
		studyGroupDTO.setStudyGroupOnline(req.getParameter("studyGroupOnline"));
		studyGroupDTO.setStudyGroupDuration(req.getParameter("studyGroupDuration"));
		studyGroupDTO.setStudyGroupContact(req.getParameter("studyGroupContact"));
		studyGroupDTO.setStudyGroupContactAddress(req.getParameter("studyGroupContactAddress"));
		studyGroupDTO.setStudyGroupEndDate(req.getParameter("studyGroupEndDate"));
		studyGroupDTO.setStudyGroupTitle(req.getParameter("studyGroupTitle"));
		studyGroupDTO.setStudyGroupcontent(req.getParameter("studyGroupcontent"));
		// 수정할때 study group number 로 해당 게시물 가져와야 해서 study group number 가 필요한 것임. 
		studyGroupDTO.setStudyGroupNumber(Integer.parseInt(req.getParameter("studyGroupNumber")));
	    
	    System.out.println(studyGroupDTO);
	    studyGroupDAO.update(studyGroupDTO);
	
	    resp.sendRedirect("/studyGroup/studyGroupMain.sg");
	}

	
}
