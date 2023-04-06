package com.studymate.app.studyGroupComment;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.google.gson.JsonArray;
import com.google.gson.JsonParser;
import com.studymate.app.Execute;
import com.studymate.app.studyGroup.dao.StudyGroupDAO;
import com.studymate.app.studyGroup.vo.StudyGroupVO;
import com.studymate.app.studyGroupComment.dao.StudyGroupCommentDAO;
import com.studymate.app.studyGroupComment.vo.StudyGroupCommentVO;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class StudyGroupCommentOkController implements Execute {

	@Override
	public void execute(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub

		// 이 변수는 jsp 작업 전에, 미리 만들고 간다. jsp에서 잊지 말고 처리 해줘야 함.  
		int studyGroupNumber =  Integer.valueOf(req.getParameter("studyGroupNumber"));
		//----------------

		StudyGroupVO studyGroupVO = new StudyGroupVO();
		req.setAttribute("studyGroup", studyGroupVO);
		
		StudyGroupCommentDAO studyGroupCommentDAO = new StudyGroupCommentDAO();
		Gson gson = new Gson();
		JsonArray comments = new JsonArray();
		// 제이슨을 쓰는 이유는? 우리가 만든 DAO의 selectAll 의 
		// 반환타입이 list이기 때문이다. 
		// 왜냐면 우리는 이 list를 가지고 비동기 통신을 하기 위해서 
		// 자바 스크립트에 가지고 가서 처리해야하는데. 자바의 리스트는
		// 자바스크립트에서 호환이 안되므로, 호환 가능한. 제이슨!! 의 array를 가지고 온다. 
		
		
//		 List<StudyGroupCommentVO> commentList = studyGroupCommentDAO.selectAll(StudyGroupNumber);
		 // 일단 자바에 만들어놓은 list를 가지고 온다. 
		 
		 
//		 for(StudyGroupCommentVO comment : commentList ) {
//			 
//			 String commentJson = gson.toJson(comment);
//			 System.out.println(commentJson);
//			 // json형식을 문자열 json 객체로 형변환을 해줘야 함. 
//			 comments.add(JsonParser.parseString(commentJson));
//		 }
		
		
		// 위 주석 내용을 짧고 쉽게 바꿔보기 1단계 
//		studyGroupCommentDAO.selectAll(StudyGroupNumber).stream()
//		.map(comment -> gson.toJson(comment))
//		.map(commentJson -> JsonParser.parseString(commentJson))
//		.forEach(c -> comments.add(c));
		
		// 매개변수 없이 2단계 
		studyGroupCommentDAO.selectAll(studyGroupNumber).stream()
		.map(gson :: toJson)
		.map(JsonParser :: parseString)
		.forEach(comments :: add);
		
		 resp.setContentType("application/json; charset=utf-8");
		 PrintWriter out = resp.getWriter();
		 out.print(comments.toString());
		 out.close();
	
//		 studyGroupCommentDAO.selectAll(StudyGroupNumber).stream()
//		 .map(gson :: toJson)
//		 .map(JsonParser :: parseString)
//		 .forEach(comments :: add);
//		 
//		 
//		 PrintWriter out = resp.getWriter();
//		 
//	     out.print(comments.toString());
//	     out.close();
		 
	}
		
	

}
