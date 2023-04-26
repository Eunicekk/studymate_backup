package com.studymate.app.board;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.studymate.app.Execute;
import com.studymate.app.member.dao.MemberDAO;

public class BoardWriteController implements Execute {

	@Override
	public void execute(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		MemberDAO memberDAO = new MemberDAO();
		HttpSession session = req.getSession();
		Integer memberNumber = (Integer)session.getAttribute("memberNumber");
		String path = null;
		
		path = "/app/board/boardWrite.jsp";
		session.setAttribute("memberNumber", 2);
//		memberNumber = 2;
//		req.setAttribute("memberId", memberDAO.getMemberId(memberNumber));
//		
//		if(memberNumber == null) {
//			path = "/app/member/login.jsp";
//		}else {
//			path = "/app/board/boardWrite.jsp";
//			req.setAttribute("memberId", memberDAO.getMemberId(memberNumber));
//		}
		
		System.out.println("write들어왔다");
		req.getRequestDispatcher(path).forward(req, resp);
	}

}
