package com.studymate.app.member;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.studymate.app.Execute;

public class NaverLogout implements Execute {

	@Override
	public void execute(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
	     
	        HttpSession session = req.getSession();
	        session.invalidate();
	        resp.sendRedirect("https://nid.naver.com/nidlogin.logout?returl=" + req.getContextPath() + "/Main.ma");
	    }
	    }

