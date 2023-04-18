package com.studymate.app.studyGroup;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class StudyGroupFrontController extends HttpServlet{
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
		case "/studyGroup/studyGroupMainOk.sg":
			System.out.println("okcontrolrt");
			new StudyGroupMainOkController().execute(req,resp); 
			break;
		case "/studyGroup/studyGroupReadOk.sg":
			new StudyGroupReadOkController().execute(req,resp); 
			break;
		case "/studyGroup/studyGroupOrderOk.sg":
			new StudyGroupOrderOkController().execute(req,resp); 
			break;
		}
	}
}

