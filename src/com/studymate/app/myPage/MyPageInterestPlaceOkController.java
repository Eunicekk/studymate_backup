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
import com.studymate.app.myPage.vo.MyCafeVO;
import com.studymate.app.studyCafeFile.dto.StudyCafeFileDTO;

public class MyPageInterestPlaceOkController implements Execute {

	@Override
	public void execute(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		MyPageDAO myPageDAO = new MyPageDAO();
		List<MyCafeVO> likeCafe = null;
		List<StudyCafeFileDTO> files = null;
		
		HttpSession session = req.getSession();
		session.setAttribute("memberNumber", 1);
		Integer memberNumber = (Integer)session.getAttribute("memberNumber");
		int total = myPageDAO.likeCafeTotal(memberNumber);
		
		String temp = req.getParameter("page");
		
		int page = temp == null ? 1 : Integer.valueOf(temp);
		
		int rowCount = 6;
		
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
		
		likeCafe = myPageDAO.myLikeCafe(pageMap);
		System.out.println(likeCafe);
		System.out.println(memberNumber);
		
		req.setAttribute("likeCafe", likeCafe);
		req.setAttribute("page", page);
		req.setAttribute("startPage", startPage);
		req.setAttribute("endPage", endPage);
		req.setAttribute("prev", prev);
		req.setAttribute("next", next);
		req.setAttribute("total", total);
		req.setAttribute("files", files);
		
		
		req.getRequestDispatcher("/app/mypage/interestPlace.jsp").forward(req, resp);
	}

}
