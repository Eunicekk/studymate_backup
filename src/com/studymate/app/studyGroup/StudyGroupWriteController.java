package com.studymate.app.studyGroup;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.studymate.app.Execute;
import com.studymate.app.member.dao.MemberDAO;

public class StudyGroupWriteController implements Execute {

	@Override
	public void execute(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
//		여기서 세션 비교후에 로그인페이지로 넘어가거나 글쓰기 작성 페이지로 넘어가기
		MemberDAO memberDAO = new MemberDAO(); 
		HttpSession session = req.getSession();
	    Integer memberNumber = (Integer)session.getAttribute("memberNumber");
	    
	    String path = null;
	      
		
		  if(memberNumber == null) { path = "/app/group/studyGroupWrite.jsp"; }
		 
		/* else {
		 * path = "/app/member/login.jsp"; req.setAttribute("memberId",
		 * memberDAO.getMemberId(memberNumber)); }
		 */
	      System.out.println(memberNumber);
	      req.getRequestDispatcher(path).forward(req, resp);
	
		
	}

}
