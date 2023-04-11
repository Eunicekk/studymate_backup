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

public class MyPageEndGroupOkController implements Execute {

	@Override
	public void execute(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		MyPageDAO myPageDAO = new MyPageDAO();

		int memberNumber = 1;

		List<MyPageVO> myEndGroup = myPageDAO.myEndGroup(memberNumber);
		System.out.println(myEndGroup);

		String outputPattern = "yyyy-MM-dd (E)";
		SimpleDateFormat outputSdf = new SimpleDateFormat(outputPattern);

		for (MyPageVO vo : myEndGroup) {
		    // 시작시간, 종료시간 정보 저장
		    Date getStudyGroupStartDate = vo.getStudyGroupStartDate();
		    Date getStudyGroupEndDate = vo.getStudyGroupEndDate();
		    vo.setStudyGroupStartDate(getStudyGroupStartDate);
		    vo.setStudyGroupEndDate(getStudyGroupEndDate);

		    // 시작시간 출력
		    String formattedStartDateTime = outputSdf.format(getStudyGroupStartDate);
		    vo.setFormatStartDate(formattedStartDateTime);

		    // 종료시간 출력
		    String formattedEndDateTime = outputSdf.format(getStudyGroupEndDate);
		    vo.setFormatEndDate(formattedEndDateTime);
		}
		req.setAttribute("myEndGroup", myEndGroup);

		req.getRequestDispatcher("/app/mypage/endGroup.jsp").forward(req, resp);
}
	}
