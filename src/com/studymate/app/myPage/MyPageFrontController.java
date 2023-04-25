package com.studymate.app.myPage;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class MyPageFrontController extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doProcess(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doProcess(req, resp);
	}

	protected void doProcess(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String target = req.getRequestURI().substring(req.getContextPath().length());
		System.out.println(target);
		switch (target) {
		case "/mypage/myPageMain.my":
			req.getRequestDispatcher("/app/mypage/myPageMain.jsp").forward(req, resp);
			break;
			// 임시 페이지
		case "/mypage/MyPageModifyingProfile.my":
			new MyPageModifyingProfileController().execute(req, resp);
			break;
		case "/mypage/MyPageModifyingProfileOk.my":
			new MyPageModifyingProfileOkController().execute(req, resp);
			break;
		case "/mypage/MyPageMemberDeleteOk.my":
			new MyPageMemberDeleteOkController().execute(req, resp);
			break;
		case "/mypage/MyPagePortfolioOk.my":
			new MyPagePortfolioOkController().execute(req, resp);
			break;
		case "/mypage/MyPageInterestPlaceOk.my":
			new MyPageInterestPlaceOkController().execute(req, resp);
			break;
		case "/mypage/MyPageReserveOk.my":
			new MyPageReserveOkController().execute(req, resp);
			break;
		case "/mypage/MyPageReserveDeleteOk.my":
			new MyPageReserveDeleteOk().execute(req, resp);
			break;
		case "/mypage/MyPageUsaDetailsOk.my":
			new MyPageUsaDetailsOkController().execute(req, resp);
			break;
		case "/mypage/MyPageUsaDetailsDeleteOk.my":
			new MyPageUsaDetailsDeleteOkController().execute(req, resp);
			break;
		case "/mypage/MyPageLeaderGroupOk.my":
			new MyPageLeaderGroupOkController().execute(req, resp);
			break;
		case "/mypage/MyPageLeaderGroupDeleteOk.my":
			new MyPageLeaderGroupDeleteOkController().execute(req, resp);
			break;
		case "/mypage/MyPageInterestGroupOk.my":
			new MyPageInterestGroupOkController().execute(req, resp);
			break;
		case "/mypage/MyPageInterestGroupDeleteOk.my":
			new MyPageInterestGroupDeleteOkController().execute(req, resp);
			break;
		case "/mypage/MyPageParticipatingGroupOk.my":
			new MyPageParticipatingGroupOkController().execute(req, resp);
			break;
		case "/mypage/myJoinGroupDeleteOk.my":
			new MyPageMyJoinGroupDeleteOkController().execute(req, resp);
			break;
		}
	}
}
