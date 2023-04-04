<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>개인 정보 수정</title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/css/reset.css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/css/ModifyingProfile.css" />
</head>
<body>
	<div class="main">
		<div class="header"></div>
		<div class="container">
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
						href="${pageContext.request.contextPath}/app/mypage/leaderGroup.jsp">내
							그룹</a></li>
					<li class="side"><a
						href="${pageContext.request.contextPath}/app/mypage/interestGroup.jsp">관심
							그룹</a></li>
					<li class="side"><a
						href="${pageContext.request.contextPath}/app/mypage/participatingGroup.jsp">참여
							그룹</a></li>
					<li class="side"><a
						href="${pageContext.request.contextPath}/app/mypage/endGroup.jsp">종료
							그룹</a></li>
				</ul>
			</div>
			<form action="${pageContext.request.contextPath}/mypage/MyPageModifyingProfile.my" method="POST">
				<div class="main-container">
				<div class="main-container-title">
					<h1>개인 정보 수정</h1>
				</div>
				<div class="presonal-info">
					<figure class="profile-form">
						<img src="https://img.shareit.kr:13443/data/character/1.png"
							alt="" />
						<figcaption>
							<b>
							<c:out value="${memberDTO.getMemberNickname()}"/>
							</b> 님
						</figcaption>
					</figure>
					<div>
						<div class="presonal-info-item">
							<span>닉네임</span> 
							<input type="text" name="nickname" id="nickname" placeholder="변경할 닉네임 입력" />
							<span class="check-msg" id="check-id-msg"></span>
						</div>
						<div class="presonal-info-item">
							<span>휴대 전화</span> 
							<input type="phonenumber" id="phonenumber"
								name="phonenubmer" placeholder="휴대 전화 번호 입력" />
						</div>
						<div class="presonal-info-item">
							<span>새 비밀번호</span> 
							<input type="password" id="pw" name="pw"
								placeholder="영문, 숫자, 특수문자 2가지 이상 포함 6~15자리" />
						</div>
						<div class="presonal-info-item">
							<span>비밀번호 확인</span> 
							<input type="password" id="chkPw"
								name="chkPw" placeholder="영문, 숫자, 특수문자 2가지 이상 포함 6~15자리" />
						</div>
						<div class="presonal-info-item">
							<span>이메일</span> 
							<input type="email" id="email" name="email"
								placeholder="변경할 이메일 입력" />
						</div>
					</div>
					<div class="presonal-info-footer">
						<button type="button" class="withdrawal">회원 탈퇴</button>
						<button type="button" class="modificationCompleted">수정 완료
						</button>
					</div>
				</div>
			</div>
			</form> 
		</div>

		<div class="footer"></div>
	</div>
	<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/assets/js/ModifyingProfile.js"></script>
</body>
</html>
