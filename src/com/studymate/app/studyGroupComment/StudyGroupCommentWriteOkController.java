package com.studymate.app.studyGroupComment;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.studymate.app.Execute;
import com.studymate.app.studyGroupComment.dao.StudyGroupCommentDAO;
import com.studymate.app.studyGroupComment.dto.StudyGroupCommentDTO;

public class StudyGroupCommentWriteOkController implements Execute {

	@Override
	public void execute(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		StudyGroupCommentDTO studyGroupCommentDTO = new StudyGroupCommentDTO();
		req.setCharacterEncoding("utf-8");
		
		studyGroupCommentDTO.setStudyGroupNumber(Integer.valueOf(req.getParameter("studyGroupNumber")));
		studyGroupCommentDTO.setMemberNumber(Integer.valueOf(req.getParameter("memberNumber")));
		studyGroupCommentDTO.setStudyGroupCommentContent(req.getParameter("studyGroupCommentContent"));
		
		 new StudyGroupCommentDAO().insert(studyGroupCommentDTO);
		 // 한번쓸거니까 초기화 시킬 것 없이 import만 하고 insert 생성해주기. 
		 // 보낼 필요는 없다. 비동기 통신이기 때문에 !! 
	}
}
