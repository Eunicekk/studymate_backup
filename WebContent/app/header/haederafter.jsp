<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
session.setAttribute("memberNickname", member.getNickname());

	<header id="header-main">
		<div>
			<img src="../img/로고.png" alt="" class="logo" />
		</div>
		<div class="header-left">
			<a href="#" class="content-cafe">스터디카페 예약</a> <a href="#"
				class="content-group">스터디그룹 모집</a>
		</div>
		<div class="header-right">
			<div class="logout">
				<a href="/member/logoutOk.me">로그아웃</a>
			</div>
		<div class="member-name">
    <a href="#"><% out.print(session.getAttribute("memberNumber")); %></a>
</div> 
			</div>
			<div class="mypage">
				<a href="#">마이페이지</a>
			</div>
			<div class="like-btn">
				<a href="#"><img
					src="https://shareit.kr/_next/static/media/icon-favorite.83de4fd0.svg"
					alt="" /></a>
			</div>
		</div>
	</header>

</body>
</html>