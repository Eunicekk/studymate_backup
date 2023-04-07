<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Member</title>
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/css/reset.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/css/adminMemberCheck.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/css/reset.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/css/adminMain.css">
</head>

<body>


	<div class="member-check-setting">
		<!-- 회원 테이블 검색 -->
		<section class="member-search">
			<span class="material-symbols-outlined"> search </span>
			<!-- 테이블 검색 폼 연결 -->
			<form action="">
				<input type="text" placeholder="아이디를 입력하세요.">
				<button type="button">검색</button>
			</form>
		</section>

		<!-- 회원 테이블 정렬 -->
		<section class="member-align">
			<div class="align01">
				<span class="material-symbols-outlined"> check </span> <span>회원
					번호 순</span>
			</div>
			<div class="align02">
				<span class="material-symbols-outlined"> check </span> <span>가입
					날짜 순</span>
			</div>
		</section>
	</div>

	<!-- 총 개수 -->
	<h1>
		가입자 수는 총 <span class="cafe-count">${total}</span>명 입니다.
	</h1>

	<!-- 회원 테이블 전체 -->
	<main class="member-check">
		<table class="member-table">
			<thead>
				<tr>
					<th>번호</th>
					<th>아이디</th>
					<th>비밀번호</th>
					<th>이름</th>
					<th>닉네임</th>
					<th>나이</th>
					<th>성별</th>
					<th>이메일</th>
					<th>핸드폰 번호</th>
					<th>가입 날짜</th>
					<th></th>
				</tr>
			</thead>
			<tbody align="center">
				<!-- 임시로 회원 정보 넣어놓음, 데이터 삽입 필요 -->
				<c:choose>
					<c:when test="${not empty memberList}">
						<c:forEach var="member" items="${memberList}">
							<tr>
								<td class="no">${member.getMemberNumber()}</td>
								<td class="id">${member.getMemberId()}</td>
								<td class="password">${member.getMemberPassword()}</td>
								<td class="name">${member.getMemberName()}</td>
								<td class="nickname">${member.getMemberNickname()}</td>
								<td class="age">${member.getMemberAge()}</td>
								<td class="gender">${member.getMemberGender()}</td>
								<td class="email">${member.getMemberEmail()}</td>
								<td class="phone-number">${member.getMemberPhoneNumber()}</td>
								<td class="date">2023-03-01</td>
								<td><span class="material-symbols-outlined delete"
									id='${member.getMemberNumber()}'
									value='${member.getMemberNumber()}'> close </span></td>
							</tr>
						</c:forEach>
					</c:when>
					<c:otherwise>
						<tr>
							<td colspan="5" align="center">등록된 게시물이 없습니다.</td>
						</tr>
					</c:otherwise>
				</c:choose>
			</tbody>
		</table>
	</main>

	<section id="paging">


		<c:if test="${prev}">
			<a
				class="prev"> <svg xmlns="http://www.w3.org/2000/svg" width="16"
					height="12" fill="currentColor" class="bi bi-chevron-left"
					viewBox="0 0 16 16">
                <path fill-rule="evenodd"
						d="M11.354 1.646a.5.5 0 0 1 0 .708L5.707 8l5.647 5.646a.5.5 0 0 1-.708.708l-6-6a.5.5 0 0 1 0-.708l6-6a.5.5 0 0 1 .708 0z" />
            </svg></a>
		</c:if>


		<c:forEach var="i" begin="${startPage}" end="${endPage}">
			<c:choose>
				<c:when test="${!(i == page) }">

					<a class="pageBtn"> <c:out value="${i}" /> <!-- <svg
							xmlns="http://www.w3.org/2000/svg" width="16" height="16"
							fill="currentColor" class="bi bi-three-dots" viewBox="0 0 16 16"></svg> -->
					</a>
				</c:when>
				<c:otherwise>
					<a class="active"> <c:out value="${i}" />
					</a>
				</c:otherwise>
			</c:choose>
		</c:forEach>

		<c:if test="${next}">
			<a
				class="next"> <svg xmlns="http://www.w3.org/2000/svg" width="16"
					height="12" fill="currentColor" class="bi bi-chevron-right"
					viewBox="0 0 16 16">
                <path fill-rule="evenodd"
						d="M4.646 1.646a.5.5 0 0 1 .708 0l6 6a.5.5 0 0 1 0 .708l-6 6a.5.5 0 0 1-.708-.708L10.293 8 4.646 2.354a.5.5 0 0 1 0-.708z" />
            </svg>
			</a>
		</c:if>

	</section>

	<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/assets/js/adminMemberCheck.js"></script>
</body>

</html>