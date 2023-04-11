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
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/ModifyingInformation.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/footer.css" />
    
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
					<li class="side"><a
						href="${pageContext.request.contextPath}/mypage/MyPageModifyingProfile.my">정보
							수정</a></li>
					<li class="side"><a
						href="${pageContext.request.contextPath}/mypage/MyPagePortfolioOk.my">내
							포트폴리오</a></li>
					<li class="active"><a href="#">카페 예약 정보</a></li>
					<li class="side"><a
						href="${pageContext.request.contextPath}/mypage/MyPageInterestPlaceOk.my">관심
							장소</a></li>
					<li class="side"><a
						href="${pageContext.request.contextPath}/mypage/MyPageReserveOk.my">예약
							정보</a></li>
					<li class="side"><a
						href="${pageContext.request.contextPath}/mypage/MyPageUsaDetailsOk.my">이용
							내역</a></li>
					<!-- <li class="side"><a href="cancel.jsp">취소/환불</a></li> -->
					<li class="active"><a href="#">그룹 참여 정보</a></li>
					<li class="side"><a
						href="${pageContext.request.contextPath}/mypage/MyPageLeaderGroupOk.my">내
							그룹</a></li>
					<li class="side"><a
						href="${pageContext.request.contextPath}/mypage/MyPageInterestGroupOk.my">관심
							그룹</a></li>
					<li class="side"><a
						href="${pageContext.request.contextPath}/mypage/MyPageParticipatingGroupOk.my">참여
							그룹</a></li>
					<li class="side"><a
						href="${pageContext.request.contextPath}/mypage/MyPageEndGroupOk.my">종료
							그룹</a></li>
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
              <a href="${pageContext.request.contextPath}/app/mypage/ModifyingProfile.jsp" class="verification"
                >회원 확인</a
              >
            </button>
          </div>
        </div>
      </div>

      <footer id="new-footer">
	<div class="left-box">
		<div class="footer-category">
			<a href=""><span>회사소개</span></a> <a href=""><span>채용</span></a> <a
				href=""><span>이용약관</span></a> <a href=""><span class="font-bold">개인정보처리방침</span></a>
			<a href=""><span>고객센터</span></a>
		</div>
		<div class="project-name">studymate 사업자 정보</div>
		<div class="info">
			<span>팀명:코드웨이브</span>
		</div>
		<div class="info">
			<span>사업자등록번호:123-44-33255</span> <span>통신판매업</span> <span>개인정보보호책임자:이정현</span>
		</div>
		<div class="info">
			<span>주소:서울특별시 강남구 코리아IT아카데미</span>
		</div>
		<div class="info">
			<span>입점문의: <a href="" class="font-bold">입점문의하기</a>
			</span> <span>대표이메일:dhtkan12@gmail.com</span>
		</div>
		<div class="team-member-name">팀원 : 김윤, 김준혁, 유정현, 이정현, 전은실, 조상수</div>
	</div>
	<div class="right-box">
		<div class="representative-number">대표번호</div>
		<div class="number">010-4064-5072</div>
		<div class="info-time">문의시간:평일10:00~19:00</div>
		<div class="footer-box-btn">
			<a>카카오톡 문의</a> <a>자주하는 질문</a>
		</div>
	</div>
</footer>

    </div>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="${pageContext.request.contextPath}/assets/js/ModifyingInformation.js"></script>
    
    
  </body>
  
</html>
