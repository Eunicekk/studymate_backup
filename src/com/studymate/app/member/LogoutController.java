package com.studymate.app.member;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.studymate.app.Execute;

public class LogoutController implements Execute {

	@Override
	public void execute(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	    try {
	        HttpSession session = req.getSession();
	        session.invalidate();
	        resp.sendRedirect(req.getContextPath() + "/");
	    } catch (Exception e) {
	        e.printStackTrace();
	    }
}
}