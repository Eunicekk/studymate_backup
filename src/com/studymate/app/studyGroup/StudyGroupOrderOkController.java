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

public class StudyGroupOrderOkController implements Execute {

	@Override
	public void execute(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		// 0413 좋아요 댓글 조회수 순 정렬 
		
		StudyGroupVO studyGroupVO = new StudyGroupVO();
		List<StudyGroupVO> studyGroupList = null;
		StudyGroupDAO studyGroupDAO = new StudyGroupDAO();
		String order = req.getParameter("order");
		String studyGroupNumber = req.getParameter("studyGroupNumber");
		String studyGroupTitle = req.getParameter("studyGroupTitle");
		int total = studyGroupDAO.getTotal();
		
		String temp= req.getParameter("page"); 
		// page어디서 만드는지: 
		
		

		
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
		
		// 0413 좋아요 댓글 조회수 정렬
		req.setAttribute("studyGroupList", studyGroupList);
		req.setAttribute("total", total);
	
		// gson 
		Gson gson = new Gson();
		JsonArray orderContents = new JsonArray();
		 resp.setContentType("application/json; charset=utf-8");
		// 파란색 글씨 변수는 jsp 파일, 각각 옵션에 준 id 혹은 value 값임. 
		if (order == null || order.equals("latest")) {
			studyGroupDAO.selectAll(pageMap).stream()
			.map(gson :: toJson)
			.map(JsonParser :: parseString)
			.forEach(orderContents :: add); 
		} else if (order.equals("viewCount")) {
			System.out.println("조회수선택");
			studyGroupDAO.arrayReadCount(pageMap).stream()
			.map(gson :: toJson)
			.map(JsonParser :: parseString)
			.forEach(orderContents :: add); 
		} else if (order.equals("interest")) {
			System.out.println("좋아요선택");
			studyGroupDAO.arrayLikeCount(pageMap).stream()
			.map(gson :: toJson)
			.map(JsonParser :: parseString)
			.forEach(orderContents :: add); 
		} else if (order.equals("commentCount")) {
			System.out.println("댓글수선택");
			studyGroupDAO.arrayCommentCount(pageMap).stream()
			.map(gson :: toJson)
			.map(JsonParser :: parseString)
			.forEach(orderContents :: add); 
		}
		
		
		resp.setContentType("text/html; charset=utf-8");
		
		System.out.println(orderContents);
		PrintWriter out = resp.getWriter();
		out.print(orderContents);
		out.close();
	}

}
