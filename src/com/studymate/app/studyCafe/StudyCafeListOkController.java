package com.studymate.app.studyCafe;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.google.gson.JsonArray;
import com.google.gson.JsonParser;
import com.studymate.app.Execute;
import com.studymate.app.studyCafe.dao.StudyCafeDAO;
import com.studymate.app.studyCafe.vo.StudyCafeVO;

public class StudyCafeListOkController implements Execute {

	@Override
	public void execute(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		StudyCafeDAO studyCafeDAO = new StudyCafeDAO();
		StudyCafeVO studyCafeVO = new StudyCafeVO();
		List<StudyCafeVO> cafelist = null;
		
		int total = studyCafeDAO.getTotal();
		
		String temp = req.getParameter("page");
		String order = req.getParameter("order");
		String StudyCafeName = req.getParameter("studyCafeName");
		
		int page = temp == null ? 1 : Integer.parseInt(temp);
		
		int rowCount = 20;
		int pageCount = 5;
		int startRow = (page - 1) * rowCount;
		int endPage = (int)(Math.ceil(page/(double)pageCount) * pageCount);
		int startPage = endPage - (pageCount - 1);
		int realEndPage = (int)Math.ceil(total / (double)rowCount);
		endPage = endPage > realEndPage ? realEndPage : endPage;
		
		boolean prev = startPage > 1;
		boolean next = endPage != realEndPage;
		
		Map<String, Integer> pageMap = new HashMap<>();
		pageMap.put("startRow", startRow);
		pageMap.put("rowCount", rowCount);
		
		 if(order == null || order.equals("new")) {
			cafelist = studyCafeDAO.selectAll(pageMap);
		 }else if(order.equals("score")) {
		 	cafelist = studyCafeDAO.arrayByScore(pageMap);
		 }else if(order.equals("like")) {
			 cafelist =studyCafeDAO.arrayByLike(pageMap); 
		 }else if(order.equals("read")) {
			 cafelist = studyCafeDAO.arrayByRead(pageMap);
		 }
		 
		req.setAttribute("cafelist", cafelist);
		req.setAttribute("page", page);
		req.setAttribute("startPage", startPage);
		req.setAttribute("endPage", endPage);
		req.setAttribute("prev", prev);
		req.setAttribute("next", next);
		req.setAttribute("total", total);
		
		req.getRequestDispatcher("/app/cafe/mainReservation.jsp").forward(req, resp);
	}

}
