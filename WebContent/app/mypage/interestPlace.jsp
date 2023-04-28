<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>관심 장소</title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/css/reset.css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/css/interestPlace.css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/css/reset.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/css/myPageMain.css">
</head>
<div class="header"></div>
<body>
	<div class="main-container">
		<ul class="spaceList">
			<c:choose>
				<c:when test="${not empty likeCafe}">
					<c:forEach var="likeCafe" items="${likeCafe}">

						<li class="first-section"><span class="cancel-btn"
							data-studyCafeNumber="${likeCafe.getStudyCafeNumber()}"> X</span>
							<a
							href="${pageContext.request.contextPath}/cafe/cafeReadOk.sc?studyCafeNumber=${likeCafe.getStudyCafeNumber()}">
								<div class="SpaceItemstyle">

									<img
										src="${pageContext.request.contextPath}/upload/${likeCafe.getCafeFileSystemName()}"
										alt="스터디 카페" class="space-img" />


								</div>
						</a>

							<div class="SpaceItemstyle-box">
								<div class="Space-container">
									<div class="Space-host-name"></div>
									<div class="Space-host-box">
										<span class="Space-itemstyle"> <span
											style="box-sizing: border-box; display: inline-block; overflow: hidden; width: initial; height: initial; background: none; opacity: 1; border: 0px; margin: 0px; padding: 0px; position: relative; max-width: 100%;">
												<img
												src="https://shareit.kr/_next/static/media/icn-chat-filled-lightgray.d59bfd98.svg"
												alt="qna-count" />
										</span> ${likeCafe.getCafeCommentCount()}
										</span> <span class="Space-itemstyle"> <span
											style="box-sizing: border-box; display: inline-block; overflow: hidden; width: initial; height: initial; background: none; opacity: 1; border: 0px; margin: 0px; padding: 0px; position: relative; max-width: 100%;">
												<img
												src="https://shareit.kr/_next/static/media/icn-heart-filled-lightgray.c71bc69d.svg"
												alt="favorite-cnt" />
										</span> ${likeCafe.getCafeLikeCount()}
										</span>
									</div>
								</div>
								<div class="Space-name">
									<div class="Space-name-box">
										<span class="name">${likeCafe.getStudyCafeName()}</span>
									</div>
								</div>
								<p class="Space-address">${likeCafe.getStudyCafeAddress()}</p>
								<div class="Space-price">
									<div class="Space-price-box">
										<div class="Space-price-discount">
											${likeCafe.getStudyCafePrice()}
											<p class="Price-discount">원~ / 패키지</p>
											<span class="min-time">1시간</span>
										</div>
									</div>
								</div>
								<div class="Info-content">
									<div class="Info-content-star">
										<img src="https://shareit.kr/img/review/Star_1.svg" alt="별점" />
									</div>
									${likeCafe.getStudyCafeCommentScore()}
									<div class="Info-content-review">(후기
										${likeCafe.getCafeCommentCount()})</div>
								</div>
							</div></li>
					</c:forEach>
				</c:when>
			</c:choose>
		</ul>
	</div>

	<section id="paging">
		<c:if test="${prev}">
			<li><a class="prev">&lt;</a></li>
		</c:if>

		<c:forEach var="i" begin="${startPage}" end="${endPage}">
			<c:choose>
				<c:when test="${!(i == page) }">
					<a class="pageBtn"><c:out value="${i}" /></a>
				</c:when>
				<c:otherwise>
					<a class="active"><c:out value="${i}" /></a>
				</c:otherwise>
			</c:choose>
		</c:forEach>
		<c:if test="${next}">
			<span><a class="next">&gt;</a></span>
		</c:if>
	</section>

	<div class="footer"></div>
	<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/assets/js/interestPlace.js"></script>
</body>
</html>
