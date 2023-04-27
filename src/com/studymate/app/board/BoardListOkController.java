package com.studymate.app.board;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.studymate.app.Execute;
import com.studymate.app.board.dao.BoardDAO;
import com.studymate.app.board.dto.BoardDTO;
import com.studymate.app.board.vo.BoardVO;
import com.studymate.app.member.dto.MemberDTO;

public class BoardListOkController implements Execute {

	@Override
	public void execute(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		MemberDTO memberDTO = new MemberDTO(); 
		BoardDAO boardDAO = new BoardDAO();
		int total = boardDAO.getTotal();
		BoardDTO boardDTO = new BoardDTO();
		
//		int boardNumber = boardDAO.updateCommentCount(total);
//		BoardVO board = boardDAO.select(boardNumber);
//		int commentCount = boardDAO.updateCommentCount(boardNumber);
//		board.setBoardCommentCount(commentCount);
		
//		전체 건 수 조회
		req.setAttribute("total", total);
//		System.out.println(total);
		HttpSession session = req.getSession();
//		Integer memberNumber = (Integer) session.getAttribute("memberNumber");
		System.out.println("=====" + session);
//		memberDTO = boardDAO.selectMember(memberNumber);
//		처음 게시판 페이지에 진입하면 페이지에 대한 정보가 없다.
//		그러므로 temp에는 null이 들어간다.
		String temp = req.getParameter("page");
		
//		System.out.println(temp);
//		null인 경우는 게시판에 처음 이동하는 것이므로 1페이지를 띄어주면 된다.
		int page = temp == null ? 1 : Integer.valueOf(temp);
		
//		한 페이지에 몇 개의 게시물? 10개
		int rowCount = 10;
		
//		페이지 버튼 세트는? 10개씩
		int pageCount = 10;
		
//		0, 10 -> 1페이지
//		10, 10 -> 2페이지
//		20, 10 -> 3페이지
		int startRow = (page-1)*rowCount;
		
//		Math.ceil() 올림처리
		int endPage = (int)(Math.ceil(page/(double)pageCount) * pageCount);
//		endPage는 페이지 세트 당 마지막 번호를 의미한다.
		
		int startPage = endPage - (pageCount-1);
//		startPage는 페이지 세트 당 첫 번째 번호를 의미한다.
		
		int realEndPage = (int)Math.ceil(total / (double)rowCount);
//		realEndPage는 전체 페이지 중 가장 마지막 번호를 의미한다.
		
		endPage = endPage > realEndPage ? realEndPage : endPage;
//		첫 번째 페이지 세트가 1~5
//		두 번째 페이지 세트가 6~10이어도
//		realEndPage가 7이라면 두 번째 페이지 세트의 마지막 번호는 7이어야 한다.
		
		boolean prev = startPage >1;
		boolean next = endPage != realEndPage;
		
		
		Map<String, Integer> pageMap = new HashMap<>();
		pageMap.put("startRow", startRow);
		pageMap.put("rowCount", rowCount);
		
//		List<BoardVO> boards = boardDAO.selectAll(pageMap);
//        List<BoardVO> boards = boardDAO.selectAllOrderByCommentCount(pageMap);

		   List<BoardVO> boards;
	        String orderBy = req.getParameter("orderBy");
//	        System.out.println(orderBy);
	        if (orderBy != null && orderBy.equals("commentCount")) {
	            boards = boardDAO.selectAllOrderByCommentCount(pageMap);
	        } else { // 추가된 부분: orderBy가 null이거나 "commentCount"가 아닌 경우는 최신 순으로 정렬
	            boards = boardDAO.selectAll(pageMap);
	        }
	        
	     
	       
	       
		System.out.println(boards);
		
		req.setAttribute("boardList", boards);
		req.setAttribute("page", page);
		req.setAttribute("startPage", startPage);
		req.setAttribute("endPage", endPage);
		req.setAttribute("prev", prev);
		req.setAttribute("next", next);
		
		req.getRequestDispatcher("/app/board/boardList.jsp").forward(req, resp);
	}

}
	
