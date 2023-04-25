package com.studymate.app.member;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.studymate.app.Execute;
import com.studymate.app.member.dao.MemberDAO;
import com.studymate.app.member.dto.MemberDTO;

public class PwChange implements Execute {
	@Override
	public void execute(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		 MemberDAO memberDAO = new MemberDAO();
	        MemberDTO memberDTO = new MemberDTO();
	        // 세션에서 memberNumber 가져오기
	        int memberNumber = (int) req.getSession().getAttribute("memberNumber");
	        
	        memberDTO.setMemberNumber(memberNumber);
	        memberDTO.setMemberPassword(req.getParameter("OriginPw"));
	        String confirmPw = req.getParameter("ConfirmOriginPw");
	        
	        if(memberNumber > 0 && memberDTO.getMemberPassword().equals(confirmPw)) {
	            memberDTO.setMemberPassword(confirmPw);
	            memberDAO.newPassword(memberDTO); // 새로운 비밀번호로 변경
				/*
				 * req.getRequestDispatcher("/app/member/login.jsp").forward(req, resp);
				 */	        
	            resp.getWriter().print("success");
	        
	        } else {
					 
	            resp.getWriter().print("fail");
	        }
	    }
}




/*
 * package com.studymate.app.member; 패키지 선언입니다. 해당 클래스는 com.studymate.app.member
 * 패키지에 위치하고 있습니다. 2-6. import 문
 * 
 * 필요한 클래스와 인터페이스를 가져오기 위한 import 문입니다. public class PwChange implements Execute
 * {
 * 
 * PwChange 클래스를 선언하고 Execute 인터페이스를 구현합니다.
 * 
 * @Override
 * 
 * 오버라이딩 된 메소드임을 명시합니다. public void execute(HttpServletRequest req,
 * HttpServletResponse resp) throws ServletException, IOException {
 * 
 * Execute 인터페이스의 execute 메소드를 구현합니다. 이 메소드는 HttpServletRequest와
 * HttpServletResponse 객체를 매개변수로 받고, ServletException과 IOException을 던집니다.
 * MemberDAO memberDAO = new MemberDAO();
 * 
 * MemberDAO 객체를 생성합니다. 이 객체는 데이터베이스와의 연동을 담당합니다. MemberDTO memberDTO = new
 * MemberDTO();
 * 
 * MemberDTO 객체를 생성합니다. 이 객체는 사용자 정보를 담고 있습니다. int memberNumber = (int)
 * req.getSession().getAttribute("memberNumber");
 * 
 * 세션에서 "memberNumber" 속성을 가져와서 memberNumber 변수에 저장합니다.
 * memberDTO.setMemberNumber(memberNumber);
 * 
 * 가져온 memberNumber를 memberDTO 객체의 memberNumber 필드에 설정합니다.
 * memberDTO.setMemberPassword(req.getParameter("OriginPw"));
 * 
 * 요청 파라미터에서 "OriginPw" 값을 가져와서 memberDTO 객체의 memberPassword 필드에 설정합니다. String
 * confirmPw = req.getParameter("ConfirmOriginPw");
 * 
 * 요청 파라미터에서 "ConfirmOriginPw" 값을 가져와서 confirmPw 변수에 저장합니다. if(memberNumber > 0
 * && memberDTO.getMemberPassword().equals(confirmPw)) {
 * 
 * memberNumber가 0보다 크고, memberDTO의 memberPassword와 confirmPw가 같은지 확인합니다.
 * memberDTO.setMemberPassword(confirmPw);
 * 
 * memberDTO 객체의 memberPassword 필드에 confirmPw 값을 설정합니다.
 * memberDAO.newPassword(memberDTO); // 새로운 비밀번호로 변경
 * 
 * memberDAO 객체의 newPassword 메소드를 호출하여 데이터베이스에 저장된 사용자 비밀번호를 새로운 비밀번호로 변경합니다.
 * req.getRequestDispatcher("/app/member/login.jsp").forward(req, resp);
 * 
 * 변경된 비밀번호로 로그인 페이지로 이동합니다. } else {
 * 
 * memberNumber가 0 이하거나, memberDTO의 memberPassword와 confirmPw가 다른 경우에 실행됩니다.
 * resp.getWriter().print("fail");
 * 
 * 응답 객체를 통해 "fail" 문자열을 출력합니다. 22-23. } - if-else 문과 execute 메소드의 종료를 나타냅니다.
 * 
 * } PwChange 클래스
 */