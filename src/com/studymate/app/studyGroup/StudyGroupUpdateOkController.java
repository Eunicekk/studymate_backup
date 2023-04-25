package com.studymate.app.studyGroup;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.studymate.app.Execute;
import com.studymate.app.studyGroup.dao.StudyGroupDAO;
import com.studymate.app.studyGroup.dto.StudyGroupDTO;
import com.studymate.app.studyGroupFile.dto.StudyGroupFileDTO;

public class StudyGroupUpdateOkController implements Execute {

	@Override
	public void execute(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		StudyGroupDTO studyGroupDTO = new StudyGroupDTO(); 
		StudyGroupDAO studyGroupDAO = new StudyGroupDAO();
//		List <StudyGroupDTO> reContents = studyGroupDAO.update(studyGroupDTO);
		
		
		

	}

}
