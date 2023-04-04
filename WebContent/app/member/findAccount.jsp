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
    <form action="/member/findAccountOk.me" method="post">
      <div class="input-group">
        <div class="login-form">
        <label for="email">이메일 주소</label>
        <input type="text" id="email" name="memberEmail" placeholder="이메일을 입력해주세요"required />
      </div>
    </div>
      

    <br>
    <br>
    <!-- 버튼 div 계정찾기,취소 -->
    <div class="buttonsAll">
      <div class="buttons">
        <input type="submit" value="계정 찾기" onclick="openModal()"  />
      </div>
      </form>
      <br>
      <div class="buttons">
        <input type="button" value="취소" onclick="location.href='http://localhost:8085/member/login.me'" />
      </div>
    </div> 
    </div>


<!-- 모달 창 -->
<div class="modal" id="myModal">
  <div class="modal-content">
    <div class="modal-header">
      <span class="close">&times;</span>
      <h2>아이디 및 비밀번호</h2>
    </div>
    <div class="modal-body">
      <p>회원님의 아이디는 <strong>${memberId}</strong>이고, 비밀번호는 <strong>${memberPw}</strong>입니다.</p>
    </div>
  </div>
</div>

<!-- JavaScript 코드 -->
<script>
  // 모달 창을 나타내는 함수
  function openModal() {
    // 모달 창 요소 가져오기
    var modal = document.getElementById("myModal");

    // 모달 창이 이미 열려있다면 함수 종료
    if (modal.style.display === "block") {
      return;
    }

    // 모달 창 열기
    modal.style.display = "block";

    // 모달 창 닫기 버튼 요소 가져오기
    var span = document.getElementsByClassName("close")[0];

    // 모달 창 닫기 버튼 클릭 이벤트 처리
    span.onclick = function() {
      modal.style.display = "none";
    }

    // 모달 창 외부 클릭 이벤트 처리
    window.onclick = function(event) {
      if (event.target == modal) {
        modal.style.display = "none";
      }
    }
  }
</script>
