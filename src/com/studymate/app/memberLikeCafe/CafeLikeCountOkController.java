package com.studymate.app.memberLikeCafe;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.studymate.app.Execute;
import com.studymate.app.memberLikeCafe.dao.MemberLikeCafeDAO;

public class CafeLikeCountOkController implements Execute {

	@Override
	public void execute(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("utf-8");
		resp.setContentType("text/html; charset=utf-8");
		MemberLikeCafeDAO memberLikeCafeDAO = new MemberLikeCafeDAO();
		
		 PrintWriter out = resp.getWriter();
		int count = memberLikeCafeDAO.countLike(Integer.valueOf(req.getParameter("studyCafeNumber")));
		System.out.println("count : " + count);
		 out.print(count);
		 out.close();
	}

}
