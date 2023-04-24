package com.studymate.app.studyGroup;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.studymate.app.Execute;
import com.studymate.app.studyGroup.dao.StudyGroupDAO;
import com.studymate.app.studyGroup.vo.StudyGroupVO;
import com.studymate.app.studyGroupFile.dao.StudyGroupFileDAO;
import com.studymate.app.studyGroupFile.dto.StudyGroupFileDTO;

public class StudyGroupMainOkController implements Execute {

	@Override
	public void execute(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// 여기서 페이징 처리하기. 
		// 일단 앞전 dao와 vo를 사용하기 위해 불러오기. 
		
		
		// studyGroupDAO.selectAll();
		// DAO 안애 있는 selectAll을 사용할건데 셀렉트 올의 반환 타입은 List 이므로 
		// List 에다가 저장해준다. 
		// selectAll을 해서 VO로 저장해주고 studyGroups라는 이름도 줌 

		StudyGroupVO studyGroupVO = new StudyGroupVO(); 
		// 페이징 처리 0331 
		StudyGroupDAO studyGroupDAO = new StudyGroupDAO();
		int total = studyGroupDAO.getTotal();
		
		String temp= req.getParameter("page"); 
		// page어디서 만드는지: 
		
		

		
		// null 인 경우에는 게시판에 처음 이동하는 것이므로, 1페이지를 띄워줘 
		int page = temp == null? 1 : Integer.valueOf(temp);
		
		// 한페이지 몇개 게시물 띄울건지 
		int rowCount = 20; 
		
		// 버튼 처리하는 방법 
		int pageCount = 5; 
		
		// 0, 10= 1
		// 10, 10 = 2
		// 20, 10 = 3 
		int startRow = (page - 1) * rowCount ;
		

		Map <String, Integer> pageMap = new HashMap<>();
		pageMap.put("startRow", startRow);
		pageMap.put("rowCount", rowCount);
		
		int endPage = (int)(Math.ceil(page/(double) pageCount)* pageCount);
		// endPage = 페이지 세트당 마지막 번호 
		// 두번째 세트의 경우 endPage = 10 
		// 게시글 갯수에 따라, 마지막 페이지 수를 알려줌. 
		// 마지막에 pageCount 인 5를 곱하기 때문에 5단위로 나옴. 
		
		int startPage = endPage -(pageCount -1);
		// startPage는 페이지 세트당 첫번째 번호를 의미한다. 
		// 근데 5단위씩 밖에 안됨 이 식으로는, 6, 11 이렇게만 나옴. 


		
		int realEndPage = (int)Math.ceil(total/(double)rowCount);
		//		realEndPage는 전체 페이지 중 가장 마지막 번호를 의미한다.
		// 5단위가 아니어도, 전체 게시글 수에 따라 페이지 수 표시해줌. 

		endPage = endPage > realEndPage ? realEndPage : endPage ; 
		// 마지막 페이지가 혹시 진짜 게시글수보다 크니?  
		// ex) 첫번째 페이지 세트가 1~5, 두번째 페이지 세트가 6~10이어도 
		// realEndPage가 7이라면 두번째 페이지세트의 마지막 번호는 7이어야 한다.


		boolean prev = startPage >1 ; 
		// startPage = 5페이지 한 세트 단위로서 1, 6, 11, ... etc 
		// 즉, 현재 페이지가 6일때까지만 이전버튼 존재함
		boolean next = endPage != realEndPage ; 
		// 5단위 페이지 수가 실제 데이터가 들어있는 페이지수와 같아지는 순간에 버튼 사라짐.
		// 더 많다면 만약 27페이지가realEnd이면, endPage는 30인거 아님ㅁ? 그럼!=가 
		

		
		List<StudyGroupVO> studyGroups = studyGroupDAO.selectAll(pageMap);	
		System.out.println(studyGroups);
		req.setAttribute("studyGroups", studyGroups);

		req.setAttribute("page", page);
		req.setAttribute("startPage", startPage);
		req.setAttribute("endPage", endPage);
		req.setAttribute("prev", prev);
		req.setAttribute("next", next);
		
		req.setAttribute("temp", studyGroups);
		
//		// 0413 좋아요 댓글 조회수 정렬
//		req.setAttribute("studyGroupList", studyGroupList);
//		req.setAttribute("total", total);
		
//		req.setAttribute("studyGroups", studyGroups);
		
//		System.out.println(studyGroups);
		// 파란글씨 이름 지어주고 VO가 저장된 리스트들을 넣어줌. 
		
//		System.out.println(req.getParameter("studyGroupLikeCount"));
//		System.out.println((Integer)(req.getAttribute("studyGroupLikeCount")));

		
		
		req.getRequestDispatcher("/app/group/studyGroupMain.jsp").forward(req, resp);
		
		// 여기서 jsp로 간다. 
		

		
		
		
	}

}
