package com.studymate.app.memberLikeStudyGroup;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.studymate.app.Execute;
import com.studymate.app.memberLikeStudyGroup.dao.MemberLikeStudyGroupDAO;
import com.studymate.app.memberLikeStudyGroup.dto.MemberLikeStudyGroupDTO;

public class MemberLikeStudyGroupUpdateOkController implements Execute {

	@Override
	public void execute(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		req.setCharacterEncoding("utf-8");
		
		MemberLikeStudyGroupDAO memberLikeStudyGroupDAO = new MemberLikeStudyGroupDAO();
		MemberLikeStudyGroupDTO memberLikeStudyGroupDTO = new MemberLikeStudyGroupDTO();
		memberLikeStudyGroupDTO.setMemberNumber(1);
//		memberLikeStudyGroupDTO.setMemberNumber((Integer)req.getSession().getAttribute("memberNumber"));
		memberLikeStudyGroupDTO.setStudyGroupNumber(Integer.parseInt(req.getParameter("studyGroupNumber")));
		int result = memberLikeStudyGroupDAO.likeCheck(memberLikeStudyGroupDTO);
		
		System.out.println(result + "====================");
		System.out.println("***************************");
		
		System.out.println(memberLikeStudyGroupDTO);
		
		if(result==0) {
			System.out.println("0이다");
			memberLikeStudyGroupDAO.insert(memberLikeStudyGroupDTO);
		} else {
			System.out.println("0이 아니다");
			memberLikeStudyGroupDAO.delete(memberLikeStudyGroupDTO);
		}
		
		resp.setContentType("text/html; charset=utf-8");
		
		PrintWriter out = resp.getWriter();
		out.print(result);
		out.close();
	}
	

}
