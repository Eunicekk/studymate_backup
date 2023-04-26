package com.studymate.app.boardComment;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class BoardCommentFrontController extends HttpServlet{
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
	     case "/boardComment/boardCommentListOk.bc":
	    	 System.out.println("comment");
	         new BoardCommentListOkController().execute(req, resp);
	         break;
	      case "/boardComment/boardCommentWriteOk.bc":
	    	  new BoardCommentWriteOkController().execute(req, resp);
	    	  System.out.println("commentWrite");
	    	  break;
	      case "/boardComment/boardCommentDeleteOk.bc":
	    	  System.out.println("boardDelete");
	    	  new BoardCommentDeleteOkController().execute(req, resp);
	    	  break;
	      case "/boardComment/boardCommentUpdateOk.bc":
	    	  new BoardCommentUpdateOkController().execute(req, resp);
	    	  break;
		}
	}
}

