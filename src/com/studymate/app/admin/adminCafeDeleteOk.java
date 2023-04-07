package com.studymate.app.admin;

import java.io.File;
import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.studymate.app.Execute;
import com.studymate.app.admin.dao.AdminDAO;
import com.studymate.app.studyCafeFile.dto.StudyCafeFileDTO;

public class adminCafeDeleteOk implements Execute {

	@Override
	public void execute(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		AdminDAO adminDAO = new AdminDAO();
		
		int studyCafeNumber = Integer.valueOf(req.getParameter("studyCafeNumber"));
		
//		DB에서 삭제하기 전에 실제 파일을 지워줘야하기 때문에 미리 지워준다.
		String uploadPath = req.getSession().getServletContext().getRealPath("/")+"upload/";
		List<StudyCafeFileDTO> files = adminDAO.cafeFileSelect(studyCafeNumber);
		
//		람다식
		files.stream().map(file -> file.getCafeFileSystemName())
		.map(name -> new File(uploadPath, name))
		.filter(tmp ->tmp.exists())
		.forEach(tmp -> tmp.delete());
		
//		for(FileDTO file : files) {
//			File temp = new File(uploadPath,file.getFileSystemName());
//			
////			존재하지 않으면 오류가 나기 때문에 exists로 존재 여부를 true/false로 받아서 삭제를 실행해준다.
//			if(temp.exists()) {
//				temp.delete();				
//			}
//		}
		
		adminDAO.cafeDelete(studyCafeNumber);
		
		resp.sendRedirect("/admin/adminDeleteOk.ad");

	}

}
