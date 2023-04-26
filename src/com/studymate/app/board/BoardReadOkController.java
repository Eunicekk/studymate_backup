package com.studymate.app.board;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.studymate.app.Execute;
import com.studymate.app.board.dao.BoardDAO;
import com.studymate.app.board.vo.BoardVO;
import com.studymate.app.boardFile.dao.BoardFileDAO;
import com.studymate.app.boardFile.dto.BoardFileDTO;

public class BoardReadOkController implements Execute {

	@Override
	public void execute(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		System.out.println("boardboard");
		int boardNumber = Integer.valueOf(req.getParameter("boardNumber"));
		BoardDAO boardDAO = new BoardDAO();
		BoardVO boardVO = boardDAO.select(boardNumber);
		List<BoardFileDTO> files = new BoardFileDAO().select(boardNumber);
		System.out.println(files);
		System.out.println("boardRead 들어왔다!!");
		
		boardDAO.updateReadCount(boardNumber);
		
		
		boardVO.setFiles(files);
		req.setAttribute("board", boardVO);
		req.getRequestDispatcher("/app/board/boardRead.jsp").forward(req, resp);
		System.out.println("boardRead");
	}

}
