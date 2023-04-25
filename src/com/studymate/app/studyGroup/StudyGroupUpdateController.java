package com.studymate.app.studyGroup;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.studymate.app.Execute;
import com.studymate.app.studyGroup.dao.StudyGroupDAO;

public class StudyGroupUpdateController implements Execute {

	@Override
	public void execute(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		int studyGroupNumber = Integer.valueOf(req.getParameter("studyGroupNumber"));
		StudyGroupDAO studyGroupDAO = new StudyGroupDAO();

		req.setAttribute("group", studyGroupDAO.select(studyGroupNumber));
		req.getRequestDispatcher("/app/group/studyGroupUpdate.jsp").forward(req, resp);
		
	}

}
