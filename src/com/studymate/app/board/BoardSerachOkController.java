package com.studymate.app.board;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.studymate.app.Execute;
import com.studymate.app.board.dao.BoardDAO;
import com.studymate.app.board.vo.BoardVO;

public class BoardSerachOkController implements Execute {


	@Override
	public void execute(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		  BoardDAO boardDAO = new BoardDAO(); // DAO 객체 생성
		  String boardTitle = req.getParameter("boardTitle"); // 파라미터 값 받아오기
	        
	        List<BoardVO> boardList = boardDAO.searchBoardTitle(boardTitle); // DAO 메소드 실행
	        
	        

	}

}
