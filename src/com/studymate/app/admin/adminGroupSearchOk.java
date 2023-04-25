package com.studymate.app.admin;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.studymate.app.Execute;
import com.studymate.app.admin.cafe.vo.adminCafeVO;
import com.studymate.app.admin.dao.AdminDAO;
import com.studymate.app.admin.group.vo.AdminGroupVO;
import com.studymate.app.admin.search.vo.SearchVO;

public class adminGroupSearchOk implements Execute {

	@Override
	public void execute(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		AdminDAO adminDAO = new AdminDAO();
		List<AdminGroupVO> groupList = null;
		SearchVO searchVO = new SearchVO();
		

		String temp = req.getParameter("page");
		String desc = req.getParameter("order");
		String memberNickName = req.getParameter("memberNickName");
		searchVO.setSearchText(req.getParameter("memberNickName")); 
		
		int total = adminDAO.groupSearchTotal(memberNickName);

		int page = temp == null ? 1 : Integer.valueOf(temp);

		int rowCount = 21;

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

		
		groupList = adminDAO.groupSearch(searchVO);
		
		System.out.println(groupList);
		System.out.println(total);
		req.setAttribute("groupList", groupList);
		req.setAttribute("page", page);
		req.setAttribute("startPage", startPage);
		req.setAttribute("endPage", endPage);
		req.setAttribute("prev", prev);
		req.setAttribute("next", next);
		req.setAttribute("total", total);


		req.getRequestDispatcher("/app/admin/adminGroupCheck.jsp").forward(req, resp);
	}

}
