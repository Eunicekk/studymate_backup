package com.studymate.app.myPage;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.studymate.app.Execute;
import com.studymate.app.board.dto.BoardDTO;
import com.studymate.app.myPage.dao.MyPageDAO;
import com.studymate.app.myPage.vo.MyPageVO;

public class MyPagePortfolioOkController implements Execute{
	@Override
	public void execute(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		MyPageVO myPageVO = new MyPageVO();
		MyPageDAO myPageDAO = new MyPageDAO();
		
		
		 req.getRequestDispatcher("/app/mypage/portfolioList.jsp").forward(req, resp);

	}
}
