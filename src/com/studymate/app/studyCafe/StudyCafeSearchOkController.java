package com.studymate.app.studyCafe;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.studymate.app.Execute;
import com.studymate.app.studyCafe.dao.StudyCafeDAO;

public class StudyCafeSearchOkController implements Execute {

	@Override
	public void execute(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String searchCafeName = req.getParameter("studyCafeName");
		new StudyCafeDAO().search(searchCafeName);
	}

}
