package com.studymate.app.studyGroup;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.studymate.app.Execute;
import com.studymate.app.studyGroup.dao.StudyGroupDAO;

public class StudyGroupDeleteOkController implements Execute {

	@Override
	public void execute(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub

		StudyGroupDAO studyGroupDAO = new StudyGroupDAO(); 
		
		int studyGrouNumber = Integer.valueOf(req.getParameter("studyGroupNumber"));
		studyGroupDAO.delete(studyGrouNumber);
	
		req.getRequestDispatcher("/app/group/studyGroupRead.jsp").forward(req, resp);
	
		System.out.println("삭제 완료");
	}

}
