<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/header.css">
<title>Insert title here</title>
</head>
<body>
	<header id="header-main">
	<div class="header-center">
		<div>
		<a href="${pageContext.request.contextPath}/index.jsp">
			<img src="${pageContext.request.contextPath}/assets/img/logo.png" alt="" class="logo" />
		</a>
		</div>
		<div class="header-left">
			<a href="${pageContext.request.contextPath}/app/cafe/mainReservation.jsp" class="content-cafe">스터디카페 예약</a>
			<a href="${pageContext.request.contextPath}/app/group/studyGroupMain.jsp" class="content-group">스터디그룹 모집</a>
		</div>
		<div class="header-right">
			<div class="login">
				<a href="${pageContext.request.contextPath}/app/member/login.jsp">로그인</a>
			</div>
			<div class="join">
				<a href="${pageContext.request.contextPath}/app/member/join.jsp" style="color: white">회원가입</a>
			</div>
		</div>	
	</div>
	</header>

</body>
</html>