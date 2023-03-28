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
      <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/findAccount.css">
    </head>
<body>

    <div class="background">
     <div class="login-wrapper">
      <!-- 스터디 메이트 메인사진과 , 글씨 -->
<div class="header">
  <img src="${pageContext.request.contextPath}/assets/img/studymatelogo.png" alt="" />
    <h2>계정 찾기</h2>
    <br>
    <span>회원 가입시 입력하신 이메일 주소를 입력하시면,
      <br>
      해당 이메일로 아이디 및 비밀번호 변경 링크를 보내드립니다.
    </span>
  </div>

  <br>
  <br>

     <!-- 이메일 주소 입력란 -->
    <form action="#" method="post">
      <div class="input-group">
        <div class="login-form">
        <label for="email">이메일 주소</label>
        <input type="text" id="email" name="email" placeholder="이메일을 입력해주세요"required />
      </div>
    </div>

    <br>
    <br>
    <!-- 버튼 div 계정찾기,취소 -->
    <div class="buttonsAll">
      <div class="buttons">
        <input type="submit" value="계정 찾기" onclick="openModal()"  />
      </div>
      <br>
      <div class="buttons">
        <input type="button" value="취소" onclick="location.href='http://127.0.0.1:5500/workspace/project/login.html'" />
      </div>
    </div> 
    </div>

<!-- 모달창 -->
<div id="myModal" class="modal">
  <div class="modal-content">
    <span class="close">&times;</span>
    <h2>비밀번호 변경</h2>
    <label for="new-password">새 비밀번호:</label>
    <input type="password" id="new-password" name="new-password" required>
    <label for="confirm-password">새 비밀번호 확인:</label>
    <input type="password" id="confirm-password" name="confirm-password" required>
    <button id="submit-btn">확인</button>
    <button id="cancel-btn">취소</button>
  </div>
</div>

 


    </div>
    </div>
  </div>
</div>
    </form>

<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
	<script src="${pageContext.request.contextPath}/assets/js/findAccount.js"></script>




  </body>
</html>
