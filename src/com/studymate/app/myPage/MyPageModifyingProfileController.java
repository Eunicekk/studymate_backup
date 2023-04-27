package com.studymate.app.myPage;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.studymate.app.Execute;
import com.studymate.app.myPage.dao.MyPageDAO;
import com.studymate.app.myPage.vo.MyProfileVO;

public class MyPageModifyingProfileController implements Execute {
	@Override
	public void execute(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		MyPageDAO myPageDAO = new MyPageDAO();
		MyProfileVO myProfileVO= null; 
		
		HttpSession session = req.getSession();
		Integer memberNumber = (Integer) session.getAttribute("memberNumber");


		myProfileVO = myPageDAO.selectMember(memberNumber);
		req.setAttribute("memberDTO", myProfileVO);
		
		System.out.println(myProfileVO);
		
		req.getRequestDispatcher("/app/mypage/ModifyingProfile.jsp").forward(req, resp);
	}
}
