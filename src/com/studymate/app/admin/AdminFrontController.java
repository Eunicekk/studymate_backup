package com.studymate.app.admin;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class AdminFrontController extends HttpServlet{
	
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
		case "/admin/adminlogin.ad":
			new adminLoginCotroller().execute(req, resp);
			break;
		case "/admin/adminloginOk.ad":
			new adminLoginOkCotroller().execute(req, resp);
			break;
		case "/admin/adminlogoutOk.ad":
			new adminLogoutOkCotroller().execute(req, resp);
			break;
		case "/admin/adminMain.ad":
			req.getRequestDispatcher("/app/admin/adminMain.jsp").forward(req, resp);
			break;
		case "/admin/adminMemberCheckOk.ad":
			new adminMemberCheckOk().execute(req,resp);
			break;
		case "/admin/adminMemberSearchOk.ad":
			new adminMemberSearchOk().execute(req,resp);
			break;
		case "/admin/adminMemberDeleteOk.ad":
			new adminMemberDeleteOk().execute(req,resp);
			break;
		case "/admin/adminCafeWriteOk.ad":
			new adminCafeWriteOk().execute(req,resp);
			break;
		case "/admin/adminCafeListOk.ad":
			new adminCafeListOk().execute(req,resp);
			break;
		case "/admin/adminCafeDeleteOk.ad":
			new adminCafeDeleteOk().execute(req,resp);
			break;
		case "/admin/adminCafeSearchOk.ad":
			new adminCafeSearchOk().execute(req,resp);
			break;
		case "/admin/adminBoardListOk.ad":
			new adminBoardListOk().execute(req,resp);
			break;
		case "/admin/adminBoardDeleteOk.ad":
			new adminBoardDeleteOk().execute(req,resp);
			break;
		case "/admin/adminBoardSearchOk.ad":
			new adminBoardSearchOk().execute(req,resp);
			break;
		case "/admin/adminGroupListOk.ad":
			new adminGroupListOk().execute(req,resp);
			break;
		case "/admin/adminGroupDeleteOk.ad":
			new adminGroupDeleteOk().execute(req,resp);
			break;
		case "/admin/adminGroupSearchOk.ad":
			new adminGroupSearchOk().execute(req,resp);
			break;
		case "/admin/faq.ad":
//			req.getRequestDispatcher("/app/admin/faq.jsp").forward(req, resp);
			new adminfaqListOk().execute(req,resp);
			break;
		case "/admin/faqListOk.ad":
			new adminfaqListOk().execute(req,resp);
			break;
		case "/admin/faqWrite.ad":
			req.getRequestDispatcher("/app/admin/faqWrite.jsp").forward(req, resp);
			break;
		case "/admin/faqWriteOk.ad":
			new adminfaqWriteOk().execute(req,resp);
			break;
		case "/admin/faqUpdate.ad":
			new adminUpdate().execute(req,resp);
			break;
		case "/admin/faqUpdateOk.ad":
			new adminFaqUpdateOk().execute(req,resp);
			break;
		case "/admin/faqDeleteOk.ad":
			new adminFaqDeleteOk().execute(req,resp);
			break;
		case "/admin/boardChart.ad":
			new adminBoardChartOk().execute(req,resp);
			break;
		case "/admin/boardMonthChart.ad":
			new adminBoardMonthChartOk().execute(req,resp);
			break;
		case "/admin/groupChart.ad":
			new adminGroupChartOk().execute(req,resp);
			break;
		case "/admin/groupMonthChart.ad":
			new adminGroupMonthChartOk().execute(req,resp);
			break;
		case "/admin/cafeChart.ad":
			new adminCafeChartOk().execute(req,resp);
			break;
		case "/admin/cafeMonthChart.ad":
			new adminCafeMonthChartOk().execute(req,resp);
			break;
		case "/admin/memberChartM.ad":
			new adminMemberChartManOk().execute(req,resp);
			break;
		case "/admin/memberMonthChartM.ad":
			new adminMemberMonthChartManOk().execute(req,resp);
			break;
		case "/admin/memberChartF.ad":
			new adminMemberChartFemaleOk().execute(req,resp);
			break;
		case "/admin/memberMonthChartF.ad":
			new adminMemberMonthChartFemaleOk().execute(req,resp);
			break;
		}
	}
}

