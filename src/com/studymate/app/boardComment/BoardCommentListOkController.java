package com.studymate.app.boardComment;

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
import com.studymate.app.boardComment.dao.BoardCommentDAO;
import com.studymate.app.boardComment.vo.BoardCommentVO;

public class BoardCommentListOkController implements Execute {

	@Override
	public void execute(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
//		System.out.println("boardNumber");
		int boardNumber = Integer.valueOf(req.getParameter("boardNumber"));
	      BoardCommentDAO boardCommentDAO = new BoardCommentDAO();
	      Gson gson = new Gson();
	      JsonArray comments = new JsonArray();
	      List<BoardCommentVO> commentList = boardCommentDAO.selectAll(boardNumber);
	      
	      
	      boardCommentDAO.selectAll(boardNumber).stream()
	      .map(gson::toJson)
	      .map(JsonParser::parseString)
	      .forEach(comments::add);
	      System.out.println(comments);
	      resp.setContentType("application/json; charset=utf-8");
	      PrintWriter out = resp.getWriter();
	      out.print(comments.toString());
	      out.close();
	      System.out.println("CommentListOk");
	}

}
