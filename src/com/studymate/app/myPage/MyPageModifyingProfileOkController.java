package com.studymate.app.myPage;

import java.io.File;
import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;
import com.oreilly.servlet.multipart.FilePart;
import com.oreilly.servlet.multipart.MultipartParser;
import com.oreilly.servlet.multipart.ParamPart;
import com.oreilly.servlet.multipart.Part;
import com.studymate.app.Execute;
import com.studymate.app.member.dto.MemberDTO;
import com.studymate.app.myPage.dao.MyPageDAO;

public class MyPageModifyingProfileOkController implements Execute {
	@Override
	public void execute(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		MemberDTO memberDTO = new MemberDTO();
		MyPageDAO myPageDAO = new MyPageDAO();
		memberDTO.setMemberNumber(2);
		memberDTO.setMemberNickname(req.getParameter("nickname"));
		memberDTO.setMemberPhoneNumber(req.getParameter("phonenumber"));
		memberDTO.setMemberEmail(req.getParameter("email"));
		memberDTO.setMemberPassword(req.getParameter("pw"));
		 System.out.println(memberDTO);
		new MyPageDAO().update(memberDTO);
		
		resp.sendRedirect("/mypage/MyPageModifyingProfile.my");
}}