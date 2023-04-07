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
	<header></header>
	<main id="main">
		<!--nav 검색창, 필터버튼 -->
		<div class="searchContainer">
			<div class="searchBox">
				<form id="search" action="" method="post">
					<input type="text", autocomplete="off" id="search-input" placeholder="카페이름을 입력하세요" value="" />
					<input type="submit" id="search-btn" value="" />
				</form>
			</div>

			<div class="searchFilter">
			<div class="filterContainer">
								<ul class="filterContainer">

					<li class="filterBtn location">
						<div class="filterlist">
							<button class="filter">
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
												<ul class="locationRegion">
													<li class="Region changeColor">서울</li>
													<li class="Region">경기</li>
													<li class="Region">인천</li>
													<li class="Region">부산</li>
													<li class="Region">대전</li>
													<li class="Region">대구</li>
													<li class="Region">울산</li>
													<li class="Region">세종</li>
													<li class="Region">광주</li>
                            						<li class="Region">강원</li>
                           						 	<li class="Region">충북</li>
                            						<li class="Region">충남</li>
                            						<li class="Region">경북</li>
                            						<li class="Region">경남</li>
                            						<li class="Region">전북</li>
                            						<li class="Region">전남</li>
                            						<li class="Region">제주</li>
												</ul>
												<!-- 지역 별로 name 값 나눠야하고 value 값 채워야함 -->
												<ul id="" class="locationArea">
													<li class="Area"><label> <input id="all"
															type="checkbox" name="area" value="서울전체"> <span>서울전체</span>
													</label></li>
													<li class="Area"><label> <input
															type="checkbox" name="area" value="강남구"> <span>강남구</span>
													</label></li>
													<li class="Area"><label> <input
															type="checkbox" name="area" value="강동구"> <span>강동구</span>
													</label></li>
													<li class="Area"><label> <input
															type="checkbox" name="area" value="강북구"> <span>강북구</span>
													</label></li>
													<li class="Area"><label> <input
															type="checkbox" name="area" value="강서구"> <span>강서구</span>
													</label></li>
													<li class="Area"><label> <input
															type="checkbox" name="area" value="관악구"> <span>관악구</span>
													</label></li>
													<li class="Area"><label> <input
															type="checkbox" name="area" value="광진구"> <span>광진구</span>
													</label></li>
													<li class="Area"><label> <input
															type="checkbox" name="area" value="구로구"> <span>구로구</span>
													</label></li>
													<li class="Area"><label> <input
															type="checkbox" name="area" value="금천구"> <span>금천구</span>
													</label></li>
													<li class="Area"><label> <input
															type="checkbox" name="area" value="노원구"> <span>노원구</span>
													</label></li>
													<li class="Area"><label> <input
															type="checkbox" name="area" value="도봉구"> <span>도봉구</span>
													</label></li>
													<li class="Area"><label> <input
															type="checkbox" name="area" value="동대문구"> <span>동대문구</span>
													</label></li>
													<li class="Area"><label> <input
															type="checkbox" name="area" value="동작구"> <span>동작구</span>
													</label></li>
													<li class="Area"><label> <input
															type="checkbox" name="area" value="마포구"> <span>마포구</span>
													</label></li>
													<li class="Area"><label> <input
															type="checkbox" name="area" value="서대문구"> <span>서대문구</span>
													</label></li>
													<li class="Area"><label> <input
															type="checkbox" name="area" value="서초구"> <span>서초구</span>
													</label></li>
													<li class="Area"><label> <input
															type="checkbox" name="area" value="성동구"> <span>성동구</span>
													</label></li>
													<li class="Area"><label> <input
															type="checkbox" name="area" value="성북구"> <span>성북구</span>
													</label></li>
													<li class="Area"><label> <input
															type="checkbox" name="area" value="송파구"> <span>송파구</span>
													</label></li>
													<li class="Area"><label> <input
															type="checkbox" name="area" value="영등포구"> <span>영등포구</span>
													</label></li>
													<li class="Area"><label> <input
															type="checkbox" name="area" value="양천구"> <span>양천구</span>
													</label></li>
													<li class="Area"><label> <input
															type="checkbox" name="area" value="용산구"> <span>용산구</span>
													</label></li>
													<li class="Area"><label> <input
															type="checkbox" name="area" value="은평구"> <span>은평구</span>
													</label></li>
													<li class="Area"><label> <input
															type="checkbox" name="area" value="종로구"> <span>종로구</span>
													</label></li>
													<li class="Area"><label> <input
															type="checkbox" name="area" value="중랑구"> <span>중랑구</span>
													</label></li>
													<li class="Area"><label> <input
															type="checkbox" name="area" value="중구"> <span>중구</span>
													</label></li>


												</ul>
												<ul id="ex" class="locationArea none">
													<li class="Area"><label> <input
															type="checkbox" name="area" value="경기전체"> <span>경기전체</span>
													</label></li>
													<li class="Area"><label> <input
															type="checkbox" name="area" value="고양시"> <span>고양시</span>
													</label></li>
													<li class="Area"><label> <input
															type="checkbox" name="area" value="과천시"> <span>과천시</span>
													</label></li>
													<li class="Area"><label> <input
															type="checkbox" name="area" value="광명시"> <span>광명시</span>
													</label></li>
													<li class="Area"><label> <input
															type="checkbox" name="area" value="광주시"> <span>광주시</span>
													</label></li>
													<li class="Area"><label> <input
															type="checkbox" name="area" value="구리시"> <span>구리시</span>
													</label></li>
													<li class="Area"><label> <input
															type="checkbox" name="area" value="군포시"> <span>군포시</span>
													</label></li>
													<li class="Area"><label> <input
															type="checkbox" name="area" value="김포시"> <span>김포시</span>
													</label></li>
													<li class="Area"><label> <input
															type="checkbox" name="area" value="남양주시"> <span>남양주시</span>
													</label></li>
													<li class="Area"><label> <input
															type="checkbox" name="area" value="동두천시"> <span>동두천시</span>
													</label></li>
													<li class="Area"><label> <input
															type="checkbox" name="area" value="부천시"> <span>부천시</span>
													</label></li>
													<li class="Area"><label> <input
															type="checkbox" name="area" value="성남시"> <span>성남시</span>
													</label></li>
													<li class="Area"><label> <input
															type="checkbox" name="area" value="수원시"> <span>수원시</span>
													</label></li>
													<li class="Area"><label> <input
															type="checkbox" name="area" value="시흥시"> <span>시흥시</span>
													</label></li>
													<li class="Area"><label> <input
															type="checkbox" name="area" value="안산시"> <span>안산시</span>
													</label></li>
													<li class="Area"><label> <input
															type="checkbox" name="area" value="안성시"> <span>안성시</span>
													</label></li>
													<li class="Area"><label> <input
															type="checkbox" name="area" value="안양시"> <span>안양시</span>
													</label></li>
													<li class="Area"><label> <input
															type="checkbox" name="area" value="양주시"> <span>양주시</span>
													</label></li>
													<li class="Area"><label> <input
															type="checkbox" name="area" value="여주시"> <span>여주시</span>
													</label></li>
													<li class="Area"><label> <input
															type="checkbox" name="area" value="오산시"> <span>오산시</span>
													</label></li>
													<li class="Area"><label> <input
															type="checkbox" name="area" value="용인시"> <span>용인시</span>
													</label></li>
													<li class="Area"><label> <input
															type="checkbox" name="area" value="의왕시"> <span>의왕시</span>
													</label></li>
													<li class="Area"><label> <input
															type="checkbox" name="area" value="의정부시"> <span>의정부시</span>
													</label></li>
													<li class="Area"><label> <input
															type="checkbox" name="area" value="이천시"> <span>이천시</span>
													</label></li>
													<li class="Area"><label> <input
															type="checkbox" name="area" value="파주시"> <span>파주시</span>
													</label></li>
													<li class="Area"><label> <input
															type="checkbox" name="area" value="평택시"> <span>평택시</span>
													</label></li>
													<li class="Area"><label> <input
															type="checkbox" name="area" value="포천시"> <span>포천시</span>
													</label></li>
													<li class="Area"><label> <input
															type="checkbox" name="area" value="하남시"> <span>하남시</span>
													</label></li>
													<li class="Area"><label> <input
															type="checkbox" name="area" value="화성시"> <span>화성시</span>
													</label></li>
													<li class="Area"><label> <input
															type="checkbox" name="area" value="가평군"> <span>가평군</span>
													</label></li>
													<li class="Area"><label> <input
															type="checkbox" name="area" value="양평군"> <span>양평군</span>
													</label></li>
													<li class="Area"><label> <input
															type="checkbox" name="area" value="연천군"> <span>연천군</span>
													</label></li>
												</ul>

												<ul class="locationArea none">
													<li class="Area"><label> <input
															type="checkbox" name="area" value="인천전체"> <span>인천전체</span>
													</label></li>
													<li class="Area"><label> <input
															type="checkbox" name="area" value="계양구"> <span>계양구</span>
													</label></li>
													<li class="Area"><label> <input
															type="checkbox" name="area" value="남동구"> <span>남동구</span>
													</label></li>
													<li class="Area"><label> <input
															type="checkbox" name="area" value="동구"> <span>동구</span>
													</label></li>
													<li class="Area"><label> <input
															type="checkbox" name="area" value="미추홀구"> <span>미추홀구</span>
													</label></li>
													<li class="Area"><label> <input
															type="checkbox" name="area" value="부평구"> <span>부평구</span>
													</label></li>
													<li class="Area"><label> <input
															type="checkbox" name="area" value="서구"> <span>서구</span>
													</label></li>
													<li class="Area"><label> <input
															type="checkbox" name="area" value="연수구"> <span>연수구</span>
													</label></li>
													<li class="Area"><label> <input
															type="checkbox" name="area" value="중구"> <span>중구</span>
													</label></li>
													<li class="Area"><label> <input
															type="checkbox" name="area" value="강화군"> <span>강화군</span>
													</label></li>
													<li class="Area"><label> <input
															type="checkbox" name="area" value="옹진군"> <span>옹진군</span>
													</label></li>
												</ul>
												<ul class="locationArea none">
													<li class="Area"><label> <input
															type="checkbox" name="area" value="부산전체"> <span>부산전체</span>
													</label></li>
													<li class="Area"><label> <input
															type="checkbox" name="area" value="강서구"> <span>강서구</span>
													</label></li>
													<li class="Area"><label> <input
															type="checkbox" name="area" value="금정구"> <span>금정구</span>
													</label></li>
													<li class="Area"><label> <input
															type="checkbox" name="area" value="남구"> <span>남구</span>
													</label></li>
													<li class="Area"><label> <input
															type="checkbox" name="area" value="동구"> <span>동구</span>
													</label></li>
													<li class="Area"><label> <input
															type="checkbox" name="area" value="동래구"> <span>동래구</span>
													</label></li>
													<li class="Area"><label> <input
															type="checkbox" name="area" value="부산진구"> <span>부산진구</span>
													</label></li>
													<li class="Area"><label> <input
															type="checkbox" name="area" value="북구"> <span>북구</span>
													</label></li>
													<li class="Area"><label> <input
															type="checkbox" name="area" value="사상구"> <span>사상구</span>
													</label></li>
													<li class="Area"><label> <input
															type="checkbox" name="area" value="사하구"> <span>사하구</span>
													</label></li>
													<li class="Area"><label> <input
															type="checkbox" name="area" value="서구"> <span>서구</span>
													</label></li>
													<li class="Area"><label> <input
															type="checkbox" name="area" value="수영구"> <span>수영구</span>
													</label></li>
													<li class="Area"><label> <input
															type="checkbox" name="area" value="연제구"> <span>연제구</span>
													</label></li>
													<li class="Area"><label> <input
															type="checkbox" name="area" value="영도구"> <span>영도구</span>
													</label></li>
													<li class="Area"><label> <input
															type="checkbox" name="area" value="중구"> <span>중구</span>
													</label></li>
													<li class="Area"><label> <input
															type="checkbox" name="area" value="해운대구"> <span>해운대구</span>
													</label></li>
													<li class="Area"><label> <input
															type="checkbox" name="area" value="기장군"> <span>기장군</span>
													</label></li>
												</ul>
												<ul class="locationArea none">
													<li class="Area"><label> <input
															type="checkbox" name="area" value="대구전체"> <span>대구전체</span>
													</label></li>
													<li class="Area"><label> <input
															type="checkbox" name="area" value="남구"> <span>남구</span>
													</label></li>
													<li class="Area"><label> <input
															type="checkbox" name="area" value="달서구"> <span>달서구</span>
													</label></li>
													<li class="Area"><label> <input
															type="checkbox" name="area" value="동구"> <span>동구</span>
													</label></li>
													<li class="Area"><label> <input
															type="checkbox" name="area" value="북구"> <span>북구</span>
													</label></li>
													<li class="Area"><label> <input
															type="checkbox" name="area" value="서구"> <span>서구</span>
													</label></li>
													<li class="Area"><label> <input
															type="checkbox" name="area" value="수성구"> <span>수성구</span>
													</label></li>
													<li class="Area"><label> <input
															type="checkbox" name="area" value="중구"> <span>중구</span>
													</label></li>
													<li class="Area"><label> <input
															type="checkbox" name="area" value="달성군"> <span>달성군</span>
													</label></li>
												</ul>
												<ul class="locationArea none">
													<li class="Area"><label> <input
															type="checkbox" name="area" value="대전전체"> <span>대전전체</span>
													</label></li>
													<li class="Area"><label> <input
															type="checkbox" name="area" value="동구"> <span>동구</span>
													</label></li>
													<li class="Area"><label> <input
															type="checkbox" name="area" value="대덕구"> <span>대덕구</span>
													</label></li>
													<li class="Area"><label> <input
															type="checkbox" name="area" value="서구"> <span>서구</span>
													</label></li>
													<li class="Area"><label> <input
															type="checkbox" name="area" value="유성구"> <span>유성구</span>
													</label></li>
													<li class="Area"><label> <input
															type="checkbox" name="area" value="중구"> <span>중구</span>
													</label></li>
												</ul>
												<ul class="locationArea none">
													<li class="Area"><label> <input
															type="checkbox" name="area" value="울산전체"> <span>울산전체</span>
													</label></li>
													<li class="Area"><label> <input
															type="checkbox" name="area" value="남구"> <span>남구</span>
													</label></li>
													<li class="Area"><label> <input
															type="checkbox" name="area" value="동구"> <span>동구</span>
													</label></li>
													<li class="Area"><label> <input
															type="checkbox" name="area" value="북구"> <span>북구</span>
													</label></li>
													<li class="Area"><label> <input
															type="checkbox" name="area" value="중구"> <span>중구</span>
													</label></li>
													<li class="Area"><label> <input
															type="checkbox" name="area" value="울주군"> <span>울주군</span>
													</label></li>
												</ul>
												<ul class="locationArea none">
													<li class="Area"><label> <input
															type="checkbox" name="area" value="세종전체"> <span>세종전체</span>
													</label></li>
													<li class="Area"><label> <input
															type="checkbox" name="area" value="조치원읍"> <span>조치원읍</span>
													</label></li>
													<li class="Area"><label> <input
															type="checkbox" name="area" value="금남면"> <span>금남면</span>
													</label></li>
													<li class="Area"><label> <input
															type="checkbox" name="area" value="부강면"> <span>부강면</span>
													</label></li>
													<li class="Area"><label> <input
															type="checkbox" name="area" value="소정면"> <span>소정면</span>
													</label></li>
													<li class="Area"><label> <input
															type="checkbox" name="area" value="연기면"> <span>연기면</span>
													</label></li>
													<li class="Area"><label> <input
															type="checkbox" name="area" value="연동면"> <span>연동면</span>
													</label></li>
													<li class="Area"><label> <input
															type="checkbox" name="area" value="연서면"> <span>연서면</span>
													</label></li>
													<li class="Area"><label> <input
															type="checkbox" name="area" value="조장군면"> <span>조장군면</span>
													</label></li>
													<li class="Area"><label> <input
															type="checkbox" name="area" value="전동면"> <span>전동면</span>
													</label></li>
													<li class="Area"><label> <input
															type="checkbox" name="area" value="전의면"> <span>전의면</span>
													</label></li>
												</ul>
												<ul class="locationArea none">
													<li class="Area"><label> <input
															type="checkbox" name="area" value="광주전체"> <span>광주전체</span>
													</label></li>
												</ul>
												<ul class="locationArea none">
													<li class="Area"><label> <input
															type="checkbox" name="area" value="강원전체"> <span>강원전체</span>
													</label></li>
												</ul>
												<ul class="locationArea none">
													<li class="Area"><label> <input
															type="checkbox" name="area" value="충북전체"> <span>충북전체</span>
													</label></li>
												</ul>
												<ul class="locationArea none">
													<li class="Area"><label> <input
															type="checkbox" name="area" value="충남전체"> <span>충남전체</span>
													</label></li>
												</ul>
												<ul class="locationArea none">
													<li class="Area"><label> <input
															type="checkbox" name="area" value="경북전체"> <span>경북전체</span>
													</label></li>
												</ul>
												<ul class="locationArea none">
													<li class="Area"><label> <input
															type="checkbox" name="area" value="경남전체"> <span>경남전체</span>
													</label></li>
												</ul>
												<ul class="locationArea none">
													<li class="Area"><label> <input
															type="checkbox" name="area" value="전북전체"> <span>전북전체</span>
													</label></li>
												</ul>
												<ul class="locationArea none">
													<li class="Area"><label> <input
															type="checkbox" name="area" value="전남전체"> <span>전남전체</span>
													</label></li>
												</ul>
												<ul class="locationArea none">
													<li class="Area"><label> <input
															type="checkbox" name="area" value="제주전체"> <span>제주전체</span>
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
							<button class="filter">
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
							<button class="filter">
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
											<button id="btn_reset" type="reset">초기화</button>
											<button id="priceBtn" type="submit">적용</button>
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
					<form action="" method="get" name="order">
						<div class="selectOrder">
							<select name="order">
							<!-- onchange="this.form.submit()" -->
								<option value="latest">최신 등록순</option>
								<option value="interest">별점순</option>
								<option value="popularity">관심순</option>
								<option value="viewCount">조회순</option>
							</select>
						</div>
					</form>
				</div>

				<ul class="spaceList">
					<c:choose>
						<c:when test="${not empty cafelist }">
							<c:forEach var="studyCafe" items="${cafelist}">

								<li>
								<a href="${pageContext.request.contextPath}/cafe/cafeReadOk.sc?studyCafeNumber=${studyCafe.getStudyCafeNumber()}" class="cafeOpen">
										<div class="spaceImg">
											<img class="imgInfo"
												src="${pageContext.request.contextPath}/assets/img/be0a11cf-0d08-4cd9-8719-88937088cf4b.jpg"
												alt="뉴욕감성"> <input type="button" class="favoritButton">
										</div>

										<div class="spaceItem">
											<div class="studyCafeName">
												<!-- 카페이름 -->
												<div class="cafename">
													<span>${studyCafe.getStudyCafeName() }</span>
												</div>

												<!-- 조회순 좋아요  -->
												<div class="readContLike">
													<!-- 조회순 -->
													<span class="CntLikeStyle"> <span class="box-sizing">
															<svg stroke="currentColor" fill="currentColor" stroke-width="0" viewBox="0 0 1024 1024" color="#BEC2C8" height="18" width="18" xmlns="http://www.w3.org/2000/svg" style="color: rgb(153, 153, 153);"><path d="M942.2 486.2C847.4 286.5 704.1 186 512 186c-192.2 0-335.4 100.5-430.2 300.3a60.3 60.3 0 0 0 0 51.5C176.6 737.5 319.9 838 512 838c192.2 0 335.4-100.5 430.2-300.3 7.7-16.2 7.7-35 0-51.5zM512 766c-161.3 0-279.4-81.8-362.7-254C232.6 339.8 350.7 258 512 258c161.3 0 279.4 81.8 362.7 254C791.5 684.2 673.4 766 512 766zm-4-430c-97.2 0-176 78.8-176 176s78.8 176 176 176 176-78.8 176-176-78.8-176-176-176zm0 288c-61.9 0-112-50.1-112-112s50.1-112 112-112 112 50.1 112 112-50.1 112-112 112z"></path></svg>
													</span>${studyCafe.getStudyCafeReadCount() }</span>
													<!-- like수 -->
													<span class="CntLikeStyle"> <span class="box-sizing">
															<img src="${pageContext.request.contextPath}/assets/img/icn-heart-filled-lightgray.c71bc69d.svg" alt="">
													</span>${studyCafe.getStudyCafeLikeCount() }</span>
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
													<img src="${pageContext.request.contextPath}/assets/img/Star_1.svg" alt="별점">
												</div>
												${studyCafe.getStudyCafeCommentScoreAvg() }
												<div class="replyInfo">&#40;후기 ${studyCafe.getStudyCafeCommentCount() }&#41;</div>
											</div>
										</div>
								</a>
								</li>

							</c:forEach>
						</c:when>
						<c:otherwise>
							<div>등록된 게시물이 없습니다.</div>
						</c:otherwise>
					</c:choose>
				</ul>
				
				<!-- 페이징 처리 -->
				<ul class="pageNumber">
				
					<c:if test="${prev }">
					<li class="prev">
						<button type="button" onclick="location.href='${pageContext.request.contextPath}/cafe/cafeListOk.sc?page=${startPage-1}'">
							<span class="box-sizing">
							<img src="${pageContext.request.contextPath}/assets/img/arrow-left-677294.ae6b1d0b.svg" alt="">
							</span>
						</button>
					</li>					
					</c:if>
					
					<c:forEach var="i" begin="${startPage }" end="${endPage }">
						<c:choose>
							<c:when test="${!(i==page) }">
								<li class="pageBtn">
								<button type="button" onclick="location.href='${pageContext.request.contextPath}/cafe/cafeListOk.sc?page=${i}'">
									<c:out value="${i }" />
								</button>
								</li>
							</c:when>
							<c:otherwise>
								<li class="pageBtn">
								<button type="button" onclick="location.href='#'" class="active">
									<c:out value="${i }" />
								</button>
								</li>							
							</c:otherwise>
						</c:choose>
					</c:forEach>
					
					<c:if test="${next }">
					<li class="next">
						<button type="button" onclick="location.href='${pageContext.request.contextPath}/cafe/cafeListOk.sc?page=${endPage+1}'">
							<span class="box-sizing">
							<img src="${pageContext.request.contextPath}/assets/img/arrow-right-677294.662f8854.svg" alt="">
							</span>
						</button>
					</li>
					</c:if>
				</ul>
			</div>

	</main>
	<footer></footer>

	<script src="https://code.jquery.com/jquery-3.6.3.js"
		integrity="sha256-nQLuAZGRRcILA+6dMBOvcRh5Pe310sBpanc6+QBmyVM="
		crossorigin="anonymous"></script>
	<script
		src="${pageContext.request.contextPath}/assets/js/main_reservation.js"></script>
</body>
</html>
