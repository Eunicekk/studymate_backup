package com.studymate.app.memberLikeCafe;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.studymate.app.Execute;
import com.studymate.app.memberLikeCafe.dao.MemberLikeCafeDAO;

public class CafeLikeCheckOkController implements Execute {

	@Override
	public void execute(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("utf-8");
		resp.setContentType("text/html; charset=utf-8");
		MemberLikeCafeDAO memberLikeCafeDAO = new MemberLikeCafeDAO();
		
		HttpSession session = req.getSession();
		Integer memberNumber = (Integer) session.getAttribute("memberNumber");
		
		//List<Integer> cafelike = memberLikeCafeDAO.haveLike(Integer.valueOf(req.getParameter("memberNumber")));
		List<Integer> cafelike = memberLikeCafeDAO.haveLike(memberNumber);
		System.out.println(cafelike);
		
		PrintWriter out = resp.getWriter();
		out.print(cafelike);
		out.close();
	}

}
