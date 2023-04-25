package com.studymate.app.studyGroup;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class StudyGroupFrontController extends HttpServlet{
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

		switch(target) { 
		case "/studyGroup/studyGroupMainOk.sg":
			System.out.println("group okcontrolrt");
			new StudyGroupMainOkController().execute(req,resp); 
			break;
		case "/studyGroup/studyGroupReadOk.sg":
			System.out.println("read ok");
			new StudyGroupReadOkController().execute(req,resp); 
			break;
		case "/studyGroup/studyGroupOrderOk.sg":
			new StudyGroupOrderOkController().execute(req,resp); 
			break;
		case "/studyGroup/studyGroupSearchOk.sg":
			new StudyGroupSearchOkController().execute(req,resp); 
			break;
		case "/studyGroup/studyGroupDeleteOk.sg":
			System.out.println("삭제 delete ok controller 타는지");
			new StudyGroupDeleteOkController().execute(req,resp); 
			break;
		case "/studyGroup/studyGroupOptionSearchOk.sg":
			System.out.println("옵션 검색기능");
			new StudyGroupOptionSearchOkController().execute(req,resp); 
			break;
		case "/studyGroup/studyGroupWrite.sg":
			System.out.println("글쓰기!페이지 진입!");
			new StudyGroupWriteController().execute(req,resp); 
			break;
		case "/studyGroup/studyGroupWriteOk.sg":
			System.out.println("글쓰기! 완료 사진첨부!");
			new StudyGroupWriteOkController().execute(req,resp); 
			break;
		case "/studyGroup/studyGroupUpdate.sg":
			System.out.println("수정하는 컨트롤러 진입");
			new StudyGroupUpdateController().execute(req,resp); 
			break;
		case "/studyGroup/studyGroupUpdateOk.sg":
			System.out.println("스터디 그룹 수정 완료 컨트롤러 !! main 으로 가야함. ");
			new StudyGroupUpdateOkController().execute(req,resp); 
			break;
			
			
		}
	}
}

