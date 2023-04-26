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
	href="${pageContext.request.contextPath}/assets/css/myPageMain.css" />
</head>
<body class="main">
		<div class="header">
				<jsp:include
					page="${pageContext.request.contextPath}/app/header/headerafter.jsp" />
		</div>
		
		<main class="container">
			<nav class="sidebar">
				
			<div class="myInfor">
					<h4>내 정보</h4>
					<ul>
						<li id="myModifying">정보 수정</li>
						<li id="myFortfolio">내 포트폴리오</li>
					</ul>
			</div>

			<div class="myCafeInfor">
				<h4>내 카페 정보</h4>
				<ul>
					<li id="myInterestCafe">관심 장소</li>
					<li id="myReserve">예약 정보</li>
					<li id="myUsaDetails">이용 내역</li>
				</ul>
			</div>

			<div class="myGroupInfor">
				<h4>그룹 참여 정보</h4>
				<ul>
					<li id="myGroup">내가 만든 그룹</li>
					<li id="myInterestGroup">관심 그룹</li>
					<li id="myJoinGroup">참여 그룹</li>
				</ul>
			</div>
		</nav>
		
		<section class="myContent">
		<h2 id ="content-title"></h2>
		<div id="list-content"></div>		
		</section>
		
		</main>
		
	<footer>
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
		
	<div class="footer"></div>
	<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
	<script src="${pageContext.request.contextPath}/assets/js/myPageMain.js"></script>
</body>
</html>
