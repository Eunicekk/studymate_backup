package com.studymate.app.member;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.studymate.app.Execute;
import com.studymate.app.member.dao.MemberDAO;
import com.studymate.app.member.dto.MemberDTO;

public class JoinOkController implements Execute {

	@Override
	public void execute(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		MemberDAO memberDAO =new MemberDAO();
		MemberDTO memberDTO =new MemberDTO();

		req.setCharacterEncoding("utf-8");
		System.out.println("안녕");
		 
		memberDTO.setMemberId(req.getParameter("memberId"));
		memberDTO.setMemberPassword(req.getParameter("memberPassword"));
		memberDTO.setMemberName(req.getParameter("memberName"));
		memberDTO.setMemberAge(15);
		memberDTO.setMemberGender("m");
		memberDTO.setMemberEmail(req.getParameter("memberEmail"));
		memberDTO.setMemberPhoneNumber("5050050");
		memberDTO.setMemberNickname(req.getParameter("memberNickname"));
		
		System.out.println(memberDTO);
		
		memberDAO.join(memberDTO);
		
		req.getRequestDispatcher("/app/member/login.jsp").forward(req, resp);

		

	}

}
