package com.studymate.app.myPage;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.studymate.app.Execute;
import com.studymate.app.myPage.dao.MyPageDAO;
import com.studymate.app.myPage.vo.MyPageVO;

public class MyPageInterestGroupOkController implements Execute {

	@Override
	public void execute(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		MyPageDAO myPageDAO = new MyPageDAO();
		List<MyPageVO> interestGroup = myPageDAO.myInterestGroup(1);
		System.out.println(interestGroup);
		req.setAttribute("myInterestGroup", interestGroup);
		req.getRequestDispatcher("/app/mypage/interestGroup.jsp").forward(req, resp);
	}

}
