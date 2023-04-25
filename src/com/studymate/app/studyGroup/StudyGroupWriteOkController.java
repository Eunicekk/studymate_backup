package com.studymate.app.studyGroup;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
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
import com.studymate.app.studyGroup.dao.StudyGroupDAO;
import com.studymate.app.studyGroup.dto.StudyGroupDTO;
import com.studymate.app.studyGroupFile.dao.StudyGroupFileDAO;
import com.studymate.app.studyGroupFile.dto.StudyGroupFileDTO;

public class StudyGroupWriteOkController implements Execute {

	@Override
	public void execute(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		StudyGroupDAO studyGroupDAO = new StudyGroupDAO(); 
		StudyGroupDTO studyGroupDTO = new StudyGroupDTO();
		int studyGroupNumber=0; 
		
		System.out.println("write Ok 컨트롤러 탔음");
		System.out.println(req.getParameter("memberNumber"));
		System.out.println(req.getParameter("studyGroupField"));
		System.out.println(req.getParameter("studyGroupCapacity"));
		System.out.println(req.getParameter("studyGroupOnline"));
		System.out.println(req.getParameter("studyGroupDuration"));
		System.out.println(req.getParameter("studyGroupContact"));
		System.out.println(req.getParameter("studyGroupContactAddress"));
		System.out.println(req.getParameter("studyGroupEndDate"));
		System.out.println(req.getParameter("studyGroupTitle"));
		System.out.println(req.getParameter("studyGroupcontent"));
		
		studyGroupDTO.setMemberNumber(4);
		// 세션 넘버 비교 
//		studyGroupDTO.setMemberNumber((Integer)req.getSession().getAttribute("memberNumber"));
		studyGroupDTO.setStudyGroupField(req.getParameter("studyGroupField"));
		studyGroupDTO.setStudyGroupCapacity(req.getParameter("studyGroupCapacity"));
		studyGroupDTO.setStudyGroupOnline(req.getParameter("studyGroupOnline"));
		studyGroupDTO.setStudyGroupDuration(req.getParameter("studyGroupDuration"));
		studyGroupDTO.setStudyGroupContact(req.getParameter("studyGroupContact"));
		studyGroupDTO.setStudyGroupContactAddress(req.getParameter("studyGroupContactAddress"));
		studyGroupDTO.setStudyGroupEndDate(req.getParameter("studyGroupEndDate"));
		studyGroupDTO.setStudyGroupTitle(req.getParameter("studyGroupTitle"));
		studyGroupDTO.setStudyGroupcontent(req.getParameter("studyGroupcontent"));
	    
	
	    
	    System.out.println(studyGroupDTO);
	    studyGroupDAO.insert(studyGroupDTO);
	    
	    
	    
		
	
	}

}
