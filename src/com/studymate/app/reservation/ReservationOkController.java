package com.studymate.app.reservation;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.studymate.app.Execute;
import com.studymate.app.reservation.dao.ReservationDAO;
import com.studymate.app.reservation.dto.ReservationDTO;

public class ReservationOkController implements Execute {

	@Override
	public void execute(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		ReservationDAO reservationDAO = new ReservationDAO();
		ReservationDTO reservationDTO = new ReservationDTO();
		
		req.setCharacterEncoding("utf-8");
		
		System.out.println(reservationDTO);
		
		reservationDTO.setReservationStart(req.getParameter("reservationStart"));
		reservationDTO.setReservationEnd(req.getParameter("reservationEnd"));
		reservationDTO.setReservationCost(req.getParameter("reservationCost"));
		reservationDTO.setReservationCapacity(Integer.valueOf(req.getParameter("reservationCapacity")));
		reservationDTO.setMemberNumber(Integer.valueOf(req.getParameter("memberNumber")));
		reservationDTO.setStudyCafeNumber(Integer.valueOf(req.getParameter("studyCafeNumber")));
		
		reservationDAO.insert(reservationDTO);
		
		// req.getRequestDispatcher("/app/mypage/reserve.jsp").forward(req, resp);
	}

}
