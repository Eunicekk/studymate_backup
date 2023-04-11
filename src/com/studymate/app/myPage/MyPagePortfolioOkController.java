package com.studymate.app.myPage;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.studymate.app.Execute;
import com.studymate.app.myPage.dao.MyPageDAO;
import com.studymate.app.myPage.vo.MyPageVO;

public class MyPagePortfolioOkController implements Execute {
	@Override
	public void execute(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		MyPageDAO myPageDAO = new MyPageDAO();
		// 페이지 정보 설정
		int total = myPageDAO.getTotal();
		int memberNumber = 1;
		String temp = req.getParameter("page");
		int page = temp == null ? 1 : Integer.valueOf(temp);
		int rowCount = 10; // 한 페이지에 보여줄 게시물 수
		int pageCount = 5; // 페이지 당 보여줄 페이지 번호 수
		int startRow = (page-1) * rowCount;
		int endPage = (int)(Math.ceil(page/(double)pageCount) * pageCount);
		int startPage = endPage - (pageCount - 1);
		int realEndPage = (int)Math.ceil(total / (double)rowCount);
		endPage = endPage > realEndPage ? realEndPage : endPage;
		boolean prev = startPage > 1;
		boolean next = endPage != realEndPage;
		
		Map<String, Integer> pageMap = new HashMap<>();
		pageMap.put("startRow", startRow);
		pageMap.put("rowCount", rowCount);
		pageMap.put("memberNumber", memberNumber);
		List<MyPageVO> boards = myPageDAO.myPortfolio(pageMap);
		System.out.println(boards);
		req.setAttribute("boardList", boards);
		req.setAttribute("page", page);
		req.setAttribute("startPage", startPage);
		req.setAttribute("endPage", endPage);
		req.setAttribute("prev", prev);
		req.setAttribute("next", next);
		
		req.getRequestDispatcher("/app/mypage/portfolioList.jsp").forward(req, resp); // JSP로 결과 전달
	}

}
