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
		case "/mypage/MyPageModifyingProfile.my":
			new MyPageModifyingProfileController().execute(req, resp);
			break;
		case "/mypage/MyPageModifyingProfileOk.my":
			new MyPageModifyingProfileOkController().execute(req, resp);
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
		case "/mypage/MyPageUsaDetailsOk.my":
			new MyPageUsaDetailsOkController().execute(req, resp);
			break;
		case "/mypage/MyPageLeaderGroupOk.my":
			new MyPageLeaderGroupOkController().execute(req, resp);
			break;
		case "/mypage/MyPageInterestGroupOk.my":
			new MyPageInterestGroupOkController().execute(req, resp);
			break;
		case "/mypage/MyPageParticipatingGroupOk.my":
			new MyPageParticipatingGroupOkController().execute(req, resp);
			break;
		case "/mypage/MyPageEndGroupOk.my":
			new MyPageEndGroupOkController().execute(req, resp);
			break;
		}
	}
}
