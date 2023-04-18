package com.studymate.app.memberLikeStudyGroup;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.studymate.app.Execute;
import com.studymate.app.memberLikeStudyGroup.dao.MemberLikeStudyGroupDAO;
import com.studymate.app.memberLikeStudyGroup.dto.MemberLikeStudyGroupDTO;
import com.studymate.app.studyGroup.dto.StudyGroupDTO;

public class MemberLikeStudyGroupOkController implements Execute {

	@Override
	public void execute(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		req.setCharacterEncoding("utf-8");
		resp.setContentType("text/html; charset=utf-8");
		MemberLikeStudyGroupDAO memberLikeStudyGroupDAO = new MemberLikeStudyGroupDAO();

//
		
		PrintWriter out = resp.getWriter();
		int count = memberLikeStudyGroupDAO.likeCnt(Integer.valueOf(req.getParameter("studyGroupNumber")));
		System.out.println("count" + count);
		out.print(count);
		out.close();
	}
	

}
