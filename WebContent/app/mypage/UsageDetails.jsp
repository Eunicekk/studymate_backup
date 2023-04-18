<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>이용 내역</title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/css/reset.css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/css/UsageDetails.css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/css/reset.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/css/myPageMain.css">
</head>
<div class="header"></div>
<body>
			<div class="main-container">
				<ul class="reserve-tab-panel">
					<li class="reserve-tab-li">
						<button class="reserve-tab-button-selected">전체</button>
					</li>
				</ul>
				<form class="reserve-search-form">
					<label class="reserve-search-label"><input type="text"
						class="reserve-search-input" placeholder="예약 번호를 입력해주세요." /></label>
					<button class="reserve-search-button">검색</button>
				</form>
				<ul class="reserve-list">
					<c:choose>
						<c:when test="${not empty myUsaDetails }">
							<c:forEach var="myUsaDetails" items="${myUsaDetails}">


								<li class="reserve-item">
									<div class="info-box">
										<img
											src="https://img.shareit.kr:13443/prod/img/2022-04-21/5444d94a-3d51-47fe-aa95-cba605d5604c.jpg"
											alt="스터디" />
										<div>
											<div class="info-box-host-name">${myUsaDetails.getStudyCafeAddress() }</div>
											<div class="info-box-product-name">${myUsaDetails.getStudyCafeName() }</div>
											<p class="info-box-reserve-detail">
												<img src="https://shareit.kr/image/myPage/ico-estimate.svg" />
												결제 완료
											</p>
										</div>
									</div>
									<section class="sub-info-box">
										<div class="sub-info-text-box">
											<div>
												<p>상품명</p>
												<div>
													<span class="sub-info-status-info">이용 완료</span>
													<p>${myUsaDetails.getStudyCafeName() }</p>
												</div>
											</div>
											<div>
												<p>예약 번호</p>
												<p>${myUsaDetails.getReservationNumber() }</p>
											</div>
											<div>
												<p>사용 시간</p>
												<p>
													${myUsaDetails.getFormatStartDate() } <br />
													${myUsaDetails.getFormatEndDate() }
												</p>
											</div>
											<div>
												<p>인원</p>
												<p>${myUsaDetails.getCountMember() }명</p>
											</div>
											<!-- <div>
												<p>행사 목적</p>
												<p>스터디</p>
											</div> -->
										</div>
										<div class="payment-box">
											<p>총 금액</p>
											<p>${myUsaDetails.getStudyCafePrice() }원</p>
										</div>
									</section>
								</li>
							</c:forEach>
						</c:when>
					</c:choose>
				</ul>
				<ul class="pagenation-list">
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
	<script
		src="${pageContext.request.contextPath}/assets/js/UsageDetails.js"></script>
</body>
</html>
