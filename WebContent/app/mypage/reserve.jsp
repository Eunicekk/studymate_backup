<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>진행중인 예약</title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/css/reset.css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/css/reserve.css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/css/reset.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/css/myPageMain.css">
</head>
<div class="header"></div>
<body>
	<!-- 메인 컨텐츠 영역 -->
	<div class="main-container">
		<!-- 메인 헤더 영역 -->
		<!-- 예약 목록 영역 -->
		<ul class="reserve-tab-panel">
			<li class="reserve-tab-li">
				<button class="reserve-tab-button-selected">전체</button>
			</li>
		</ul>
		<!-- 예약번호 정보 조회 영역 -->
		<!-- <form class="reserve-search-form">
            <label class="reserve-search-label"
              ><input
                type="text"
                class="reserve-search-input"
                placeholder="예약 번호를 입력해주세요."
            /></label>
            <button class="reserve-search-button">검색</button>
          </form> -->
		<!-- 예약 카페 정보 영역  -->
		<ul class="reserve-list">

			<c:choose>
				<c:when test="${not empty myReservation}">
					<c:forEach var="myReservation" items="${myReservation }">
						<li class="reserve-item">
							<div class="info-box">
								<img
									src="https://img.shareit.kr:13443/prod/img/2022-04-21/5444d94a-3d51-47fe-aa95-cba605d5604c.jpg"
									alt="스터디" />
								<div>
									<div class="info-box-host-name">${myReservation.getStudyCafeAddress()}</div>
									<div class="info-box-product-name">${myReservation.getStudyCafeName()}</div>
									<!-- <p class="info-box-reserve-detail">
                    <img
                      src="https://shareit.kr/image/myPage/ico-estimate.svg"
                    />
                    승인 대기
                  </p> -->
								</div>
							</div>
							<section class="sub-info-box">
								<div class="sub-info-text-box">
									<div>
										<p>상품명</p>
										<div>
											<span class="sub-info-status-info">예약</span>
											<p>${myReservation.getStudyCafeName()}</p>
										</div>
									</div>
									<div>
										<p>예약 번호</p>
										<p>${myReservation.getReservationNumber()}</p>
									</div>
									<div>
										<p>사용 시간</p>
										<p>
											${myReservation.getFormatStartDate()} <br />
											${myReservation.getFormatEndDate()}
										</p>
									</div>
									<div>
										<p>인원</p>
										<p>${myReservation.getCountMember()}명</p>
									</div>
									<!--  <div>
                    <p>행사 목적</p>
                    <p>스터디</p>
                  </div> -->
								</div>
								<div class="payment-box">
									<p>총 금액</p>
									<p>${myReservation.getStudyCafePrice()}원</p>
								</div>
							</section>
							<div class="cancel-button-box">
								<button class="cancel-button">대여 취소</button>
							</div>
						</li>

					</c:forEach>
				</c:when>
			</c:choose>
		</ul>
		<!-- 페이지 리스트 -->
		<ul class="pagenation-list">
			<!-- 페이지 앞으로가기, 뒤로가기, 페이지 번호 버튼 -->
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
		</ul>
	</div>

	<div class="footer"></div>
	<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
	<script src="${pageContext.request.contextPath}/assets/js/reserve.js"></script>
</body>
</html>
