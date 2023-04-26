package com.studymate.app.boardComment;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.studymate.app.Execute;
import com.studymate.app.boardComment.dao.BoardCommentDAO;
import com.studymate.app.boardComment.dto.BoardCommentDTO;

public class BoardCommentUpdateOkController implements Execute {

	@Override
	public void execute(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		BoardCommentDTO boardCommentDTO = new BoardCommentDTO();
		boardCommentDTO.setBoardCommentNumber(Integer.parseInt(req.getParameter("boardCommentNumber")));
		boardCommentDTO.setBoardCommentContent(req.getParameter("boardCommentContent"));
		
		new BoardCommentDAO().update(boardCommentDTO);
	}

}
