package com.studymate.app.myPage;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;
import com.studymate.app.Execute;
import com.studymate.app.myPage.dao.MyPageDAO;
import com.studymate.app.myPage.vo.MyProfileVO;

public class MyPageModifyingProfileOkController implements Execute {
	@Override
	public void execute(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		MyProfileVO myProfileVO = new MyProfileVO();
		MyPageDAO myPageDAO = new MyPageDAO();

		myProfileVO.setMemberNumber(1);
		myProfileVO.setMemberNickname(req.getParameter("nickname"));
		myProfileVO.setMemberPhoneNumber(req.getParameter("phonenumber"));
		myProfileVO.setMemberEmail(req.getParameter("email"));
		myProfileVO.setMemberPassword(req.getParameter("pw"));

		System.out.println(myProfileVO);
//		new MyPageDAO().update(memberDTO);

		myPageDAO.update(myProfileVO);
		String uploadPath = req.getSession().getServletContext().getRealPath("/") + "upload/";
		int fileSize = 1024 * 1024 * 10;

		MultipartRequest multipartRequest = new MultipartRequest(req, uploadPath, fileSize, "utf-8",
				new DefaultFileRenamePolicy());

		System.out.println(uploadPath);

		resp.sendRedirect("/mypage/MyPageModifyingProfile.my");
		// 임시 url => 메인 url로 변경 해야함
	}
}