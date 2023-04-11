package com.studymate.app.myPage;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.studymate.app.Execute;
import com.studymate.app.myPage.dao.MyPageDAO;
import com.studymate.app.myPage.vo.MyPageVO;

public class MyPageLeaderGroupOkController implements Execute {

	@Override
	public void execute(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		MyPageDAO myPageDAO = new MyPageDAO();
		int memberNumber = 1;
		myPageDAO.selectMember(memberNumber);
		List<MyPageVO> myLeaderGroup = myPageDAO.myLeaderGroup(memberNumber);
		
		System.out.println(myLeaderGroup);
		
		req.setAttribute("myLeaderGroup", myLeaderGroup);
		req.getRequestDispatcher("/app/mypage/leaderGroup.jsp").forward(req, resp);
	}

}
