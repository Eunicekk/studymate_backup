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
		<a href="${pageContext.request.contextPath}/Main.ma">
			<img src="${pageContext.request.contextPath}/assets/img/logo.png" alt="/Main.ma" class="logo" />
		</a>
		</div>
		<div class="header-left">
			<a href="/cafe/cafeListOk.sc" class="content-cafe">스터디카페 예약</a>
			<a href="/studyGroup/studyGroupMainOk.sg" class="content-group">스터디그룹 모집</a>
			<a href="/board/boardListOk.bo" class="content-board">포트폴리오</a>
		</div>
		<div class="header-right">
			<a href="/member/login.me">
				<div class="login">
					로그인
				</div>
			</a>
			<a href="/member/join.me" style="color: white">
				<div class="join">
					회원가입
				</div>
			</a>
		</div>	
	</div>
	</header>

</body>
</html>