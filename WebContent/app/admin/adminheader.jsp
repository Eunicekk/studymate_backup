<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/header.css">

</head>
<body>
	<header id="header-main">
		<div>
			<img src="${pageContext.request.contextPath}/assets/img/logo.png" alt="" class="logo" />
		</div>
		<div class="header-left">
			<!-- <a href="#" class="content-cafe">스터디카페 예약</a> <a href="#"
				class="content-group">스터디그룹 모집</a> -->
		</div>
		<div class="header-right">
			<div class="login">
				<a href="${pageContext.request.contextPath}/admin/adminlogin.ad">로그인</a>
			</div>
		</div>
	</header>

</body>
</html>