package com.studymate.app.myPage;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.studymate.app.Execute;
import com.studymate.app.myPage.dao.MyPageDAO;
import com.studymate.app.myPage.vo.MyGroupVO;

public class MyPageLeaderGroupOkController implements Execute {

	@Override
	public void execute(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		MyPageDAO myPageDAO = new MyPageDAO();
		MyGroupVO myGroupVO = new MyGroupVO();
		List<MyGroupVO> myLeaderGroup = null;

		HttpSession session = req.getSession();
		Integer memberNumber = (Integer) session.getAttribute("memberNumber");
		int total = myPageDAO.leaderGroupTotal(memberNumber);

		String temp = req.getParameter("page");
		String memberId = req.getParameter("memberId");

		int page = temp == null ? 1 : Integer.valueOf(temp);

		int rowCount = 6;

		int pageCount = 5;

		int startRow = (page - 1) * rowCount;

		int endPage = (int) (Math.ceil(page / (double) pageCount) * pageCount);

		int startPage = endPage - (pageCount - 1);

		int realEndPage = (int) Math.ceil(total / (double) rowCount);

		endPage = endPage > realEndPage ? realEndPage : endPage;

		boolean prev = startPage > 1;
		boolean next = endPage != realEndPage;

		Map<String, Integer> pageMap = new HashMap<String, Integer>();
		pageMap.put("startRow", startRow);
		pageMap.put("rowCount", rowCount);
		pageMap.put("memberNumber", (Integer) session.getAttribute("memberNumber"));

		myLeaderGroup = myPageDAO.myLeaderGroup(pageMap);

		String outputPattern = "yyyy-MM-dd (E)";
		SimpleDateFormat outputSdf = new SimpleDateFormat(outputPattern);

		for (MyGroupVO vo : myLeaderGroup) {  
			Date getStudyGroupStartDate = vo.getStudyGroupStartDate();
			vo.setStudyGroupStartDate(getStudyGroupStartDate);
			String formattedStartDateTime = outputSdf.format(getStudyGroupStartDate);
			vo.setFormatStartDate(formattedStartDateTime);
		}

		System.out.println(myLeaderGroup);
		
		req.setAttribute("myLeaderGroup", myLeaderGroup);
		req.setAttribute("page", page);
		req.setAttribute("startPage", startPage);
		req.setAttribute("endPage", endPage);
		req.setAttribute("prev", prev);
		req.setAttribute("next", next);
		req.setAttribute("total", total);
		req.getRequestDispatcher("/app/mypage/leaderGroup.jsp").forward(req, resp);
	}

}
