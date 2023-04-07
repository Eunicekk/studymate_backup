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
		int boardNumber = Integer.valueOf(req.getParameter("boardNumber"));
	      BoardCommentDAO boardCommentDAO = new BoardCommentDAO();
	      Gson gson = new Gson();
	      JsonArray comments = new JsonArray();
	      
	      List<BoardCommentVO> commentList = boardCommentDAO.selectAll(boardNumber);
	      
//	      for(ReplyVO reply : replyList) {
//	         String replyJson = gson.toJson(reply);
//	         
//	         System.out.println(replyJson);
////	       json형식의 문자열을 json 객체로 변환시켜 저장한다.
//	         replies.add(JsonParser.parseString(replyJson));
//	      }
	      
	      boardCommentDAO.selectAll(boardNumber).stream()
	      .map(gson::toJson)
	      .map(JsonParser::parseString)
	      .forEach(comments::add);
	      
	      
	      resp.setContentType("application/json; charset=utf-8");
	      PrintWriter out = resp.getWriter();
	      out.print(comments.toString());
	      out.close();
	}

}
