package com.studymate.app.myPage;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.studymate.app.Execute;
import com.studymate.app.myPage.dao.MyPageDAO;
import com.studymate.app.myPage.vo.MyPageVO;

public class MyPageParticipatingGroupOkController implements Execute {

	@Override
	public void execute(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		MyPageDAO myPageDAO = new MyPageDAO();
		List<MyPageVO> joinGroup = myPageDAO.myJoinGroup(1);	
		System.out.println(joinGroup);
		req.setAttribute("myJoinGroup", joinGroup);
		req.getRequestDispatcher("/app/mypage/participatingGroup.jsp").forward(req, resp);
	}

}
