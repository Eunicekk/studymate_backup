package com.studymate.app.member;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.studymate.app.Execute;
import com.studymate.app.member.dao.MemberDAO;
import com.studymate.app.member.dto.MemberDTO;

public class PwChange implements Execute {

	@Override
	public void execute(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		 MemberDAO memberDAO = new MemberDAO();
	        MemberDTO memberDTO = new MemberDTO();
	        // 세션에서 memberNumber 가져오기
	        int memberNumber = (int) req.getSession().getAttribute("memberNumber");
	        
	        memberDTO.setMemberPassword(req.getParameter("oldMemberPassword"));
	        
	        memberDTO.setMemberNumber(memberNumber);
	        int checkNumber = memberDAO.checkPassword(memberDTO);
	        if(checkNumber > 0) { // 원래 비밀번호가 맞을 때
	        	memberDTO.setMemberPassword(req.getParameter("newMemberPassword"));
	        	System.out.println(memberDTO);
		        memberDAO.newPassword(memberDTO);
	        } else {
	        	// 원래 비밀번호가 아닐 때
	        	// req.setAttribute("msg", "원래 비밀번호가 다릅니다.");
	        }

	        req.getRequestDispatcher("/app/member/login.jsp").forward(req, resp);
	    }
	}