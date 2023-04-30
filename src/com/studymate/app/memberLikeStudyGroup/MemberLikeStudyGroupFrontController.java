package com.studymate.app.memberLikeStudyGroup;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.studymate.app.studyGroupComment.StudyGroupCommentOkController;

public class MemberLikeStudyGroupFrontController extends HttpServlet{
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
		switch(target) {
		case "/memberLikeStudyGroup/memberLikeCheckOk.mlsg":
			System.out.println("내가한 좋아요 띄우기");
			new MemberLikeStudyGroupCheckOkController().execute(req,resp);
			break;
		case "/memberLikeStudyGroup/memberLikeStudyGroupUpdateOk.mlsg":
			System.out.println("좋아요 여부 확인하기");
			new MemberLikeStudyGroupUpdateOkController().execute(req,resp);
			break;
		case "/memberLikeStudyGroup/memberLikeStudyGroupOk.mlsg":
			System.out.println("좋아요 누르고 재업로드");
			new MemberLikeStudyGroupOkController().execute(req,resp);
			break;
		
		}
	}
}

