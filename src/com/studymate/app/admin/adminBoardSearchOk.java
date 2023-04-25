package com.studymate.app.admin;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.studymate.app.Execute;
import com.studymate.app.admin.dao.AdminDAO;
import com.studymate.app.admin.group.vo.AdminGroupVO;
import com.studymate.app.admin.search.vo.SearchVO;

public class adminBoardSearchOk implements Execute {

	@Override
	public void execute(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		AdminDAO adminDAO = new AdminDAO();
		List<AdminGroupVO> boardList = null;
		SearchVO searchVO = new SearchVO();
		

		String temp = req.getParameter("page");
		String desc = req.getParameter("order");
		String memberId = req.getParameter("memberId");
		searchVO.setSearchText(req.getParameter("memberId")); 
		
		int total = adminDAO.boardSearchTotal(memberId);

		int page = temp == null ? 1 : Integer.valueOf(temp);

		int rowCount = 10;

		int pageCount = 5;

		int startRow = (page - 1) * rowCount;

		int endPage = (int) (Math.ceil(page / (double) pageCount) * pageCount);

		int startPage = endPage - (pageCount - 1);

		int realEndPage = (int) Math.ceil(total / (double) rowCount);

		endPage = endPage > realEndPage ? realEndPage : endPage;

		boolean prev = startPage > 1;
		boolean next = endPage != realEndPage;

		Map<String, Integer> pageMap = new HashMap<String, Integer>();
		searchVO.setStartRow(startRow);
		searchVO.setRowCount(rowCount);
		System.out.println(searchVO);

		
		boardList = adminDAO.boardSearch(searchVO);
		
		System.out.println(boardList);
		System.out.println(total);
		req.setAttribute("boardList", boardList);
		req.setAttribute("page", page);
		req.setAttribute("startPage", startPage);
		req.setAttribute("endPage", endPage);
		req.setAttribute("prev", prev);
		req.setAttribute("next", next);
		req.setAttribute("total", total);


		req.getRequestDispatcher("/app/admin/adminBoardCheck.jsp").forward(req, resp);
	}

}
