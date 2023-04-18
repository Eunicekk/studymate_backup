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
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/css/reset.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/css/myPageMain.css">
</head>
<body>
		<div class="my-content">
				<div class="main-container">
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
							<!-- <span class="check-msg" id="check-id-msg"></span> -->
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
		</div>

	<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/assets/js/ModifyingProfile.js"></script>
</body>
</html>
