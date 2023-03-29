package com.studymate.app.admin;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.studymate.app.Execute;
import com.studymate.app.admin.dao.AdminDAO;
import com.studymate.app.admin.dto.AdminDTO;

public class adminLoginOkCotroller implements Execute {

	@Override
	public void execute(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		AdminDAO adminDAO = new AdminDAO();
		AdminDTO adminDTO = new AdminDTO();
		String adminNickname = "";

		String adminId = req.getParameter("adminId");
		String adminPassword = req.getParameter("adminPassword");

		String path = null;

		HttpSession session = req.getSession();

		adminDTO.setAdminId(adminId);
		adminDTO.setAdminPassword(adminPassword);

		try {
			adminNickname = adminDAO.adminLogin(adminDTO);
			path = "/admin/adminMain.ad";
			session.setAttribute(adminNickname, adminNickname);
		} catch (NullPointerException e) {
			// TODO Auto-generated catch block
			path = "/admin/adminlogin.ad";
			e.printStackTrace();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		

	}

}
