package com.studymate.app.studyGroupComment;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.studymate.app.Execute;
import com.studymate.app.studyCafeComment.dao.StudyCafeCommentDAO;
import com.studymate.app.studyGroupComment.dao.StudyGroupCommentDAO;

public class StudyGroupCommentDeleteOkController implements Execute {

	@Override
	public void execute(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		int studyGroupCommentNumber = Integer.parseInt(req.getParameter("studyGroupCommentNumber"));
		new StudyGroupCommentDAO().delete(studyGroupCommentNumber);
	

	}

}
