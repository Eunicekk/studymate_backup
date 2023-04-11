package com.studymate.app.memberLikeStudyGroup;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.studymate.app.Execute;
import com.studymate.app.memberLikeStudyGroup.dao.MemberLikeStudyGroupDAO;
import com.studymate.app.memberLikeStudyGroup.dto.MemberLikeStudyGroupDTO;
import com.studymate.app.studyGroup.dto.StudyGroupDTO;

public class MemberLikeStudyGroupOkController implements Execute {

	@Override
	public void execute(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		req.setCharacterEncoding("utf-8");
		MemberLikeStudyGroupDAO memberLikeStudyGroupDAO = new MemberLikeStudyGroupDAO();
		StudyGroupDTO studyGroupDTO = new StudyGroupDTO();
		MemberLikeStudyGroupDTO memberLikeStudyGroupDTO = new MemberLikeStudyGroupDTO();

		
		
		Map<String, Object> likeCheck = new HashMap<String, Object>();
		likeCheck.put("memberNumber", req.getParameter("memberNumber"));
		likeCheck.put("studyGroupNumber", req.getParameter("studyGroupNumber"));
		
	
		int result = memberLikeStudyGroupDAO.likeCheck(likeCheck);
		if(result == 0) { // 추천을 안했으면 추천해주고 
			memberLikeStudyGroupDAO.insert(likeCheck);
		} else { // 추천 했으면 삭제 해주기 
			memberLikeStudyGroupDAO.delete(likeCheck);
		}
	
//		PrintWriter out = req.get
		
//		int memberNumber = Integer.valueOf(req.getParameter("memberNumber"));
//		int studyGroupNumber = Integer.valueOf(req.getParameter("studyGroupNumber"));
		
		
		req.setAttribute("memberLikeStudyGroup", likeCheck);

		req.getRequestDispatcher("/app/group/studyGroupMain.jsp").forward(req, resp);
		
	}
	

}
