package com.studymate.app.boardComment;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.studymate.app.Execute;
import com.studymate.app.boardComment.dao.BoardCommentDAO;
import com.studymate.app.boardComment.dto.BoardCommentDTO;

public class BoardCommentWriteOkController implements Execute {

	@Override
	public void execute(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		BoardCommentDTO boardCommentDTO = new BoardCommentDTO();
		System.out.println("board");
		int boardNumber = Integer.valueOf(req.getParameter("boardNumber"));
		System.out.println(boardNumber);
		boardCommentDTO.setBoardNumber(boardNumber);
		
		req.setCharacterEncoding("utf-8");
		System.out.println("boardNumber");
//		boardCommentDTO.setBoardNumber(Integer.valueOf(req.getParameter("boardNumber") == null ? "0" : req.getParameter("boardNumber")));
//		boardCommentDTO.setBoardNumber(Integer.valueOf(req.getParameter("boardNumber")));
		boardCommentDTO.setMemberNumber(Integer.valueOf(req.getParameter("memberNumber")));
		boardCommentDTO.setBoardCommentContent(req.getParameter("boardCommentContent"));
		System.out.println(boardCommentDTO);
		new BoardCommentDAO().insert(boardCommentDTO);
		System.out.println("boardCommentWirteOk!!!");
	}

}
