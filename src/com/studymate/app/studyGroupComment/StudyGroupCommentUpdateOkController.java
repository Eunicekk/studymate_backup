package com.studymate.app.studyGroupComment;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.studymate.app.Execute;
import com.studymate.app.studyGroupComment.dao.StudyGroupCommentDAO;
import com.studymate.app.studyGroupComment.dto.StudyGroupCommentDTO;

public class StudyGroupCommentUpdateOkController implements Execute {

	@Override
	public void execute(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		StudyGroupCommentDTO studyGroupCommentDTO = new StudyGroupCommentDTO();
		studyGroupCommentDTO.setStudyGroupCommentNumber(Integer.parseInt(req.getParameter("studyGroupCommentNumber")));
		studyGroupCommentDTO.setStudyGroupCommentContent(req.getParameter("studyGroupCommentContent"));
	
		new StudyGroupCommentDAO().update(studyGroupCommentDTO);
		
	}
}
