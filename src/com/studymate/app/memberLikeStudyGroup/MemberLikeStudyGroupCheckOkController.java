package com.studymate.app.memberLikeStudyGroup;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.studymate.app.Execute;
import com.studymate.app.memberLikeStudyGroup.dao.MemberLikeStudyGroupDAO;

public class MemberLikeStudyGroupCheckOkController implements Execute {

	@Override
	public void execute(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("utf-8");
		resp.setContentType("text/html; charset=utf-8");
		MemberLikeStudyGroupDAO memberLikeStudyGroupDAO = new MemberLikeStudyGroupDAO();
		
		HttpSession session = req.getSession();
		Integer memberNumber = (Integer) session.getAttribute("memberNumber");
		System.out.println(memberNumber);
		
		List<Integer> studyGroupLike = memberLikeStudyGroupDAO.haveLike(memberNumber);
		System.out.println(studyGroupLike);
		
		PrintWriter out = resp.getWriter();
		out.print(studyGroupLike);
		out.close();
	}

}
