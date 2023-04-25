package com.studymate.app.member;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.studymate.app.Execute;
import com.studymate.app.member.dao.MemberDAO;
import com.studymate.app.member.dto.MemberDTO;

public class LoginOkController implements Execute {

	@Override
	public void execute(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		MemberDAO memberDAO = new MemberDAO();
		MemberDTO memberDTO = new MemberDTO();
		int memberNumber = 0;
		
		//쿠키 사용을 위해 변수로 저장
		String memberId = req.getParameter("memberId");
		String memberPassword = req.getParameter("memberPassword");
		
		
		
//		세션을 저장하기 위한 변수
		String remember = req.getParameter("remember");
		String path = null;
//		세션을 가져오기 위한 변수
		HttpSession session = req.getSession();
		
		
//		memberDTO에 입력받은 값 넣어주기
		memberDTO.setMemberId(memberId);
		memberDTO.setMemberPassword(memberPassword);
		System.out.println(memberDTO);
//		memberNumber =  memberDAO.login(memberDTO);
		
		System.out.println(memberNumber);
		
		  try { // 아이디와 비밀번호를 입력받고 넘겨받은 memberNumber을 가져온다 // 가져왔는데 null이면 login=fail을
		  //주소에 넣어서 반환 // 값이 있으면 메인 페이지로 이동 
			memberDTO = memberDAO.login(memberDTO);
			
		  System.out.println(memberDTO); path = "/app/member/mainLogin.jsp";
		  session.setAttribute("memberNickname", memberDTO.getMemberNickname()); } catch
		  (NullPointerException e) { path = "/member/login.me?login=fail";
		  e.printStackTrace(); } catch(Exception e) { e.printStackTrace(); }
		 
	    
//	    remember에 값이 있으면 즉 기록이 남아있는것이고 이걸 시간을 설정해서 쿠키에 아이디를 가져와서 저장한다.
	    if(remember != null) {
//	    	memberId 으로 가져온 memberId를(input에 있는 id)넣어준다.
	    	Cookie cookie = new Cookie("memberId", memberId);
	    	cookie.setMaxAge(60*60*24);
	    	resp.addCookie(cookie);
	    }
	    

//		위에 조건을 거친 값으로 path를 설정받아서 이 페이지로 넘겨준다.
	    System.out.println(path);
		resp.sendRedirect(path);
		
	}
}