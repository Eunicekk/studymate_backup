package com.studymate.app.admin;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.google.gson.JsonArray;
import com.google.gson.JsonParser;
import com.studymate.app.Execute;
import com.studymate.app.admin.dao.AdminDAO;

public class adminBoardMonthChartOk implements Execute {

	@Override
	public void execute(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		AdminDAO adminDAO = new AdminDAO();
		Gson gson = new Gson();

		JsonArray chartMonth = new JsonArray();

		List<Map<String, Integer>> chartList = adminDAO.boardChartMonth();

		System.out.println(chartList);

		adminDAO.boardChartMonth().stream().map(gson::toJson).map(JsonParser::parseString).forEach(chartMonth::add);

		resp.setContentType("application/json; charset=utf-8");
		PrintWriter out = resp.getWriter();
		out.print(chartMonth.toString());
		out.close();
	}

}
