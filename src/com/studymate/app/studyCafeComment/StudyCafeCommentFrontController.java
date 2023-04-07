package com.studymate.app.studyCafeComment;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class StudyCafeCommentFrontController extends HttpServlet{
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
		case "/cafecomment/cafeCommentListOk.scc" :
			new StudyCafeCommentOkController().execute(req, resp);
			break;
		case "/cafecomment/cafeCommentWriteOk.scc" : 
			new StudyCafeCommentWriteOkController().execute(req, resp);
			break;
		}
	}
}

