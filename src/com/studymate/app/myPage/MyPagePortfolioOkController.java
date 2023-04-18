package com.studymate.app.myPage;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.studymate.app.Execute;
import com.studymate.app.myPage.dao.MyPageDAO;
import com.studymate.app.myPage.vo.MyPageVO;

public class MyPagePortfolioOkController implements Execute {
	@Override
	public void execute(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		MyPageDAO myPageDAO = new MyPageDAO();
		MyPageVO myPageVO = new MyPageVO();
		List<MyPageVO> boardList = null;
		
		HttpSession session = req.getSession();
		session.setAttribute("memberNumber", 1);
		Integer memberNumber = (Integer)session.getAttribute("memberNumber");
		int total = myPageDAO.getTotal(memberNumber);
		
		String temp = req.getParameter("page");
		String memberId = req.getParameter("memberId");
		
		int page = temp == null ? 1 : Integer.valueOf(temp);
		
		int rowCount = 10;
		
		int pageCount = 5;
		
		int startRow = (page-1)*rowCount;
		
		int endPage = (int)(Math.ceil(page/(double)pageCount)*pageCount);
		
		int startPage = endPage - (pageCount -1);
		
		int realEndPage = (int)Math.ceil(total / (double)rowCount);
		
		endPage = endPage > realEndPage ? realEndPage : endPage;
		
		boolean prev = startPage >1;
		boolean next= endPage != realEndPage;
		
		
		Map<String,Integer> pageMap = new HashMap<String, Integer>();
		pageMap.put("startRow", startRow);
		pageMap.put("rowCount", rowCount);
		pageMap.put("memberNumber",(Integer)session.getAttribute("memberNumber"));
		
		boardList = myPageDAO.myPortfolio(pageMap);
		System.out.println(boardList);
		
		req.setAttribute("boardList", boardList);
		req.setAttribute("page", page);
		req.setAttribute("startPage", startPage);
		req.setAttribute("endPage", endPage);
		req.setAttribute("prev", prev);
		req.setAttribute("next", next);
		req.setAttribute("total", total);
		
		
		
		req.getRequestDispatcher("/app/mypage/portfolioList.jsp").forward(req, resp); // JSP로 결과 전달
	}

}
