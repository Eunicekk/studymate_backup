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
      <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/login.css">
    </head>
    <body>

    

      <div class="background">
      <div class="login-wrapper">
      <div class="header">
        <!-- 로그인 페이지 이미지 -->
      <img src="${pageContext.request.contextPath}/assets/img/studymatelogo.png" alt="">
      <br>
        <ul>
          <p>관리자님 환영합니다! 기다리고 있었습니다</p>
        </ul>
      </div>

            <br>
            <br>
      
      <!-- SNS통해 로그인  -->
      <div class="loginText">
     
    </div>
    
      <div class="snsLogin">
       
  



      </div>

<br>

      <!-- studymate 관리자 로그인 -->
      
     <div class="wrapHr">
      <div class="hr">
      </div>
     <span class="studymateLogin">studymate 관리자 로그인</span>
     <div class="hr">
     </div>
      <br>
    </div>




    <div class="login-form-container">
      <div class="login-form">
        <!-- 로그인폼 -->
        <form method="post" action="adminloginOk.ad" id="login">
          <div class="input-group">
            <label for="adminId">아이디</label>
            <input type="text" name="adminId" id="adminId" required><br><br>
          </div>
          <div class="input-group">
            <label for="adminPassword">비밀번호</label>
            <input type="password" name="adminPassword" id="adminPassword" required><br><br>
          </div>
    
          <!-- 계정찾기 누르면 계정찾기 findAccount로 이동 -->
          <div class="findAccount">
          </div>
          <br>
    
          <!-- 로그인 버튼  -->
          <div class="loginButton">
            <input type="submit" value="로그인" id="login">
          </div>
        </form>
      </div>
    </div>
    
    <div class="footer">
      <!-- 회원가입 누르면 회원가입페이지 register로 넘어감 -->
      <br>
    </div>
    
      
    </body>
    </html>
      </div>

    </div>
  </div>
    </form>
    <script src="${pageContext.request.contextPath}/assets/js/adminlogin.js"></script>
  </body>
</html>
    