<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="ko">

<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>studymate</title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/css/reset.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/css/adminMain.css">
</head>

<body class="main">
	<!-- header 추가하기 -->
	<header>
		<c:choose>
			<c:when test="${empty sessionScope.adminNickname}">
				<jsp:include
					page="${pageContext.request.contextPath}/app/admin/adminheader.jsp" />
			</c:when>
			<c:otherwise>
				<jsp:include
					page="${pageContext.request.contextPath}/app/admin/adminhaederafter.jsp" />
			</c:otherwise>
		</c:choose>
	</header>

	<main class="content">

		<!-- 관리자 페이지 서브 목록 -->
		<nav class="admin-list">
			<div class="admin-user">
				<h4>회원 관리</h4>
				<ul>
					<li id="adminMemberProgress">회원 가입 추이</li>
					<li id="adminMemberCheck">회원 목록 조회</li>
				</ul>
			</div>

			<div class="admin-cafe">
				<h4>스터디카페 관리</h4>
				<ul>
					<li id="adminCafeProgress">카페 이용 추이</li>
					<li id="adminCafeCheck">카페 목록 조회</li>
					<li id="adminCafeAdd">카페 등록</li>
				</ul>
			</div>

			<div class="admin-group">
				<h4>스터디그룹 관리</h4>
				<ul>
					<li id="adminGroupProgress">그룹 등록 추이</li>
					<li id="adminGroupCheck">그룹 목록 조회</li>
				</ul>
			</div>

			<div class="admin-portfolio">
				<h4>포트폴리오 관리</h4>
				<ul>
					<li id="adminBoardProgress">게시물 등록 추이</li>
					<li id="adminBoardCheck">게시물 목록 조회</li>
				</ul>
			</div>
		</nav>

		<!-- 관리자 페이지 메인 콘텐츠 -->
		<!-- #list-content에 내용이 들어감 -->
		<section class="admin-content">
			<h2 id="content-title"></h2>
			<div id="list-content"></div>
		</section>

	</main>

	<!-- footer 추가하기 -->
	<footer>
		<%-- <jsp:include
			page="${pageContext.request.contextPath}/app/footer/footer.jsp" /> --%>
			<c:choose>
			<c:when test="${empty sessionScope.adminNickname}">
				<jsp:include
					page="${pageContext.request.contextPath}/app/footer/footer.jsp" />
			</c:when>
			<c:otherwise>
				<jsp:include
					page="${pageContext.request.contextPath}/app/footer/footer.jsp" />
			</c:otherwise>
		</c:choose>
	</footer>

	<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
	<script src="${pageContext.request.contextPath}/assets/js/adminMain.js"></script>
</body>

</html>