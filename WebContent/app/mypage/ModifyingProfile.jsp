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
	<!-- <form action=""> -->
	<form action="${pagetContext.request.contextPath}/mypage/MyPageModifyingProfileOk.my" method="post"
         enctype="multipart/form-data">
		<div class="my-content">
			<div class="main-container">
				<div class="presonal-info">
					<div class="profile-form">
						<div style="align-items: center; display: flex;">
						<svg type="upload18" viewBox="0 0 18 18" class="sc-iBYQkv lcoBfw">
                    <path fill-rule="evenodd" clip-rule="evenodd"
                  d="M25.9087 8.12155L36.4566 18.3158C37.2603 18.7156 38.2648 18.6156 38.968 18.3158C39.6712 17.5163 39.6712 16.4169 38.968 15.7173L25.3059 2.5247C24.6027 1.8251 23.4977 1.8251 22.7945 2.5247L9.03196 15.8172C8.32877 16.5168 8.32877 17.6162 9.03196 18.3158C9.73516 19.0154 10.9406 19.0154 11.6438 18.3158L22.2922 8.12155V28.4111C22.2922 29.4106 23.0959 30.2091 24.1005 30.2091C25.105 30.2091 25.9087 29.4106 25.9087 28.4111V8.12155ZM5.61644 29.4104C5.61644 28.4109 4.81279 27.6104 3.80822 27.6104C2.80365 27.6104 2 28.5099 2 29.5093V44.202C2 45.2015 2.80365 46 3.80822 46H44.1918C45.1963 46 46 45.2015 46 44.202V29.5093C46 28.5099 45.1963 27.7113 44.1918 27.7113C43.1872 27.7113 42.3836 28.5099 42.3836 29.5093V42.3021H5.61644V29.4104Z">
               </path>  </svg>
						
							<c:choose>
							<c:when test="${empty memberDTO.getProfileSystemName()}">
							<img class="my-profile"
								src="https://img.shareit.kr:13443/data/character/1.png" alt="" />
							</c:when>
							
							<c:otherwise>
							<img class="my-profile"
								src="/upload/${memberDTO.getProfileSystemName()}" alt="" />
							</c:otherwise>
							</c:choose>
							
							<input type="file" class="profile-input" name="fileInput" >
						</div>
						
						<figcaption>
							<b> <c:out value="${memberDTO.getMemberNickname()}" />
							</b> 님
						</figcaption>
					</div>
					<div>
						<div class="presonal-info-item">
							<span>닉네임</span> <input type="text" name="nickname" id="nickname"
								placeholder="변경할 닉네임 입력" value="${memberDTO.getMemberNickname()}"/>
							<!-- <span class="check-msg" id="check-id-msg"></span> -->
						</div>
						<div class="presonal-info-item">
							<span>휴대 전화</span> <input type="text" id="phonenumber"
								name="phonenumber" placeholder="휴대 전화 번호 입력" value="${memberDTO.getMemberPhoneNumber()}"/>
						</div>
						<div class="presonal-info-item">
							<span>새 비밀번호</span> <input type="password" id="pw" name="pw"
								placeholder="영문, 숫자, 특수문자 2가지 이상 포함 6~15자리" />
						</div>
						<div class="presonal-info-item">
							<span>비밀번호 확인</span> <input type="password" id="chkPw"
								name="chkPw" placeholder="영문, 숫자, 특수문자 2가지 이상 포함 6~15자리" />
						</div>
						<div class="presonal-info-item">
							<span>이메일</span> <input type="email" id="email" name="email"
								placeholder="변경할 이메일 입력" value="${memberDTO.getMemberEmail()}"/>
						</div>
					</div>
					<div class="presonal-info-footer">
						<button type="button" class="withdrawal">회원 탈퇴</button>
						<button type="submit" class="modificationCompleted">수정 완료
						</button>
					</div>
				</div>
			</div>
		</div>
	</form>
	<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/assets/js/ModifyingProfile.js"></script>
</body>
</html>
