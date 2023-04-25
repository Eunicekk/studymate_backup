package com.studymate.app.member;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class MemberFrontController extends HttpServlet{
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
		

		switch (target) {
		  case "/member/join.me":
	            req.getRequestDispatcher("/app/member/join.jsp").forward(req, resp);
	            break;
	        case "/member/joinOk.me":
	            new JoinOkController().execute(req, resp);
	            break;
	    	case "/member/login.me":
				new LoginController().execute(req, resp);
				break;
	        case "/member/loginOk.me":
	            new LoginOkController().execute(req, resp);
	            break;
	        case "/member/checkIdOk.me":
	             new CheckIdOkController().execute(req, resp);
	            break;
	        case "/member/logoutOk.me":
	        	System.out.println("Received request: " + target);
	            new LogoutController().execute(req,resp);
	            break;
	        case "/member/findAccount.me":
	        	req.getRequestDispatcher("/app/member/findAccount.jsp").forward(req, resp);
	        	break;
	        case "/member/findAccountOk.me":
	        	new FindAccountOkController().execute(req,resp);
	        	break;
	        case "/member/PwAccountOk.me":
	        	new PwChange().execute(req, resp);
	        	break;
	        case "/member/NcallbackOk.me":
	        	new navercallback().execute(req,resp);
	        	break;

		}
		}
}
