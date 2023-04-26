package com.studymate.app.admin;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
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
import com.studymate.app.admin.dao.AdminDAO;
import com.studymate.app.studyCafe.dto.StudyCafeDTO;
import com.studymate.app.studyCafeFile.dao.StudyCafeFileDAO;
import com.studymate.app.studyCafeFile.dto.StudyCafeFileDTO;

public class adminCafeWriteOk implements Execute {
	@Override
	public void execute(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		AdminDAO adminDAO = new AdminDAO();
		StudyCafeDTO studyCafeDTO = new StudyCafeDTO();
		StudyCafeFileDTO studyCafeFileDTO = new StudyCafeFileDTO();
		StudyCafeFileDAO studyCafeFileDAO = new StudyCafeFileDAO();
		List<String> systemName = new ArrayList<String>();
		List<String> originalName = new ArrayList<String>();
		Calendar cal = Calendar.getInstance();
		cal.add(Calendar.MONTH, 6);
		SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
		String dateString = format.format(cal.getTime());
		int studyCafeNumber = 0;

		System.out.println("writeOk컨트롤러 들어왔다!!!");
		System.out.println(req.getParameter("cafeTitle"));

		String uploadPath = req.getSession().getServletContext().getRealPath("/") + "upload/";
		int fileSize = 1024 * 1024 * 5; // 5MB
		System.out.println(uploadPath);

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
	               
//	               studyCafeFileDTO.setCafeFileSystemName(fileSystemName);
//	               studyCafeFileDTO.setCafeFileOriginalName(fileOriginalName);
	              
	            }
	            
	         }else {
//	            part객체가 문자열 데이터를 가진 경우
	            ParamPart paramPart  = (ParamPart)part;
	            String paramName = paramPart.getName();
	            String paramValue = paramPart.getStringValue();
	            
	            //수용인원도 추가 해야함
	            if(paramName.equals("cafeTitle")) {
	            	studyCafeDTO.setStudyCafeName(paramValue);
	            }else if(paramName.equals("editordata")) {
	            	studyCafeDTO.setStudyCafeContent(paramValue);
	            }else if(paramName.equals("address")) {
	            	studyCafeDTO.setStudyCafeAddress(paramValue);
	            }else if(paramName.equals("price")) {
	            	studyCafeDTO.setStudyCafePrice(paramValue);
	            }
	            
	            if(studyCafeDTO.getStudyCafeName() == null || studyCafeDTO.getStudyCafeContent() == null ||
	            		studyCafeDTO.getStudyCafeAddress() == null || studyCafeDTO.getStudyCafePrice() == null) { continue; }
	            
//	            studyCafeDTO.setMemberNumber((Integer)req.getSession().getAttribute("memberNumber"));
	            studyCafeDTO.setCafeFileSystemName(systemName.get(0));
	            studyCafeDTO.setStudyCafeAvaliableDate(dateString);
	            studyCafeDTO.setStudyCafeAvaliableCapacity(60);
	            System.out.println(studyCafeDTO);
	            System.out.println(dateString);
	            adminDAO.cafeInsert(studyCafeDTO);
	            
//	         boardNumber 칼럼에 마지막으로 저장된 값을 가져온다.
	            studyCafeNumber = adminDAO.getSequence();
	         }
	         
	      }
//		System.out.println(originalName);
//		System.out.println(systemName);
		
		for(int i =0;i < systemName.size(); i++) {			

			if(i ==0) {
				studyCafeDTO.setCafeFileSystemName(systemName.get(0));
			}
			studyCafeFileDTO.setCafeFileOriginalName(originalName.get(i));
			studyCafeFileDTO.setCafeFileSystemName(systemName.get(i));
			studyCafeFileDTO.setStudyCafeNumber(studyCafeNumber);
			adminDAO.cafeFileInsert(studyCafeFileDTO);
		}		        
        
//		System.out.println(studyCafeDTO);
//		System.out.println(studyCafeFileDTO);
		
		resp.sendRedirect("/admin/adminMain.ad");
	}
}
