package com.studymate.app.member;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.studymate.app.Execute;
import com.studymate.app.member.dao.MemberDAO;
import com.studymate.app.member.dto.MemberDTO;

public class FindAccountOkController implements Execute {

    @Override
    public void execute(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        MemberDAO memberDAO = new MemberDAO();
        MemberDTO memberDTO = new MemberDTO();
        memberDTO.setMemberEmail(req.getParameter("memberEmail"));
        MemberDTO result = memberDAO.findAccount(memberDTO);

        if (result != null) {
            // 회원 정보에서 아이디와 비밀번호 가져오기
            String memberId = result.getMemberId();
            String memberPw = result.getMemberPassword();
System.out.println(memberId);
System.out.println(memberPw);
            // 모달 창에 표시할 아이디와 비밀번호를 HttpServletRequest 객체에 추가
            req.setAttribute("memberId", memberId);
            req.setAttribute("memberPw", memberPw);

            // 모달 창을 표시하는 JSP 페이지로 이동
            req.getRequestDispatcher("/app/member/findAccount.jsp").forward(req, resp);
        } else {
            // 이메일 주소에 해당하는 회원이 없을 경우 에러 메시지를 띄워주거나 다른 처리를 수행합니다.
            // ...
        }
    }
}
