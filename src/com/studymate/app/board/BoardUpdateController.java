package com.studymate.app.board;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.studymate.app.Execute;
import com.studymate.app.board.dao.BoardDAO;

public class BoardUpdateController implements Execute {

	@Override
	public void execute(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		int boardNumber = Integer.valueOf(req.getParameter("boardNumber"));
		BoardDAO boardDAO = new BoardDAO();
		
		req.setAttribute("board", boardDAO.select(boardNumber));
		System.out.println("board");
		req.getRequestDispatcher("/app/board/boardUpdate.jsp").forward(req, resp);
	}

}
