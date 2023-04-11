package com.studymate.app.studyCafe;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class StudyCafeFrontController extends HttpServlet{
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

			System.out.println(target);
		switch(target) {
		case "/cafe/cafeListOk.sc" : 
			new StudyCafeListOkController().execute(req, resp);
			break;
		case "/cafe/cafeReadOk.sc" :
			new StudyCafeReadOkController().execute(req, resp);
			break;
		}
	}
}

