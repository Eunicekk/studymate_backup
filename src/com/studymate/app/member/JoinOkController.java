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
		 
		memberDTO.setMemberId(req.getParameter("memberId"));
		memberDTO.setMemberId(req.getParameter("memberPassword"));
		memberDTO.setMemberId(req.getParameter("memberName"));
		memberDTO.setMemberId(req.getParameter("memberAge"));
		memberDTO.setMemberId(req.getParameter("memberGender"));
		memberDTO.setMemberId(req.getParameter("memberEamil"));
		memberDTO.setMemberId(req.getParameter("memberPhoneNumber"));
		memberDTO.setMemberId(req.getParameter("memberNickname"));
		
		
		
		memberDAO.join(memberDTO);
		
		resp.sendRedirect("/member/login.me");
	}

}
