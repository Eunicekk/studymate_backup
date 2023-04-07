package com.studymate.app.admin;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.studymate.app.Execute;
import com.studymate.app.admin.dao.AdminDAO;
import com.studymate.app.faq.dto.FaqDTO;

public class adminUpdate implements Execute {

	@Override
	public void execute(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		int faqNumber = Integer.valueOf(req.getParameter("faqNumber"));
		AdminDAO adminDAO = new AdminDAO();
		FaqDTO faqDTO = new FaqDTO();
		List<FaqDTO> faq = adminDAO.faqSelect(faqNumber);
		
//		System.out.println(faq);
		faqDTO.setFaqTitle(faq.get(0).getFaqTitle());
		faqDTO.setFaqNumber(faq.get(0).getFaqNumber());
		faqDTO.setFaqContent(faq.get(0).getFaqContent());
//		System.out.println(faqDTO);
		
		req.setAttribute("faq", faqDTO);
		req.getRequestDispatcher("/app/admin/faqUpdate.jsp").forward(req, resp);
	}

}
