package com.studymate.app.memberLikeCafe;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.studymate.app.Execute;
import com.studymate.app.memberLikeCafe.dao.MemberLikeCafeDAO;
import com.studymate.app.memberLikeCafe.dto.MemberLikeCafeDTO;

public class CafeLikeUpdateOkController implements Execute {

	@Override
	public void execute(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("utf-8");
		
		HttpSession session = req.getSession();
		Integer memberNumber = (Integer) session.getAttribute("memberNumber");
		
		MemberLikeCafeDAO memberLikeCafeDAO = new MemberLikeCafeDAO();
		MemberLikeCafeDTO memberLikeCafeDTO = new MemberLikeCafeDTO();
//		memberLikeCafeDTO.setMemberNumber(Integer.parseInt(req.getParameter("memberNumber")));
		memberLikeCafeDTO.setMemberNumber(memberNumber);
		memberLikeCafeDTO.setStudyCafeNumber(Integer.parseInt(req.getParameter("studyCafeNumber")));
		int result = memberLikeCafeDAO.checkLike(memberLikeCafeDTO);
		
		System.out.println(req.getParameter("memberNumber"));
		System.out.println(req.getParameter("studyCafeNumber"));
		System.out.println(result);
		
		if(result == 0) {
			memberLikeCafeDAO.plusLike(memberLikeCafeDTO);
		}else {
			memberLikeCafeDAO.minusLike(memberLikeCafeDTO);
		}
		
		PrintWriter out = resp.getWriter();
		out.print(result);
		out.close();
	}
}
