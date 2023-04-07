package com.studymate.app.studyCafeComment;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.studymate.app.Execute;
import com.studymate.app.studyCafeComment.dao.StudyCafeCommentDAO;
import com.studymate.app.studyCafeComment.dto.StudyCafeCommentDTO;

public class StudyCafeCommentWriteOkController implements Execute {

	@Override
	public void execute(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		StudyCafeCommentDTO studyCafeCommentDTO = new StudyCafeCommentDTO();
		req.setCharacterEncoding("utf-8");
		
		System.out.println(studyCafeCommentDTO);
		
		studyCafeCommentDTO.setStudyCafeNumber(Integer.valueOf(req.getParameter("studyCafeNumber")));
		studyCafeCommentDTO.setMemberNumber(Integer.valueOf(req.getParameter("memberNumber")));
		studyCafeCommentDTO.setCafeCommentScore(Integer.valueOf(req.getParameter("cafeCommentScore")));
		studyCafeCommentDTO.setCafeCommentContent(req.getParameter("cafeCommentContent"));
		
		new StudyCafeCommentDAO().insert(studyCafeCommentDTO);
	}

}
