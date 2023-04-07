package com.studymate.app.myPage;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.studymate.app.Execute;
import com.studymate.app.member.dto.MemberDTO;
import com.studymate.app.myPage.dao.MyPageDAO;

public class MyPageModifyingProfileController implements Execute {
	@Override
	public void execute(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		MyPageDAO myPageDAO = new MyPageDAO();
		MemberDTO memberDTO = new MemberDTO(); 
//		HttpSession session = req.getSession();
//		int number = session.getAttribute("memberNumber");
		Integer memberNumber =12;
		

		memberDTO = myPageDAO.selectMember(memberNumber);
		req.setAttribute("memberDTO", memberDTO);
		
		
		req.getRequestDispatcher("/app/mypage/ModifyingProfile.jsp").forward(req, resp);
	}
}
