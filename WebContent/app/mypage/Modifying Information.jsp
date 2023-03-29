<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>개인 정보 수정</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/reset.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/Modifying Information.css" />
    
  </head>
  <body>
    <div class="main">
      <!-- 헤더 영역 -->
      <div class="header"></div>
      <div class="container">
        <!-- 사이드바 영역 -->
        <div class="sidebar">
          <ul>
            <li class="active"><a href="#">내 정보</a></li>
            <li class="side">
              <a href="Modifying Information.jsp">정보 수정</a>
            </li>
            <li class="side">
              <a href="portfolioList.jsp">내 포트폴리오</a>
            </li>
            <li class="active"><a href="#">카페 예약 정보</a></li>
            <li class="side"><a href="interestPlace.jsp">관심 장소</a></li>
            <li class="side"><a href="reserve.jsp">예약 정보</a></li>
            <li class="side"><a href="Usage details.jsp">이용 내역</a></li>
            <li class="side"><a href="cancel.jsp">취소/환불</a></li>
            <li class="active"><a href="#">그룹 참여 정보</a></li>
            <li class="side"><a href="leaderGroup.jsp">내 그룹</a></li>
            <li class="side"><a href="interestGroup.jsp">관심 그룹</a></li>
            <li class="side">
              <a href="participatingGroup.jsp">참여 그룹</a>
            </li>
            <li class="side"><a href="endGroup.jsp">종료 그룹</a></li>
          </ul>
        </div>
        <!-- 메인 컨텐츠 영역 -->
        <div class="main-container">
          <!-- 메인 컨텐츠 헤더 영역 -->
          <div class="main-container-title">
            <h1>개인 정보 수정</h1>
          </div>
          <div class="main-container-info">
            회원님의 개인 정보를 소중하게 보호하고 있습니다.
            <br />
            회원님의 동의 없이 회원정보를 제3자에게 제공하지 않습니다.
          </div>
          <div class="main-container-password">
            고객님의 개인 정보 보호를 위해
            <br />
            비밀번호를 입력 후, 이용이 가능합니다.
          </div>
          <!-- 비밀번호 입력 및 버튼 -->
          <div class="main-container-password-box">
            <label for="pw" class="info-password-input">
              <span>비밀번호</span>
              <input
                type="password"
                id="pw"
                placeholder="비밀번호를 입력해주세요"
              />
            </label>
            <button type="submit" class="join">
              <a href="/Modifying profile.html" class="verification"
                >회원 확인</a
              >
            </button>
          </div>
        </div>
      </div>

      <div class="footer"></div>
    </div>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="${pageContext.request.contextPath}/assets/js/Modifying Information.js"></script>
  </body>
</html>
