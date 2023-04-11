package com.studymate.app.board;

import java.io.File;
import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.studymate.app.Execute;
import com.studymate.app.board.dao.BoardDAO;
import com.studymate.app.boardFile.dao.BoardFileDAO;
import com.studymate.app.boardFile.dto.BoardFileDTO;

public class BoardDeleteOkController implements Execute {

	@Override
	public void execute(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		BoardDAO boardDAO = new BoardDAO();
		BoardFileDAO fileDAO = new BoardFileDAO();
		
		int boardNumber = Integer.valueOf(req.getParameter("boardNumber"));
		String uploadPath = req.getSession().getServletContext().getRealPath("/")+"upload/";
		List<BoardFileDTO> files = fileDAO.select(boardNumber);
		
		files.stream().map(file -> file.getBoardFileSystemName())
		.map(name -> new File(uploadPath, name))
		.filter(tmp -> tmp.exists())
		.forEach(tmp -> tmp.delete());	
		fileDAO.delete(boardNumber);
		boardDAO.delete(boardNumber);
		
		resp.sendRedirect("/board/boardListOk.bo");
	
	}

}
