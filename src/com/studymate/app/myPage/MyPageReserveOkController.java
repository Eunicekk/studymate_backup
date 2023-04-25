package com.studymate.app.myPage;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.studymate.app.Execute;
import com.studymate.app.myPage.dao.MyPageDAO;
import com.studymate.app.myPage.vo.MyPageVO;
import com.studymate.app.myPage.vo.MyReserveVO;

public class MyPageReserveOkController implements Execute {

	@Override
	public void execute(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		MyPageDAO myPageDAO = new MyPageDAO();
		MyReserveVO myReserveVO = new MyReserveVO();
		List<MyReserveVO> myReservation = null;
		
		HttpSession session = req.getSession();
		session.setAttribute("memberNumber", 1);
		Integer memberNumber = (Integer)session.getAttribute("memberNumber");
		int total = myPageDAO.reservationTotal(memberNumber);
		
		String temp = req.getParameter("page");
		String memberId = req.getParameter("memberId");
		
		int page = temp == null ? 1 : Integer.valueOf(temp);
		
		int rowCount = 2;
		
		int pageCount = 5;
		
		int startRow = (page-1)*rowCount;
		
		int endPage = (int)(Math.ceil(page/(double)pageCount)*pageCount);
		
		int startPage = endPage - (pageCount -1);
		
		int realEndPage = (int)Math.ceil(total / (double)rowCount);
		
		endPage = endPage > realEndPage ? realEndPage : endPage;
		
		boolean prev = startPage >1;
		boolean next= endPage != realEndPage;
		
		
		Map<String,Integer> pageMap = new HashMap<String, Integer>();
		pageMap.put("startRow", startRow);
		pageMap.put("rowCount", rowCount);
		pageMap.put("memberNumber",(Integer)session.getAttribute("memberNumber"));
		
		myReservation = myPageDAO.myReservation(pageMap);
		System.out.println(myReservation);
		
		String outputPattern = "yyyy-MM-dd (E) HH:mm";
		SimpleDateFormat outputSdf = new SimpleDateFormat(outputPattern);

		for (MyReserveVO vo : myReservation) {
		    // 시작시간, 종료시간 정보 저장
		    Date getReservationStart = vo.getReservationStart();
		    Date getReservationEnd = vo.getReservationEnd();
		    vo.setReservationStart(getReservationStart);
		    vo.setReservationEnd(getReservationEnd);

		    // 시작시간 출력
		    String formattedStartDateTime = outputSdf.format(getReservationStart);
		    vo.setFormatStartDate(formattedStartDateTime);

		    // 종료시간 출력
		    String formattedEndDateTime = outputSdf.format(getReservationEnd);
		    vo.setFormatEndDate(formattedEndDateTime);
		}

		req.setAttribute("myReservation", myReservation);
		req.setAttribute("page", page);
		req.setAttribute("startPage", startPage);
		req.setAttribute("endPage", endPage);
		req.setAttribute("prev", prev);
		req.setAttribute("next", next);
		req.setAttribute("total", total);
		req.getRequestDispatcher("/app/mypage/reserve.jsp").forward(req, resp);
	    }

}
