package com.studymate.app.admin;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.studymate.app.Execute;
import com.studymate.app.admin.board.vo.AdminBoardVO;
import com.studymate.app.admin.dao.AdminDAO;
import com.studymate.app.admin.group.vo.AdminGroupVO;

public class adminGroupListOk implements Execute {

	@Override
	public void execute(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		AdminDAO adminDAO =  new AdminDAO();
		AdminGroupVO adminGroupVO = new AdminGroupVO();
		List<AdminGroupVO> groupList = null;
		
		int total = adminDAO.groupTotal();
		
		String temp = req.getParameter("page");
		String desc = req.getParameter("order");
		String memberNickname = req.getParameter("memberNickname");
		String listText = req.getParameter("listText");
		
		int page = temp == null ? 1 : Integer.valueOf(temp);
		
		int rowCount = 20;
		
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
		
		
		if(desc == null && memberNickname == null && listText == null) {
			groupList = adminDAO.groupList(pageMap);
		}else if(memberNickname != null) {
			groupList = adminDAO.groupSearch(memberNickname);
		}else if(listText != null) {
			groupList = adminDAO.listSearch(listText);
		}else {
			groupList = adminDAO.groupListDate(pageMap);
		}
		
//		groupList = adminDAO.groupList(pageMap);
		System.out.println(groupList);

		
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
