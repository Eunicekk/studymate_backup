package com.studymate.app.myPage;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.studymate.app.Execute;
import com.studymate.app.myPage.dao.MyPageDAO;
import com.studymate.app.myPage.vo.MyPageVO;

public class MyPageInterestPlaceOkController implements Execute {

	@Override
	public void execute(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		MyPageDAO myPageDAO = new MyPageDAO();
		MyPageVO myPageVO = null;
		
		
		int memberNumber = 1;
		myPageDAO.selectMember(memberNumber);
		
//		myPageVO = myPageDAO.myLikeCafe(memberNumber);
		
		List<MyPageVO> likeCafe = myPageDAO.myLikeCafe(memberNumber); 
	

		System.out.println(likeCafe);
		
		req.setAttribute("likeCafe", likeCafe);
		
		
		req.getRequestDispatcher("/app/mypage/interestPlace.jsp").forward(req, resp);
	}

}
