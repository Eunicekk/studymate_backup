<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>내 포트폴리오</title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/css/reset.css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/css/portfolioList.css" />
</head>
<body>
	<div class="main">
		<div class="header"></div>
		<div class="container">
			<div class="sidebar">
				<ul>
					<li class="active"><a href="#">내 정보</a></li>
					<li class="side"><a
						href="${pageContext.request.contextPath}/mypage/MyPageModifyingProfile.my">정보
							수정</a></li>
					<li class="side"><a
						href="${pageContext.request.contextPath}/mypage/MyPagePortfolioOk.my">내
							포트폴리오</a></li>
					<li class="active"><a href="#">카페 예약 정보</a></li>
					<li class="side"><a
						href="${pageContext.request.contextPath}/mypage/MyPageInterestPlaceOk.my">관심
							장소</a></li>
					<li class="side"><a
						href="${pageContext.request.contextPath}/mypage/MyPageReserveOk.my">예약
							정보</a></li>
					<li class="side"><a
						href="${pageContext.request.contextPath}/mypage/MyPageUsaDetailsOk.my">이용
							내역</a></li>
					<!-- <li class="side"><a href="cancel.jsp">취소/환불</a></li> -->
					<li class="active"><a href="#">그룹 참여 정보</a></li>
					<li class="side"><a
						href="${pageContext.request.contextPath}/mypage/MyPageLeaderGroupOk.my">내
							그룹</a></li>
					<li class="side"><a
						href="${pageContext.request.contextPath}/mypage/MyPageInterestGroupOk.my">관심
							그룹</a></li>
					<li class="side"><a
						href="${pageContext.request.contextPath}/mypage/MyPageParticipatingGroupOk.my">참여
							그룹</a></li>
					<li class="side"><a
						href="${pageContext.request.contextPath}/mypage/MyPageEndGroupOk.my">종료
							그룹</a></li>
				</ul>
			</div>
			<div class="main-container">
				<div class="main-container-title">
					<h1>내 포트폴리오</h1>
				</div>
				<ul class="portfolio-tab-panel">
					<li class="portfolio-tab-li">
						<button class="portfolio-tab-button-selected">전체</button>
					</li>
				</ul>
				<div class="portfolio-list">
					<div class="portfolio-list-number">NO</div>
					<div class="portfolio-list-info">제목</div>
					<!-- <div class="portfolio-list-like">좋아요</div> -->
					<div class="portfolio-list-reply">댓글</div>
					<div class="portfolio-list-view">조회수</div>
				</div>

				<c:choose>
					<c:when test="${not empty boardList}">
					<c:set var="i" value="0"/>
						<c:forEach var="myPortfolio" items="${boardList}">
							<c:set var="i" value="${i + 1}"/>
							<div class="portfolio-conatiner">
								<div class="portfolio-number-container">
									<span>
										<c:out value="${i}"/>
									</span>
								</div>
								<div class="portfolio-info-container">
									<a
										href="${pageContext.request.contextPath}/board/boardReadOk.bo?boardNumber=${myPortfolio.getBoardNumber()}">
										<!--       해당 보드로 이동처리                                   -->
										${myPortfolio.getBoardTitle() } </a>
								</div>
								<div class="portfolio-reply">${myPortfolio.getCommentCount()}</div>
								<div class="view-number">${myPortfolio.getBoardReadCount()}</div>
							</div>
						</c:forEach>
					</c:when>
					<c:otherwise>
						<tr>
							<td colspan="5" align="center">등록된 게시물이 없습니다.</td>
						</tr>
					</c:otherwise>
				</c:choose>

				<!-- <ul class="pagenation-list">
					<li class="prev">
						<button type="button">
							<span class="prev-button"> <img
								src="https://shareit.kr/_next/static/media/arrow-left-677294.ae6b1d0b.svg"
								alt="" class="prev-button-img" />
							</span>
						</button>
					</li>
					<li class="page-number">
						<button type="button" class="page-number-button">1</button>
					</li>
					<li class="next">
						<button type="button">
							<span class="next-button"> <img
								src="https://shareit.kr/_next/static/media/arrow-right-677294.662f8854.svg"
								alt="" class="next-button-img" />
							</span>
						</button>
					</li>
				</ul> -->

				<!-- ========== 페이징 처리 예시 ============ -->

				<c:if test="${prev}">
               <li><a href="${pageContext.request.contextPath}/mypage/MyPagePortfolioOk.my=${startPage - 1}" class="prev">&lt;</a></li>
            </c:if>
            
            <c:forEach var="i" begin="${startPage}" end="${endPage}">
               <c:choose>
                  <c:when test="${!(i == page) }">
                     <li>
                        <a href="${pageContext.request.contextPath}/mypage/MyPagePortfolioOk.my?page=${i}">
                           <c:out value="${i}"/>
                        </a>
                     </li>
                  </c:when>
                  <c:otherwise>
                     <li>
                        <a href="#" class="active">
                           <c:out value="${i}"/>
                        </a>
                     </li>
                  </c:otherwise>
               </c:choose>
            </c:forEach>
            
            <c:if test="${next}">
               <li><a href="${pageContext.request.contextPath}/mypage/MyPagePortfolioOk.my?page=${endPage + 1}" class="next">&gt;</a></li>
            </c:if>
				<!-- ========== /페이징 처리 예시 ============ -->

			</div>
		</div>

		<div class="footer"></div>
	</div>
	<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/assets/js/portfolioList.js"></script>
</body>
</html>
