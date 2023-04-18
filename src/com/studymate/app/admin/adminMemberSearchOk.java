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
import com.studymate.app.admin.search.vo.SearchVO;
import com.studymate.app.member.dao.MemberDAO;
import com.studymate.app.member.dto.MemberDTO;

public class adminMemberSearchOk implements Execute {

	@Override
	public void execute(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		MemberDAO memberDAO = new MemberDAO();
		AdminDAO adminDAO = new AdminDAO();
		List<MemberDTO> members = null;
		SearchVO searchVO = new SearchVO();
		

		String temp = req.getParameter("page");
		String desc = req.getParameter("order");
		String memberId = req.getParameter("memberId");
		searchVO.setSearchText(req.getParameter("memberId")); 
		
		int total = adminDAO.memberSearchTotal(memberId);

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

//		if(desc == null && memberId == null) {
//			members = adminDAO.adminMemberCheck(pageMap);				
//		}else if(memberId != null) {
//			members = adminDAO.MemberSearch(searchVO);
//		}else {
//			members = adminDAO.adminMemberCheckDesc(pageMap);			
//		}
		
		members = adminDAO.MemberSearch(searchVO);
		
//		System.out.println(searchVO);
		System.out.println(members);
		System.out.println(page);
		req.setAttribute("memberList", members);
		req.setAttribute("page", page);
		req.setAttribute("startPage", startPage);
		req.setAttribute("endPage", endPage);
		req.setAttribute("prev", prev);
		req.setAttribute("next", next);
		req.setAttribute("total", total);


		req.getRequestDispatcher("/app/admin/adminMemberCheck.jsp").forward(req, resp);
		
	}

}
