package com.studymate.app.admin;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.studymate.app.Execute;
import com.studymate.app.admin.dao.AdminDAO;

public class adminFaqDeleteOk implements Execute {

	@Override
	public void execute(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		int faqNumber = Integer.valueOf(req.getParameter("faqNumber"));
		AdminDAO adminDAO = new AdminDAO();
		
		adminDAO.faqDelete(faqNumber);
		
		resp.sendRedirect("/admin/faqListOk.ad");
		
	}

}
