package com.studymate.app.myPage;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.studymate.app.Execute;
import com.studymate.app.myPage.dao.MyPageDAO;

public class MyPageUsaDetailsDeleteOkController implements Execute {

	@Override
	public void execute(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		MyPageDAO myPageDAO = new MyPageDAO();
		
		int reservationNumber = Integer.valueOf(req.getParameter("reservationNumber"));
		System.out.println("=" + reservationNumber);
		
		myPageDAO.reservationDelete(reservationNumber);

	}

}
