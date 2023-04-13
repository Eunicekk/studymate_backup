package com.studymate.app.member;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.studymate.app.Execute;
import com.studymate.app.member.dao.MemberDAO;
import com.studymate.app.member.dto.MemberDTO;

public class FindAccountOkController implements Execute {
	@Override
	public void execute(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		MemberDAO memberDAO=new MemberDAO();
		MemberDTO memberDTO=new MemberDTO();
		
		memberDTO.setMemberEmail(req.getParameter("memberEmail"));
		memberDTO.setMemberId(req.getParameter("memberId"));
		
		int memberNumber =memberDAO.findAccount(memberDTO);
		memberDTO.setMemberNumber(memberNumber);
		
		if(memberNumber>0) {
			resp.getWriter().print("success");
			
			req.getSession().setAttribute("memberNumber", memberNumber);
			
		}else {
			resp.getWriter().print("fail");
		}
		req.setAttribute("memberNumber", memberNumber);
	}
}











