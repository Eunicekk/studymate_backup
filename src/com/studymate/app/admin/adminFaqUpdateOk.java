package com.studymate.app.admin;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.studymate.app.Execute;
import com.studymate.app.admin.dao.AdminDAO;
import com.studymate.app.faq.dto.FaqDTO;

public class adminFaqUpdateOk implements Execute {

	@Override
	public void execute(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		AdminDAO adminDAO = new AdminDAO();
		FaqDTO faqDTO = new FaqDTO();
		HttpSession session = req.getSession();
		String adminNickname =(String) session.getAttribute("adminNickname");
		
		faqDTO.setFaqNumber(Integer.valueOf(req.getParameter("faqNumber")));
		faqDTO.setFaqTitle(req.getParameter("cafeTitle"));
		faqDTO.setFaqContent(req.getParameter("editordata"));
		faqDTO.setAdminNumber(adminDAO.adminNumber(adminNickname));
		
//		System.out.println(adminDAO.adminNumber(adminNickname));
		System.out.println(faqDTO);
		adminDAO.faqUpdate(faqDTO);
		
		resp.sendRedirect("/admin/faqListOk.ad");

	}

}
