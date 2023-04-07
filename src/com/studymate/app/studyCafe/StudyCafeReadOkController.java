package com.studymate.app.studyCafe;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.studymate.app.Execute;
import com.studymate.app.studyCafe.dao.StudyCafeDAO;
import com.studymate.app.studyCafe.vo.StudyCafeVO;

public class StudyCafeReadOkController implements Execute {

	@Override
	public void execute(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		int studyCafeNumber = Integer.valueOf(req.getParameter("studyCafeNumber"));
		StudyCafeDAO studyCafeDAO = new StudyCafeDAO();
		StudyCafeVO studyCafeVO = studyCafeDAO.select(studyCafeNumber);
		studyCafeDAO.updateReadCount(studyCafeNumber);
		
		req.setAttribute("studyCafe", studyCafeVO);
		
		req.getRequestDispatcher("/app/cafe/reservation.jsp").forward(req, resp);
	}

}
