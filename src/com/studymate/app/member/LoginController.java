package com.studymate.app.member;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.studymate.app.Execute;

public class LoginController implements Execute {

	@Override
	public void execute(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
//		요청 받아온 쿠기를 가져온다
		Cookie[] cookies =  req.getCookies();
		
//		받아온 쿠키가 있다면 반복문 실행
		if(cookies != null) {
//			들어있는 쿠키를 전부 반복문 해서 꺼내온다
			for(Cookie cookie : cookies) {
//				꺼내온 쿠키에 memberId가 있다면 
				if(cookie.getName().equals("memberId")) {
//					memberId = 아이디 입력하는 input에 값을 넣어준다.
					req.setAttribute("memberId", cookie.getValue());
				}
			}
		}
		
		req.getRequestDispatcher("/app/member/login.jsp").forward(req, resp);
	}
}