package com.studymate.app.myPage;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.studymate.app.Execute;
import com.studymate.app.myPage.dao.MyPageDAO;

public class MyPageInterestPlaceDeleteOkController implements Execute {

	@Override
	public void execute(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		MyPageDAO myPageDAO = new MyPageDAO();

		int studyCafeNumber = Integer.valueOf(req.getParameter("studyCafeNumber"));
		System.out.println("=" + studyCafeNumber);

		myPageDAO.likeCafeDelete(studyCafeNumber);

	}

}
