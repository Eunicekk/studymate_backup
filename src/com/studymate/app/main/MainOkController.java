package com.studymate.app.main;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.studymate.app.Execute;
import com.studymate.app.admin.board.vo.AdminBoardVO;
import com.studymate.app.admin.cafe.vo.adminCafeVO;
import com.studymate.app.admin.dao.AdminDAO;
import com.studymate.app.admin.group.vo.AdminGroupVO;
import com.studymate.app.main.dao.MainDAO;
import com.studymate.app.studyGroup.dao.StudyGroupDAO;
import com.studymate.app.studyGroup.vo.StudyGroupVO;

public class MainOkController implements Execute {

	@Override
	public void execute(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		MainDAO MainDAO = new MainDAO();
		int total = MainDAO.getTotal();
		StudyGroupDAO studyGroupDAO = new StudyGroupDAO();

		String temp = req.getParameter("page");
		int page = temp == null ? 1 : Integer.parseInt(temp);

		int rowCount = 8;
		int pageCount = 1;
		int startRow = (page - 1) * rowCount;
		int endPage = (int) (Math.ceil(page / (double) pageCount) * pageCount);
		int startPage = endPage - (pageCount - 1);
		int realEndPage = (int) Math.ceil(total / (double) rowCount);
		endPage = endPage > realEndPage ? realEndPage : endPage;

		boolean prev = startPage > 1;
		boolean next = endPage != realEndPage;

		Map<String, Integer> pageMap = new HashMap<>();
		pageMap.put("startRow", startRow);
		pageMap.put("rowCount", rowCount);

		List<adminCafeVO> cafelist = MainDAO.selectAll(pageMap);
		System.out.println(pageMap);

		req.setAttribute("cafelist", cafelist);

//		그룹 리스트
		AdminDAO adminDAO = new AdminDAO();
		AdminGroupVO adminGroupVO = new AdminGroupVO();
//		List<AdminGroupVO> groupList = null;
		List<StudyGroupVO> groupList = null;

		int grouptotal = adminDAO.groupTotal();

		Map<String, Integer> pageMap3 = new HashMap<>();
		pageMap3.put("startRow", startRow);
		pageMap3.put("rowCount", 25);
//		groupList = adminDAO.groupListDate(pageMap3);
		
		groupList = studyGroupDAO.selectAll(pageMap3);
		System.out.println(groupList);
		req.setAttribute("groupList", groupList);
		req.setAttribute("total", grouptotal);

		AdminBoardVO adminBoardVO = new AdminBoardVO();
		List<AdminBoardVO> boardList = null;


		Map<String, Integer> pageMap2 = new HashMap<String, Integer>();
		pageMap2.put("startRow", 0);
		pageMap2.put("rowCount", 4);

		boardList = adminDAO.boardListDesc(pageMap2);

		System.out.println(boardList);
		req.setAttribute("boardList", boardList);

		req.getRequestDispatcher("/index.jsp").forward(req, resp);
	}

}
