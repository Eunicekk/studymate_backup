<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Document</title>
      <meta charset="UTF-8">
      <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/join.css">
    </head>
    <body>
    
 <div class="background">
      <div class="login-wrapper">
        <div class="header">
          <!-- 로그인 페이지 이미지 -->
          <img src="${pageContext.request.contextPath}/assets/img/studymatelogo.png" alt="" />

          <ul>
            <p>고객님 환영합니다! 기다리고 있었습니다</p>
          </ul>
        </div>

        <br />
        <br />

        <form action="loginProcess.jsp" method="post">
          <div class="login-form">
            <div class="input-group">
              <label for="username">아이디</label>
              <input
                type="text"
                name="username"
                id="username"
                placeholder="4~15자 이내로 입력해주세요"
                required
              />
              <br />
            </div>

            <div class="input-group">
              <label for="password">비밀번호</label>
              <input
                type="password"
                name="password"
                id="password"
                placeholder="최소 6자리 이상(알파벳,숫자 필수)"
                required
              />
              <br />
            </div>

            <div class="input-group">
              <label for="email">이메일</label>
              <input
                type="text"
                name="email"
                id="email"
                placeholder="codewave@studymate.kr"
                required
              />
              <br />
            </div>

            <div class="input-group">
              <label for="realname">실명</label>
              <input
                type="text"
                name="realname"
                id="realname"
                placeholder="홍길동"
                required
              />
              <br />
            </div>

            <div class="input-group">
              <label for="nickname">닉네임</label>
              <input
                type="text"
                name="nickname"
                id="nickname"
                placeholder="별명을 지어주세요"
                required
              />
              <br />
            </div>
          </div>

          <br />
          <div class="entInformation">
            <a href="service_terms.jsp">서비스이용약관 |</a><br />
            <a href="privacy_policy.jsp">| 개인정보처리방침</a>
          </div>

          <br />
          <div class="loginButton">
            <input type="submit" value="회원가입" id="signup-btn" />
          </div>
          
          </div>
          
          <br />
          <div class="footer">
            <!-- 회원가입 누르면 회원가입페이지 login로 넘어감 -->
            <p>이미 회원이신가요 ? <a href="login.jsp">로그인</a></p>
          </div>
        </form>
      </div>
    </div>

    <script src="register.js"></script>
  </body>
</html>
    