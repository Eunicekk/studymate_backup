package com.studymate.app.memberLikeCafe;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.studymate.app.Execute;
import com.studymate.app.memberLikeCafe.dao.MemberLikeCafeDAO;
import com.studymate.app.memberLikeCafe.dto.MemberLikeCafeDTO;

public class CafeLikeUpdateOkController implements Execute {

	@Override
	public void execute(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("utf-8");
		
		MemberLikeCafeDAO memberLikeCafeDAO = new MemberLikeCafeDAO();
		MemberLikeCafeDTO memberLikeCafeDTO = new MemberLikeCafeDTO();
		memberLikeCafeDTO.setMemberNumber(Integer.parseInt(req.getParameter("memberNumber")));
		memberLikeCafeDTO.setStudyCafeNumber(Integer.parseInt(req.getParameter("studyCafeNumber")));
		int result = memberLikeCafeDAO.checkLike(memberLikeCafeDTO);
		
		System.out.println(result);
		
		
		if(result == 0) {
			System.out.println("0이다");
			memberLikeCafeDAO.plusLike(memberLikeCafeDTO);
		}else {
			System.out.println("0아니다!");
			memberLikeCafeDAO.minusLike(memberLikeCafeDTO);
		}
		
		PrintWriter out = resp.getWriter();
		out.print(result);
		out.close();
	}
}