package com.studymate.app.studyGroupComment;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class StudyGroupCommentFrontController extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doProcess(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doProcess(req, resp);
	}
	
	protected void doProcess(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String target = req.getRequestURI().substring(req.getContextPath().length());

		switch(target) {
		case "/studyGroupComment/studyGroupCommentOk.sgc":
			System.out.println("댓글 진입");
			new StudyGroupCommentOkController().execute(req,resp);
			break;
		case "/studyGroupComment/studyGroupCommentWriteOk.sgc":
			System.out.println("댓글 작성");
			new StudyGroupCommentWriteOkController().execute(req,resp);
			break;
		case "/studyGroupComment/studyGroupCommentDeleteOk.sgc":
			System.out.println("댓글 삭제");
			new StudyGroupCommentDeleteOkController().execute(req,resp);
			break;
		}
	}
}

