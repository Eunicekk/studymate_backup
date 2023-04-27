<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>Document</title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/css/reset.css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/css/main_reservation.css" />
<link rel="stylesheet"
    href="https://fonts.googleapis.com/css2?family=Material+Symbols+Rounded:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />
</head>
<body>
	 <!-- 헤더 -->
    <header>
		<c:choose>
			<c:when test="${empty sessionScope.memberNickname}">
				<jsp:include
					page="${pageContext.request.contextPath}/app/header/header.jsp" />
			</c:when>
			<c:otherwise>
				<jsp:include
					page="${pageContext.request.contextPath}/app/header/headerafter.jsp" />
			</c:otherwise>
		</c:choose>
	</header>
	
	<main id="main">
		<!--nav 검색창, 필터버튼 -->
		<div class="searchContainer">
			<div class="searchBox">
				<form id="search" action="" method="post">
					<input type="text", autocomplete="off" id="search-input" name="search-input" placeholder="카페이름을 입력하세요" value="" />
					<input type="submit" id="search-btn" value="" />
				</form>
			</div>

			<div class="searchFilter">
			<div class="filterContainer">
								<ul class="filterContainer">

					<li class="filterBtn location">
						<div class="filterlist">
							<button class="filter filter-area">
								<span class="fontColor">지역</span> <span class="filterImg">
									<img
									src="${pageContext.request.contextPath}/assets/img/arrow-down-87-new.f91c9db5.svg" />
								</span>
							</button>
						</div> <!-- 모달창 -->
						<div class="locationList none">
							<div class="locationModal">
								<div class="locationMain">
									<div class="mainContainer">
										<div class="checkboxArea">
											<div class="checkboxStyle">
												
												<!-- 지역 별로 name 값 나눠야하고 value 값 채워야함 -->
												<ul  class="locationArea">
													<li class="Area"><label> <input
															type="checkbox" name="area" value="서울"> <span>서울</span>
													</label></li>
													<li class="Area"><label> <input
															type="checkbox" name="area" value="경기"> <span>경기</span>
													</label></li>
													<li class="Area"><label> <input
															type="checkbox" name="area" value="인천"> <span>인천</span>
													</label></li>
													<li class="Area"><label> <input
															type="checkbox" name="area" value="강원"> <span>강원</span>
													</label></li>
													<li class="Area"><label> <input
															type="checkbox" name="area" value="대전"> <span>대전</span>
													</label></li>
													<li class="Area"><label> <input
															type="checkbox" name="area" value="충북"> <span>충북</span>
													</label></li>
													<li class="Area"><label> <input
															type="checkbox" name="area" value="광주"> <span>광주</span>
													</label></li>
													<li class="Area"><label> <input
															type="checkbox" name="area" value="전북"> <span>전북</span>
													</label></li>
													<li class="Area"><label> <input
															type="checkbox" name="area" value="전남"> <span>전남</span>
													</label></li>
													<li class="Area"><label> <input
															type="checkbox" name="area" value="부산"> <span>부산</span>
													</label></li>
													<li class="Area"><label> <input
															type="checkbox" name="area" value="대구"> <span>대구</span>
													</label></li>
													<li class="Area"><label> <input
															type="checkbox" name="area" value="경북"> <span>경북</span>
													</label></li>
													<li class="Area"><label> <input
															type="checkbox" name="area" value="경남"> <span>경남</span>
													</label></li>
													<li class="Area"><label> <input
															type="checkbox" name="area" value="제주"> <span>제주</span>
													</label></li>
												</ul>

											</div>
										</div>
									</div>

									<div class="locationBtn">
										<div class="locationSubmit">
											<button type="button" onclick="initCheckbox()">초기화</button>
											<button class="ReginBtn">적용</button>
										</div>
									</div>
								</div>
							</div>
					</li>

					<li class="filterBtn calendal">
						<div class="filterlist">
							<button class="filter filter-date">
								<span class="cal">날짜</span> <span class="filterImg"> <img
									src="${pageContext.request.contextPath}/assets/img/arrow-down-87-new.f91c9db5.svg" />
								</span>
							</button>

							<!--캘린더  -->
							<div class="locationList cal_none">
								<div class="locationModal">
									<div class="calMain">
										<div class="sec_cal">
											<div class="cal_nav">
												<a href="javascript:;" class="nav-btn go-prev">prev</a>
												<div class="year-month"></div>
												<a href="javascript:;" class="nav-btn go-next">next</a>
											</div>
											<div class="cal_wrap">
												<div class="days">
													<div class="day">MON</div>
													<div class="day">TUE</div>
													<div class="day">WED</div>
													<div class="day">THU</div>
													<div class="day">FRI</div>
													<div class="day">SAT</div>
													<div class="day">SUN</div>
												</div>
												<div class="dates"></div>
											</div>
										</div>
									</div>
								</div>
							</div>

						</div>
					</li>

					<li class="filterBtn personnel ">
						<div class="filterlist">
							<button class="filter filter-price">
								<span class="price">가격</span> <span class="filterImg"> <img
									src="${pageContext.request.contextPath}/assets/img/arrow-down-87-new.f91c9db5.svg" />
								</span>
							</button>
						</div>

						<div class="locationList person_none">
							<div class="locationModal">
								<form id=reset_test_form>
									<div class="wrapper">
										<header>
											<h2>가격대 정하기</h2>
											<p>최소 가격과 최대 가격을 설정하세요</p>
										</header>

										<div class="price-input">
											<div class="field">
												<span>Min</span> <input type="number" class="input-min"
													value="12500">
											</div>
											<div class="separator">-</div>
											<div class="field">
												<input type="number" class="input-max" value="37500" /> <span>Max</span>
											</div>
										</div>

										<div class="slider">
											<div class="progress"></div>
										</div>
										<div class="range-input">
											<input type="range" class="range-min" min="0" max="50000"
												value="12500" step="1000" /> <input
												type="range" class="range-max" min="0" max="50000"
												value="37500" step="1000" />
											<!-- 설정한 가격 get으로 넘겨주고 mapper로 최소 최대 사이의 있는 가격인 스터디 카페 뿌려주기 -->

											<input type="text" class="min" hidden> <input
												type="text" class="max" hidden>
										</div>

										<div class="personBtn">
											<!-- <button id="btn_reset" type="reset">초기화</button> -->
											<button id="priceBtn" type="button">적용</button>
										</div>
									</div>
								</form>
							</div>
						</div>
					</li>

					<li class="resetFilterBtn">
						<!-- 스터디 예약 메인 페이지 --> <a href=""> <span>초기화</span>
					</a>
					</li>
				</ul>
			</div>
			</div>
			
		</div>

			<!-- 스터디 카페 메인  -->
		<div class="mainSpace">
			<div class="titleOrder">
				<h2 class="title">스터디카페 예약</h2>
				<input type="hidden" class="cafe-count" value="${total }">
				<form action="/cafe/cafeListOk.sc" method="get" name="order">
					<div class="selectOrder">
						<select id="order"  name="order">
							<!-- onchange="this.form.submit()" -->
							<option id="new" value="new">최신 등록순</option>
							<option id="score" value="score">별점순</option>
							<option id="like" value="like">관심순</option>
							<option id="read" value="read">조회순</option>
						</select>
					</div>
				</form>
			</div>
			
			<div id="ajax-list">
				<ul class="spaceList">
					<c:choose>
						<c:when test="${not empty cafelist }">
							<c:forEach var="studyCafe" items="${cafelist}">

								<li><a
									href="${pageContext.request.contextPath}/cafe/cafeReadOk.sc?studyCafeNumber=${studyCafe.getStudyCafeNumber()}"
									class="cafeOpen">
										<div class="spaceImg">
											<%-- <c:set var = "cafeNumber" value = "${studyCafe.getStudyCafeNumber()}" /> --%>
											<img
                                 			src="${pageContext.request.contextPath}/upload/${studyCafe.getCafeFileSystemName()}"
                                 			alt="스터디 카페">
											<input type="button" class="favoritButton">
										</div>

										<div class="spaceItem">
											<div class="studyCafeName">
												<!-- 카페이름 -->
												<div class="cafename">
													<span>${studyCafe.getStudyCafeName() }</span>
													<input type="hidden" class="cafe-number-count" value=${studyCafe.getStudyCafeNumber() }>
												</div>

												<!-- 조회순 좋아요  -->
												<div class="readContLike">
													<!-- 조회순 -->
													<span class="CntLikeStyle"> <span class="box-sizing">
															<svg stroke="currentColor" fill="currentColor"
																stroke-width="0" viewBox="0 0 1024 1024" color="#BEC2C8"
																height="18" width="18"
																xmlns="http://www.w3.org/2000/svg"
																style="color: rgb(153, 153, 153);">
																<path
																	d="M942.2 486.2C847.4 286.5 704.1 186 512 186c-192.2 0-335.4 100.5-430.2 300.3a60.3 60.3 0 0 0 0 51.5C176.6 737.5 319.9 838 512 838c192.2 0 335.4-100.5 430.2-300.3 7.7-16.2 7.7-35 0-51.5zM512 766c-161.3 0-279.4-81.8-362.7-254C232.6 339.8 350.7 258 512 258c161.3 0 279.4 81.8 362.7 254C791.5 684.2 673.4 766 512 766zm-4-430c-97.2 0-176 78.8-176 176s78.8 176 176 176 176-78.8 176-176-78.8-176-176-176zm0 288c-61.9 0-112-50.1-112-112s50.1-112 112-112 112 50.1 112 112-50.1 112-112 112z"></path></svg>
													</span>${studyCafe.getStudyCafeReadCount() }</span>
													<!-- like수 -->
													<span class="CntLikeStyle"> <span class="box-sizing">
															<img
															src="${pageContext.request.contextPath}/assets/img/icn-heart-filled-lightgray.c71bc69d.svg"
															alt="">
													</span>
													<span id="like-count" class="like-count">${studyCafe.getStudyCafeLikeCount() }</span>
													</span>
												</div>
											</div>
											<!-- 카페 위치 -->
											<p class="studyCafeLocation">${studyCafe.getStudyCafeAddress() }</p>

											<!-- 카페 가격 -->
											<div class="studyCafePrice">
												<div class="priceText">
													${studyCafe.getStudyCafePrice() }
													<p>원~ / 1시간당</p>
												</div>
											</div>

											<!-- 댓글 -->
											<div class="studyCafeReply">
												<div class="startImg">
													<img
														src="${pageContext.request.contextPath}/assets/img/Star_1.svg"
														alt="별점">
												</div>
												${studyCafe.getStudyCafeCommentScore() }
												<div class="replyInfo">&#40;후기
													${studyCafe.getStudyCafeCommentCount() }&#41;</div>
											</div>
										</div>
								</a></li>

							</c:forEach>
						</c:when>
						<c:otherwise>
							<div>등록된 게시물이 없습니다.</div>
						</c:otherwise>
					</c:choose>
				</ul>
		</div>

				<!-- 페이징 처리 -->
				<ul class="pageNumber">

					<c:if test="${prev }">
						<li class="prev">
							<button type="button"
								onclick="location.href='${pageContext.request.contextPath}/cafe/cafeListOk.sc?page=${startPage-1}'">
								<span class="box-sizing"> <img
									src="${pageContext.request.contextPath}/assets/img/arrow-left-677294.ae6b1d0b.svg"
									alt="">
								</span>
							</button>
						</li>
					</c:if>

					<c:forEach var="i" begin="${startPage }" end="${endPage }">
						<c:choose>
							<c:when test="${!(i==page) }">
								<li class="pageBtn">
									<button type="button"
										onclick="location.href='${pageContext.request.contextPath}/cafe/cafeListOk.sc?page=${i}'">
										<c:out value="${i }" />
									</button>
								</li>
							</c:when>
							<c:otherwise>
								<li class="pageBtn">
									<button type="button" onclick="location.href='#'"
										class="active">
										<c:out value="${i }" />
									</button>
								</li>
							</c:otherwise>
						</c:choose>
					</c:forEach>

					<c:if test="${next }">
						<li class="next">
							<button type="button"
								onclick="location.href='${pageContext.request.contextPath}/cafe/cafeListOk.sc?page=${endPage+1}'">
								<span class="box-sizing"> <img
									src="${pageContext.request.contextPath}/assets/img/arrow-right-677294.662f8854.svg"
									alt="">
								</span>
							</button>
						</li>
					</c:if>
				</ul>
			</div>

	</main>
	
	<!-- footer -->
	<footer>
		<c:choose>
			<c:when test="${empty sessionScope.memberNickname}">
				<jsp:include
					page="${pageContext.request.contextPath}/app/footer/footer.jsp" />
			</c:when>
			<c:otherwise>
				<jsp:include
					page="${pageContext.request.contextPath}/app/footer/footer.jsp" />
			</c:otherwise>
		</c:choose>
	</footer>
	<input class="memberNumber" type="hidden" value="${sessionScope.memberNumber}">

	<script src="https://code.jquery.com/jquery-3.6.3.js"
		integrity="sha256-nQLuAZGRRcILA+6dMBOvcRh5Pe310sBpanc6+QBmyVM="
		crossorigin="anonymous"></script>
	<script>
		let memberNumber = $(".memberNumber").val();
		console.log(memberNumber)
	</script>
	<script src="${pageContext.request.contextPath}/assets/js/main_reservation.js"></script>
</body>
</html>
