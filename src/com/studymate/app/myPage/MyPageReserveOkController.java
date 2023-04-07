package com.studymate.app.myPage;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.studymate.app.Execute;
import com.studymate.app.myPage.dao.MyPageDAO;
import com.studymate.app.myPage.vo.MyPageVO;

public class MyPageReserveOkController implements Execute {

	@Override
	public void execute(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		MyPageDAO myPageDAO = new MyPageDAO();
		
		int memberNumber = 1;
		myPageDAO.selectMember(memberNumber);
		
		List<MyPageVO> myReservation = myPageDAO.myReservation(memberNumber); 
		System.out.println(myReservation);
		
		req.setAttribute("myReservation", myReservation);
		req.getRequestDispatcher("/app/mypage/reserve.jsp").forward(req, resp);
	}

}
