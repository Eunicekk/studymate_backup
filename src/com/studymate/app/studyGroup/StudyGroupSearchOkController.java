package com.studymate.app.studyGroup;

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
import com.studymate.app.studyGroup.dao.StudyGroupDAO;
import com.studymate.app.studyGroup.vo.StudyGroupVO;

public class StudyGroupSearchOkController implements Execute {

	@Override
	public void execute(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		StudyGroupVO studyGroupVO = new StudyGroupVO();
		StudyGroupDAO studyGroupDAO = new StudyGroupDAO(); 
		
		
		String searchInput = req.getParameter("searchInput"); 
		
		
		// 페이징 처리 
		int total = studyGroupDAO.getTotal();
		String temp= req.getParameter("page"); 
		
		// null 인 경우에는 게시판에 처음 이동하는 것이므로, 1페이지를 띄워줘 
		int page = temp == null? 1 : Integer.valueOf(temp);
		
		// 한페이지 몇개 게시물 띄울건지 
		int rowCount = 20; 
		
		// 버튼 처리하는 방법 
		int pageCount = 5; 
		
		// 0, 10= 1
		// 10, 10 = 2
		// 20, 10 = 3 
		int startRow = (page - 1) * rowCount ;
		

		Map <String, Integer> pageMap = new HashMap<>();
		pageMap.put("startRow", startRow);
		pageMap.put("rowCount", rowCount);
		
		// 0419 
//		req.setAttribute("studyGroupSearchList", studyGroupSearchList);
		req.setAttribute("total", total);
		
		// gson 
		Gson gson = new Gson();
		JsonArray searchContents = new JsonArray();
		 resp.setContentType("application/json; charset=utf-8");
		 
		 
		 List<StudyGroupVO> studyGroupSearchList = studyGroupDAO.search(searchInput); 
		 
		 for(StudyGroupVO search : studyGroupSearchList) {
			 String searchJson = gson.toJson(search);
			 System.out.println(searchJson);
			 searchContents.add(JsonParser.parseString(searchJson));
		 }
		 
		// 
		/*
		 * if(searchInput!=null ) { System.out.println("검색");
		 * studyGroupDAO.search(searchInput).stream() .map(gson :: toJson)
		 * .map(JsonParser :: parseString) .forEach(searchContents :: add); }
		 */
		 

	     
	 	System.out.println(searchContents);
		PrintWriter out = resp.getWriter();
		out.print(searchContents.toString());
		out.close();
		 
		 
		
	}

}
