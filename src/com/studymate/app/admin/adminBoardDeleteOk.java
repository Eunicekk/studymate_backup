package com.studymate.app.admin;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.studymate.app.Execute;
import com.studymate.app.admin.dao.AdminDAO;

public class adminBoardDeleteOk implements Execute {

	@Override
	public void execute(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		AdminDAO adminDAO = new AdminDAO();
		
		int boardNumbrer = Integer.valueOf(req.getParameter("boardNumber")); 
		adminDAO.boardDelete(boardNumbrer);
		
//		resp.sendRedirect("/admin/adminBoardCheckOk.ad");
	}

}
