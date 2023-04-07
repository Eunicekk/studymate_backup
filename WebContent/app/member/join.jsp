<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
   <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>회원가입</title>
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

    <form action="joinOk.me" method="post">
  <div class="login-form">
    <div class="input-group">
      <label for="memberId">아이디</label>
      <input
        type="text"
        name="memberId"
        id="memberId"
        placeholder="4~15자 이내로 입력해주세요"
        required
      />
      <br />
    </div>

       

            <div class="input-group">
              <label for="password">비밀번호</label>
              <input
                type="password"
                name="memberPassword"
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
                name="memberEmail"
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
                name="memberName"
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
                name="memberNickname"
                id="nickname"
                placeholder="별명을 지어주세요"
                required
              />
              <br />
            </div>
          
            <div class="input-group">
              <label for="memberAge">나이</label>
              <input type="text" id="memberAge" name="memberAge" placeholder="Ex)27살" required>
              <br />
          </div>


            <div class="input-group">
                <label for="phone_number">핸드폰번호</label>
                <input type="text" id="phone_number" name="memberPhoneNumber" placeholder="010-1234-5678" required>
                <br />
            </div>

            <div class="input-group">
              <label>성별</label>
              <label for="male">남성</label>
              <input type="radio" id="male" name="memberGender" value="male" required>
              <label for="female">여성</label>
              <input type="radio" id="female" name="memberGender" value="female" required>
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
            <p>이미 회원이신가요 ? <a href="http://localhost:8085/member/login.me">로그인</a></p>
          </div>
        </form>
      </div>
      </div>
    </div>






<!-- 이부분은 모달부분입니다 ~~~~ -->
<div id="myModal" class="modal">
  <div class="modal-content">
    <span class="close">&times;</span>
    <p>회원가입이 완료되었습니다!</p>
  </div>
</div>





    <script>
 // Get the modal
    var modal = document.getElementById("myModal");

    // Get the <span> element that closes the modal
    var span = document.getElementsByClassName("close")[0];

    // When the user clicks the button, open the modal 
    var btn = document.getElementById("signup-btn");
    btn.onclick = function() {
      modal.style.display = "block";
    }

    // When the user clicks on <span> (x), close the modal
    span.onclick = function() {
      modal.style.display = "none";
    }

    // When the user clicks anywhere outside of the modal, close it
    window.onclick = function(event) {
      if (event.target == modal) {
        modal.style.display = "none";
      }
    }
    </script>
  </body>
</html>
    