<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Cafe</title>
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css2?family=Material+Symbols+Rounded:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/css/reset.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/css/adminCafeCheck.css">
</head>

<body>

	<div class="cafe-check-setting">
		<!-- 스터디 카페 검색 -->
		<section class="cafe-search">
			<span class="material-symbols-outlined"> search </span>
			<!-- 검색 폼 연결 -->
			<form action="">
				<input type="text" placeholder="카페 이름을 입력하세요.">
				<button type="button">검색</button>
			</form>
		</section>

		<!-- 스터디 카페 정렬 -->
		<section class="cafe-align">
			<div class="align01">
				<span class="material-symbols-outlined"> check </span> <span>카페
					번호 순</span>
			</div>
			<div class="align02">
				<span class="material-symbols-outlined"> check </span> <span>예약
					많은 순</span>
			</div>
			<div class="align03">
				<span class="material-symbols-outlined"> check </span> <span>좋아요
					많은 순</span>
			</div>
		</section>
	</div>

	<!-- 총 개수 -->
	<h1>
		등록된 스터디 카페 개수는 총 <span class="cafe-count">${total}</span>개 입니다.
	</h1>

	<main class="cafe-check">
		<ul>
			<c:choose>
				<c:when test="${not empty cafeList}">
					<c:forEach var="cafe" items="${cafeList}">
						<li><a href="#">
								<input type="hidden" class="cafeNumber" value = "${cafe.getStudyCafeNumber() }"/>
								<div class="cafe-delete">
									<span class="material-symbols-outlined delete"> close </span>
								</div>
								<div class="cafe-image">
								 	<c:set var = "cafeNumber" value = "${cafe.getStudyCafeNumber()}" />
									
										 <img
											src="${pageContext.request.contextPath}/upload/${cafe.getCafeFileSystemName()}"
											alt="스터디 카페" height="200px">
									
								</div>
								<div class="cafe-title">${cafe.getStudyCafeName()}</div>
								<div class="cafe-address">
									<img
										src="https://shareit.kr/_next/static/media/location.f1e61d10.svg"
										alt="위치"> <span>${cafe.getStudyCafeAddress()}</span>
								</div>
								<div class="cafe-price">
									<span>${cafe.getStudyCafePrice()}</span> 원 ~ / 1시간 당
								</div>
								<div class="cafe-info">
									
									<div class="counts">
										<div class="read-count">
											<span class="material-symbols-rounded"> visibility </span> <span>${cafe.getStudyCafeReadCount()}</span>
										</div>
										<div class="score">
											<span class="material-symbols-rounded"> star </span> <span>${cafe.getStudyCafeCommentScore()}</span>
										</div>
										<div class="like-count">
											<span class="material-symbols-rounded"> favorite </span> <span>${cafe.getLikeCount()}</span>
										</div>
									</div>
								</div>
						</a></li>
					</c:forEach>
				</c:when>
				<c:otherwise>
					<li align="center">등록된 게시물이 없습니다.</li>
				</c:otherwise>
			</c:choose>
		</ul>
	</main>

	
	<c:choose>
		<c:when test="${cafeList.size() != 21}">

		</c:when>
		<c:otherwise>
			<section id="paging">


				<c:if test="${prev}">
					<a class="prev"> <svg xmlns="http://www.w3.org/2000/svg"
							width="16" height="12" fill="currentColor"
							class="bi bi-chevron-left" viewBox="0 0 16 16">
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
					<a class="next"> <svg xmlns="http://www.w3.org/2000/svg"
							width="16" height="12" fill="currentColor"
							class="bi bi-chevron-right" viewBox="0 0 16 16">
                <path fill-rule="evenodd"
								d="M4.646 1.646a.5.5 0 0 1 .708 0l6 6a.5.5 0 0 1 0 .708l-6 6a.5.5 0 0 1-.708-.708L10.293 8 4.646 2.354a.5.5 0 0 1 0-.708z" />
            </svg>
					</a>
				</c:if>

			</section>
		</c:otherwise>
	</c:choose>

	<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/assets/js/adminCafeCheck.js"></script>

</body>

</html>