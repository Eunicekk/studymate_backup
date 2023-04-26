package com.studymate.app.boardComment;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.studymate.app.Execute;
import com.studymate.app.boardComment.dao.BoardCommentDAO;

public class BoardCommentDeleteOkController implements Execute {

	@Override
	public void execute(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		int boardCommentNumber = Integer.parseInt(req.getParameter("boardCommentNumber"));
		System.out.println(boardCommentNumber);
		new BoardCommentDAO().delete(boardCommentNumber);
		System.out.println(boardCommentNumber);
	}

}
