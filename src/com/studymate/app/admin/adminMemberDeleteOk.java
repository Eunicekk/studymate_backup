package com.studymate.app.admin;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.studymate.app.Execute;
import com.studymate.app.admin.dao.AdminDAO;

public class adminMemberDeleteOk implements Execute {

	@Override
	public void execute(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		int memberNumber = Integer.valueOf(req.getParameter("memberNumber")); 
		new AdminDAO().memberDelete(memberNumber);
		
		
		resp.sendRedirect("/admin/adminMemberCheckOk.ad");
	}

}
