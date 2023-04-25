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
		System.out.println("딜리트 컨트롤러 들어왔는지");

		StudyGroupDAO studyGroupDAO = new StudyGroupDAO(); 
		
		int studyGroupNumber = Integer.valueOf(req.getParameter("studyGroupNumber"));
		studyGroupDAO.delete(studyGroupNumber);
		System.out.println(studyGroupNumber);
	
		req.getRequestDispatcher("/app/group/studyGroupRead.jsp").forward(req, resp);
	
		System.out.println("삭제 완료");
	}

}
