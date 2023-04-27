package com.studymate.app.myPage;

import java.io.IOException;
import java.util.Enumeration;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;
import com.studymate.app.Execute;
import com.studymate.app.memberprofile.dao.MemberProfileDAO;
import com.studymate.app.memberprofile.dto.MemberProfileDTO;
import com.studymate.app.myPage.dao.MyPageDAO;
import com.studymate.app.myPage.vo.MyProfileVO;

public class MyPageModifyingProfileOkController implements Execute {
	@Override
	public void execute(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		MyProfileVO myProfileVO = new MyProfileVO();
		MyPageDAO myPageDAO = new MyPageDAO();
		MemberProfileDAO memberProfileDAO = new MemberProfileDAO();
		MemberProfileDTO memberProfileDTO = new MemberProfileDTO();
		HttpSession session = req.getSession();
//		Integer memberNumber = (Integer)session.getAttribute("memberNumber");
		Integer memberNumber = (Integer) session.getAttribute("memberNumber");		


//		new MyPageDAO().update(memberDTO);
		
		String uploadPath = req.getSession().getServletContext().getRealPath("/") + "upload/";
		int fileSize = 1024 * 1024 * 10;
//
		
		System.out.println(uploadPath);
		MultipartRequest multipartRequest = new MultipartRequest(req, uploadPath, fileSize, "utf-8", new DefaultFileRenamePolicy());
		
		System.out.println("멀티파트");
		Enumeration<String> fileNames = multipartRequest.getFileNames();
		while(fileNames.hasMoreElements()) {
			String name = fileNames.nextElement();
			
			String profileSystemName = multipartRequest.getFilesystemName(name);
			String profileOriginalName = multipartRequest.getOriginalFileName(name);
			
			if(profileSystemName == null) {continue;}
//			myProfileVO.setProfileSystemName(profileSystemName);
//			myProfileVO.setProfileOriginalName(profileOriginalName);
			
			memberProfileDTO.setProfileSystemName(profileSystemName);
			memberProfileDTO.setProfileOriginalName(profileOriginalName);
			memberProfileDTO.setMemberNumber(memberNumber);
			
			System.out.println("result : " + memberProfileDAO.select(memberNumber));
			
			if(memberProfileDAO.select(memberNumber)>0) {
				memberProfileDAO.update(memberProfileDTO);
				
			}else {
				memberProfileDAO.insert(memberProfileDTO);
			}
		}
		myProfileVO.setMemberNumber(memberNumber);
		myProfileVO.setMemberNickname(multipartRequest.getParameter("nickname"));
		myProfileVO.setMemberPhoneNumber(multipartRequest.getParameter("phonenumber"));
		myProfileVO.setMemberEmail(multipartRequest.getParameter("email"));
		myProfileVO.setMemberPassword(multipartRequest.getParameter("pw"));
		System.out.println(myProfileVO);

		myPageDAO.update(myProfileVO);
		

		resp.sendRedirect("/mypage/myPageMain.my");
		// 임시 url => 메인 url로 변경 해야함
	}
}