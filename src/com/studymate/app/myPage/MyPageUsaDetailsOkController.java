package com.studymate.app.myPage;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.studymate.app.Execute;
import com.studymate.app.myPage.dao.MyPageDAO;
import com.studymate.app.myPage.vo.MyPageVO;

public class MyPageUsaDetailsOkController implements Execute {

	@Override
	public void execute(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		MyPageDAO myPageDAO = new MyPageDAO();

		int memberNumber = 1;

		List<MyPageVO> myUsaDetails = myPageDAO.myUsaDetails(memberNumber);
		System.out.println(myUsaDetails);

		String outputPattern = "yyyy-MM-dd (E) HH:mm";
		SimpleDateFormat outputSdf = new SimpleDateFormat(outputPattern);

		for (MyPageVO vo : myUsaDetails) {
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
		req.setAttribute("myUsaDetails", myUsaDetails);

		req.getRequestDispatcher("/app/mypage/UsageDetails.jsp").forward(req, resp);
	}

}
