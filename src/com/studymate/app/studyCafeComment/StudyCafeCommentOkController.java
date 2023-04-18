package com.studymate.app.studyCafeComment;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.google.gson.JsonArray;
import com.google.gson.JsonParser;
import com.studymate.app.Execute;
import com.studymate.app.studyCafeComment.dao.StudyCafeCommentDAO;
import com.studymate.app.studyCafeComment.vo.StudyCafeCommentVO;

public class StudyCafeCommentOkController implements Execute {

	@Override
	public void execute(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		int studyCafeNumber = Integer.valueOf(req.getParameter("studyCafeNumber"));
		StudyCafeCommentDAO studyCafeCommentDAO = new StudyCafeCommentDAO();
		Gson gson = new Gson();
		JsonArray comments = new JsonArray();
		String order = req.getParameter("order");
		List<StudyCafeCommentVO> commentList = null;	 
		
		System.out.println(studyCafeNumber);
		System.out.println(order);
		
		if(order == null || order.equals("new")) {
			commentList = studyCafeCommentDAO.selectAll(studyCafeNumber);			 
		}else if(order.equals("scoreAsc")) {
			commentList = studyCafeCommentDAO.arrayByScoreAsc(studyCafeNumber);			 
		}else if(order.equals("scoreDesc")) {		 
			commentList = studyCafeCommentDAO.arrayByScoreDesc(studyCafeNumber);			 
		}
		
		for(StudyCafeCommentVO comment : commentList) {
			String commentJson = gson.toJson(comment);
			System.out.println(commentJson);
			comments.add(JsonParser.parseString(commentJson));
		}
		
		resp.setContentType("application/json;charset=utf-8");
		PrintWriter out = resp.getWriter();
		out.print(comments.toString());
		out.close();
	}

}
