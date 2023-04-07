package com.studymate.app.member;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.studymate.app.Execute;
import com.studymate.app.member.dao.MemberDAO;
import com.studymate.app.member.dto.MemberDTO;

public class FindAccountOkController implements Execute {

    @Override
    public void execute(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        MemberDAO memberDAO = new MemberDAO();
        MemberDTO memberDTO = new MemberDTO();
        memberDTO.setMemberEmail(req.getParameter("memberEmail"));
        memberDTO.setMemberId(req.getParameter("memberId"));

        // 이메일과 아이디를 통해 사용자 정보를 가져옴
        MemberDTO userInfo = memberDAO.findAccount(memberDTO);

        // 사용자 정보가 존재하는 경우
        if (userInfo != null) {
            memberDTO.setMemberPassword(req.getParameter("memberPassword"));
            memberDTO.setMemberNumber(userInfo.getMemberNumber());

            // 비밀번호 변경
            int result = memberDAO.updatePassword(memberDTO);
            if (result == 1) {
                // 비밀번호 변경 성공
                resp.sendRedirect(req.getContextPath() + "/member/login.me");
            } else {
                // 비밀번호 변경 실패
                req.setAttribute("error", "비밀번호 변경에 실패했습니다.");
                req.getRequestDispatcher("/app/member/findAccount.jsp").forward(req, resp);

            }
        } else {
            // 사용자 정보가 존재하지 않는 경우
            req.setAttribute("error", "이메일 또는 아이디가 일치하지 않습니다.");
            req.getRequestDispatcher("/app/member/findAccount.jsp").forward(req, resp);

        }
    }
}
