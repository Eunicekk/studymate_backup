package com.studymate.app.board;

import java.io.File;
import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;
import com.oreilly.servlet.multipart.FilePart;
import com.oreilly.servlet.multipart.MultipartParser;
import com.oreilly.servlet.multipart.ParamPart;
import com.oreilly.servlet.multipart.Part;
import com.studymate.app.Execute;
import com.studymate.app.board.dao.BoardDAO;
import com.studymate.app.board.dto.BoardDTO;
import com.studymate.app.boardFile.dao.BoardFileDAO;
import com.studymate.app.boardFile.dto.BoardFileDTO;

public class BoardUpdateOkController implements Execute {

	@Override
	public void execute(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		 BoardDAO boardDAO = new BoardDAO();
	      BoardDTO boardDTO = new BoardDTO();
	      BoardFileDAO fileDAO = new BoardFileDAO();
	      BoardFileDTO fileDTO = new BoardFileDTO();
	      
	      //임의
	      HttpSession session = req.getSession();
	      int boardNumber = 0;
	      
	      
	      session.setAttribute("memberNumber", 2);
	      System.out.println("UpdateOk컨트롤러 들어왔다!!!");
	      System.out.println(req.getParameter("boardTitle"));
	      
	      String uploadPath = req.getSession().getServletContext().getRealPath("/") + "upload/";
	      int fileSize = 1024 * 1024 * 5; //5MB
	      System.out.println(uploadPath);
	      
//	      하나의 input에 multiple 속성을 사용하여 여러 파일을 전달하는 경우 아래 코드를 사용한다.
//	      =======================================

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
	            
	            if(fileOriginalName != null) {
//	               파일을 저장하기 위한 정보를 가진 객체를 만든다.
	               File file = new File(uploadPath, fileOriginalName);
//	               파일을 저장한다.
	               filePart.writeTo(file);
//	               저장 후 파일 이름을 다시 뽑으면 저장될 때의 이름이 나온다.
	               fileSystemName = filePart.getFileName();
	               
	               fileDTO.setBoardFileSystemName(fileSystemName);
	               fileDTO.setBoardFileOriginalName(fileOriginalName);
	               fileDTO.setBoardNumber(boardNumber);
	               
	               fileDAO.insert(fileDTO);
	            }
	            
	         }else {
//	            part객체가 문자열 데이터를 가진 경우
	            ParamPart paramPart  = (ParamPart)part;
	            String paramName = paramPart.getName();
	            String paramValue = paramPart.getStringValue();
	            
	            if(paramName.equals("boardTitle")) {
	               boardDTO.setBoardTitle(paramValue);
	            }else if(paramName.equals("editordata")) {
	               boardDTO.setBoardContent(paramValue);
	            }else if(paramName.equals("boardNumber")) {
	               boardNumber = Integer.parseInt(paramValue);
	               boardDTO.setBoardNumber(boardNumber);
	            }
	            
	            if(boardDTO.getBoardTitle() == null || boardDTO.getBoardContent() == null) { continue; }
	            
	            boardDTO.setMemberNumber((Integer)req.getSession().getAttribute("memberNumber"));
	            System.out.println(boardDTO);
	            boardDAO.update(boardDTO);
	            
//	            =============================
	            List<BoardFileDTO> files = fileDAO.select(boardNumber);
	            
	            files.stream().map(file -> file.getBoardFileSystemName())
	            .map(name -> new File(uploadPath, name))
	            .filter(tmp -> tmp.exists())
	            .forEach(tmp -> tmp.delete());
	            
	            fileDAO.delete(boardNumber);
//	            =============================
	         }
	      }
	      
	      resp.sendRedirect("/board/boardListOk.bo");
	   }

	}


