package com.studymate.app.reservation;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.google.gson.JsonObject;
import com.google.gson.JsonParser;
import com.studymate.app.Execute;
import com.studymate.app.reservation.dao.ReservationDAO;
import com.studymate.app.reservation.dto.ReservationDTO;

public class ReservationOkController implements Execute {

	@Override
	public void execute(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		ReservationDAO reservationDAO = new ReservationDAO();
		ReservationDTO reservationDTO = new ReservationDTO();
		Gson gson = new Gson();
		
		req.setCharacterEncoding("utf-8");
		
		System.out.println(reservationDTO);
		System.out.println(req.getParameter("buyInfo"));
		
		// JSON 데이터 가져오기
        String buyInfoJson = req.getParameter("buyInfo");
        JsonObject buyInfoObject = JsonParser.parseString(buyInfoJson).getAsJsonObject();
        
        // 필요한 값을 DTO에 설정
        reservationDTO.setReservationStart(buyInfoObject.get("reservationStart").getAsString());
        reservationDTO.setReservationEnd(buyInfoObject.get("reservationEnd").getAsString());
        reservationDTO.setReservationCost(buyInfoObject.get("reservationCost").getAsString());
        reservationDTO.setReservationCapacity(buyInfoObject.get("reservationCapacity").getAsInt());
        reservationDTO.setMemberNumber(buyInfoObject.get("memberNumber").getAsInt());
        reservationDTO.setStudyCafeNumber(buyInfoObject.get("studyCafeNumber").getAsInt());
        
        // 데이터베이스에 삽입
        reservationDAO.insert(reservationDTO);
	}

}
