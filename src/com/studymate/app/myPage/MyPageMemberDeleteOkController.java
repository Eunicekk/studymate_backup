package com.studymate.app.myPage;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.studymate.app.Execute;
import com.studymate.app.member.dto.MemberDTO;
import com.studymate.app.myPage.dao.MyPageDAO;

public class MyPageMemberDeleteOkController implements Execute {

	@Override
	public void execute(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		MyPageDAO myPageDAO = new MyPageDAO();
		MemberDTO memberDTO = new MemberDTO();
		
//		int memberNumber = Integer.valueOf(req.getParameter("memberNumber"));
		
//		System.out.println(memberDTO);
		
		int memberNumber = 12;
		memberDTO.setMemberNumber(memberNumber);		
		myPageDAO.delete(memberNumber);
		
		resp.sendRedirect("/assets/index.jsp");
	}

}
