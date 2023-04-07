package com.studymate.app.member;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.studymate.app.Execute;
import com.studymate.app.member.dao.MemberDAO;

public class CheckIdOkController implements Execute {

	@Override
	public void execute(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		MemberDAO memberDAO=new MemberDAO();
		
		memberDAO.checkId(req.getParameter("memberId"));
		resp.setContentType("text/html; charset=utf-8");
		PrintWriter out=resp.getWriter();
		
		out.print(memberDAO.checkId(req.getParameter("memberId"))?"사용가능":"중복된아이디");
		out.close();
		
		
		
	}

}
