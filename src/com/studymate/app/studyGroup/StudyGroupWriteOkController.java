package com.studymate.app.studyGroup;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
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
		StudyGroupFileDTO studyGroupFileDTO = new StudyGroupFileDTO();
		StudyGroupFileDAO studyGroupFileDAO = new StudyGroupFileDAO();
		List<String> systemName = new ArrayList<String>();
		List<String> originalName = new ArrayList<String>();
		int studyGroupNumber = 0; 
		
		System.out.println("write Ok 컨트롤러 탔음");
		System.out.println(req.getParameter("studyGroupTitle"));
	
		// 세션 넘버 받아서 저장하기. 

		String uploadPath = req.getSession().getServletContext().getRealPath("/") + "upload/";
		int fileSize = 1024 * 1024 * 5; // 5MB
//		System.out.println(uploadPath);
		
		MultipartParser parser = new MultipartParser(req, fileSize);
		parser.setEncoding("utf-8");
		
		
		
		while(true) {
//	         MultipartParser객체는 여러 폼데이터를 part객체로 분리할 수 있다.
	         Part part = parser.readNextPart();
	         
	         if(part == null) {break; }
	         String fileSystemName = null;
	         String fileOriginalName = null;
	         
//	         part객체가 파일 데이터를 가진 경우
	         if(part.isFile()) {
	            FilePart filePart = (FilePart)part;
	            
	            filePart.setRenamePolicy(new DefaultFileRenamePolicy());
	            fileOriginalName = filePart.getFileName();
	            originalName.add(fileOriginalName);
	            
	            if(fileOriginalName != null) {
//	               파일을 저장하기 위한 정보를 가진 객체를 만든다.
	               File file = new File(uploadPath, fileOriginalName);
//	               파일을 저장한다.
	               filePart.writeTo(file);
//	               저장 후 파일 이름을 다시 뽑으면 저장될 때의 이름이 나온다.
	               fileSystemName = filePart.getFileName();
	               systemName.add(fileSystemName);
	               
//	               studyGroupFileDTO.setGroupFileSystemName(fileSystemName);
//	               studyGroupFileDTO.setGroupFileOriginalName(fileOriginalName);
	               
	            }
	            
	         }else {
//	            part객체가 문자열 데이터를 가진 경우
	            ParamPart paramPart  = (ParamPart)part;
	            String paramName = paramPart.getName();
	            String paramValue = paramPart.getStringValue();
	            
	            
	            if(paramName.equals("titleInput")) {
	            	studyGroupDTO.setStudyGroupTitle(paramValue);
	            }else if(paramName.equals("feild")) {
	            	studyGroupDTO.setStudyGroupField(paramValue);
	            }else if(paramName.equals("online")) {
	            	studyGroupDTO.setStudyGroupOnline(paramValue);
	            }else if(paramName.equals("person")) {
	            	studyGroupDTO.setStudyGroupCapacity(paramValue);
	            }
//	            else if(paramName.equals("")) {
//	            	studyGroupDTO.setStudyGroupStartDate(paramValue);}
	            else if(paramName.equals("kaka")) {
	            	studyGroupDTO.setStudyGroupContact(paramValue);
	            }else if(paramName.equals("selfText")) {
	            	studyGroupDTO.setStudyGroupContactAddress(paramValue);
	            }else if(paramName.equals("date")) {
	            	studyGroupDTO.setStudyGroupDuration(paramValue);
	            }else if(paramName.equals("summernote")) {
	            	studyGroupDTO.setStudyGroupcontent(paramValue);
	            }
	            
	            if(studyGroupDTO.getStudyGroupTitle() == null || studyGroupDTO.getStudyGroupField() == null ||
	            		studyGroupDTO.getStudyGroupOnline() == null || studyGroupDTO.getStudyGroupCapacity() == null ||
	            		studyGroupDTO.getStudyGroupStartDate() == null || studyGroupDTO.getStudyGroupContact() == null ||
	            				studyGroupDTO.getStudyGroupDuration() == null || studyGroupDTO.getStudyGroupcontent() == null
	            		) { continue; }
	            
	            
	            
	            studyGroupDTO.setStudyGroupFileSystemName(systemName.get(0));
	            studyGroupDAO.insert(studyGroupDTO);
	            
//	         studyGroupNumber 칼럼에 마지막으로 저장된 값을 가져온다.
	            studyGroupNumber = studyGroupDAO.getSequence();
	         }
	         
	      }
		
//		System.out.println(originalName);
//		System.out.println(systemName);
		
		for(int i =0 ; i< systemName.size(); i++ ) {
			
			if (i==0) {
				
				studyGroupDTO.setStudyGroupFileSystemName(systemName.get(0));
			} 
			
			studyGroupFileDTO.setGroupFileOriginalName(originalName.get(i));
			studyGroupFileDTO.setGroupFileSystemName(systemName.get(i));
			studyGroupFileDTO.setStudyGroupNumber(studyGroupNumber);
			studyGroupFileDAO.studyGroupFileInsert(studyGroupFileDTO);
		
		}
		
		resp.sendRedirect("/studyGroup/studyGroupMainOk.sg");
		
	
	}

}
