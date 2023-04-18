package com.studymate.app.admin;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.studymate.app.Execute;
import com.studymate.app.admin.cafe.vo.adminCafeVO;
import com.studymate.app.admin.dao.AdminDAO;
import com.studymate.app.studyCafeFile.dto.StudyCafeFileDTO;

public class adminCafeListOk implements Execute {

	@Override
	public void execute(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		AdminDAO adminDAO = new AdminDAO();
		adminCafeVO adminCafeVO = new adminCafeVO();
		List<StudyCafeFileDTO> files = null;
		List<adminCafeVO> cafeList = null;
		
		int total = adminDAO.cafeTotal();
		
		String temp = req.getParameter("page");
		String desc = req.getParameter("order");
		String studyCafeName = req.getParameter("studyCafeName");
		
		int page = temp == null ? 1 : Integer.valueOf(temp);
		
		int rowCount = 21;
		
		int pageCount = 5;
		
		int startRow = (page-1)*rowCount;
		
		int endPage = (int)(Math.ceil(page/(double)pageCount)*pageCount);
		
		int startPage = endPage - (pageCount -1);
		
		int realEndPage = (int)Math.ceil(total / (double)rowCount);
		
		endPage = endPage > realEndPage ? realEndPage : endPage;
		
		boolean prev = startPage >1;
		boolean next= endPage != realEndPage;
		
		
		
		Map<String,Integer> pageMap = new HashMap<String, Integer>();
		pageMap.put("startRow", startRow);
		pageMap.put("rowCount", rowCount);
		
		
		if(desc == null && studyCafeName == null) {
			cafeList = adminDAO.cafeList(pageMap);
		}else if(desc == "like") {
			cafeList = adminDAO.cafeLikeDesc(pageMap);
		}else if(studyCafeName != null) {
			cafeList = adminDAO.cafeSearch(studyCafeName);
		}else {
			cafeList = adminDAO.cafeCommentNumber(pageMap);
		}
		
//		System.out.println(cafeList.get(1).getStudyCafeNumber());
//		cafeList.get(0).setFiles(null);
//		for(int i =1 ; i<= cafeList.size(); i++) {
//			files = adminDAO.cafeFileSelect(i);
////			System.out.println(files);
//			cafeList.get(i-1).setFiles(files);
//		}
//		System.out.println(cafeList);
//		System.out.println(cafeList.get(0).getFiles().get(0).getCafeFileSystemName());
		
//		System.out.println(files);
		
		
		req.setAttribute("cafeList", cafeList);
		req.setAttribute("page", page);
		req.setAttribute("startPage", startPage);
		req.setAttribute("endPage", endPage);
		req.setAttribute("prev", prev);
		req.setAttribute("next", next);
		req.setAttribute("total", total);
		req.setAttribute("files", files);
		
		req.getRequestDispatcher("/app/admin/adminCafeCheck.jsp").forward(req, resp);
		
	}

}
