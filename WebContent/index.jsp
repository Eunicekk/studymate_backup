<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page import="java.util.Date"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/css/reset.css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/css/main.css" />
<%-- <link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/css/main_reservation.css" /> --%>
<title>스터디 메이트</title>
</head>
<body>
	<header id="header-main">


		<c:choose>
			<c:when test="${empty sessionScope.memberNumber}">
				<div>
					<img src="${pageContext.request.contextPath}/assets/img/logo.png"
						alt="" class="logo" />
				</div>
				<div class="header-left">
					<a href="/cafe/cafeListOk.sc" class="content-cafe">스터디카페 예약</a> <a
						href="/studyGroup/studyGroupMainOk.sg" class="content-group">스터디그룹
						모집</a>
				</div>
				<div class="header-right">
					<div class="login">
						<a href="/member/login.me">로그인</a>
					</div>
					<div class="join">
						<a href="/member/join.me">회원가입</a>
					</div>
				</div>
			</c:when>
			<c:otherwise>
				<jsp:include
					page="${pageContext.request.contextPath}/app/header/haederafter.jsp" />
			</c:otherwise>
		</c:choose>

	</header>
	<section>
		<a href="/cafe/cafeListOk.sc"><img
			src="${pageContext.request.contextPath}/assets/img/cafeRV.png" alt=""
			style="width: 1500px; margin-top: 15px" /></a>
	</section>
	<div class="tag-study">
		<div class="cafe-list">스터디카페 목록</div>
		<a href="/cafe/cafeListOk.sc" class="show-all-btn"><div
				class="move-btn">전체보기</div> <img
			src="https://shareit.kr/_next/static/media/arrow-right-677294.662f8854.svg"
			alt="" class="cafe-arrow" /></a>
	</div>
	<section class="study-cafe">
		<!-- 8개만 화면 출력 -> 전체보기 페이지이동 -->
		<c:choose>
			<c:when test="${not empty cafelist }">
				<c:forEach var="studyCafe" items="${cafelist}">
					<a href="${pageContext.request.contextPath}/cafe/cafeReadOk.sc?studyCafeNumber=${studyCafe.getStudyCafeNumber()}"><figure class="new-figure">
							<img
								src="${pageContext.request.contextPath}/upload/${studyCafe.getCafeFileSystemName()}"
								alt="" />
							<figcaption>
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
													<svg stroke="currentColor" fill="currentColor"
														stroke-width="0" viewBox="0 0 1024 1024" color="#BEC2C8"
														height="18" width="18" xmlns="http://www.w3.org/2000/svg"
														style="color: rgb(153, 153, 153);">
														<path
															d="M942.2 486.2C847.4 286.5 704.1 186 512 186c-192.2 0-335.4 100.5-430.2 300.3a60.3 60.3 0 0 0 0 51.5C176.6 737.5 319.9 838 512 838c192.2 0 335.4-100.5 430.2-300.3 7.7-16.2 7.7-35 0-51.5zM512 766c-161.3 0-279.4-81.8-362.7-254C232.6 339.8 350.7 258 512 258c161.3 0 279.4 81.8 362.7 254C791.5 684.2 673.4 766 512 766zm-4-430c-97.2 0-176 78.8-176 176s78.8 176 176 176 176-78.8 176-176-78.8-176-176-176zm0 288c-61.9 0-112-50.1-112-112s50.1-112 112-112 112 50.1 112 112-50.1 112-112 112z"></path></svg>
											</span>${studyCafe.getStudyCafeReadCount() }</span>
											<!-- like수 -->
											<span class="CntLikeStyle"> <span class="box-sizing">
													<img
													src="${pageContext.request.contextPath}/assets/img/icn-heart-filled-lightgray.c71bc69d.svg"
													alt="">
											</span>${studyCafe.getLikeCount() }</span>
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
										<div class="replyInfo">&#40;후기 &#41;</div>
									</div>
								</div>
							</figcaption>
						</figure> </a>
				</c:forEach>
			</c:when>
			<c:otherwise>
				<div>등록된 게시물이 없습니다.</div>
			</c:otherwise>
		</c:choose>
	</section>
	<section>
		<a href="/studyGroup/studyGroupMainOk.sg"><img
			src="${pageContext.request.contextPath}/assets/img/groupRT.png"
			alt="" style="width: 1500px; height: 300px; margin-top: 40px" /></a>
	</section>
	<section class="studygroup">
		<a href=""><div class="group-banner">원하는 스터디 그룹을 찾아보세요!</div></a>
		<div class="arrow-prev">
			<button class="group-arrow-prev">
				<span> <img
					src="https://shareit.kr/_next/static/media/arrow-left-b3b3b3.d28cceba.svg"
					alt="" class="prev-btn" />
				</span>
			</button>
		</div>
		<div class="arrow-next">
			<button class="group-arrow-next">
				<span> <img
					src="https://shareit.kr/_next/static/media/arrow-right-b3b3b3.9e94f7a7.svg"
					alt="" class="next-btn" />
				</span>
			</button>
		</div>
	</section>
	<!-- 스터디 그룹 노출 -->
	<section class="show-group">
		<div class="slide-box">
			<div class="slide-new-line">
				<c:choose>
					<c:when test="${not empty groupList}">
						<c:forEach var="group" items="${groupList}">
							<input type="hidden" class="total" value="${total}">
							<a href="${pageContext.request.contextPath}/studyGroup/studyGroupReadOk.sg?studyGroupNumber=${group.getStudyGroupNumber()}">
								<div class="group-content">
									<div class="group-plus">
										<div class="field">
											<svg xmlns="http://www.w3.org/2000/svg" width="12"
												height="12" fill="currentColor" class="bi bi-pencil-fill"
												viewBox="0 0 16 16">
                            <path
													d="M12.854.146a.5.5 0 0 0-.707 0L10.5 1.793 14.207 5.5l1.647-1.646a.5.5 0 0 0 0-.708l-3-3zm.646 6.061L9.793 2.5 3.293 9H3.5a.5.5 0 0 1 .5.5v.5h.5a.5.5 0 0 1 .5.5v.5h.5a.5.5 0 0 1 .5.5v.5h.5a.5.5 0 0 1 .5.5v.207l6.5-6.5zm-7.468 7.468A.5.5 0 0 1 6 13.5V13h-.5a.5.5 0 0 1-.5-.5V12h-.5a.5.5 0 0 1-.5-.5V11h-.5a.5.5 0 0 1-.5-.5V10h-.5a.499.499 0 0 1-.175-.032l-.179.178a.5.5 0 0 0-.11.168l-2 5a.5.5 0 0 0 .65.65l5-2a.5.5 0 0 0 .168-.11l.178-.178z">
                            </path>
                        </svg>
											<span>${group.getStudyGroupField()}</span>
										</div>
										<fmt:parseDate var="dateStr2"
											value="${group.getStudyGroupEndDate() }"
											pattern="yyyy-MM-dd HH:mm:ss" />
										<fmt:formatDate var="dateFom2" value="${dateStr2}"
											pattern="yyyyMMdd" />
										<fmt:parseNumber var="todayDelay"
											value="${dateStr2.time / (1000*60*60*24)}" integerOnly="true" />

										<c:set var="now" value="<%=new java.util.Date()%>" />
										<fmt:formatDate var="sysYear" value="${now}"
											pattern="yyyyMMdd" />
										<fmt:parseNumber var="today"
											value="${now.time /(1000*60*60*24)}" integerOnly="true" />


										<c:if
											test="${(todayDelay - today) - group.getStudyGroupDuration() < 7}">
											<div class="new">
												<svg xmlns="http://www.w3.org/2000/svg" width="12"
													height="12" fill="currentColor" class="bi bi-cup-hot-fill"
													viewBox="0 0 16 16">
                            <path fill-rule="evenodd"
														d="M.5 6a.5.5 0 0 0-.488.608l1.652 7.434A2.5 2.5 0 0 0 4.104 16h5.792a2.5 2.5 0 0 0 2.44-1.958l.131-.59a3 3 0 0 0 1.3-5.854l.221-.99A.5.5 0 0 0 13.5 6H.5ZM13 12.5a2.01 2.01 0 0 1-.316-.025l.867-3.898A2.001 2.001 0 0 1 13 12.5Z">
                            </path>
                            <path
														d="m4.4.8-.003.004-.014.019a4.167 4.167 0 0 0-.204.31 2.327 2.327 0 0 0-.141.267c-.026.06-.034.092-.037.103v.004a.593.593 0 0 0 .091.248c.075.133.178.272.308.445l.01.012c.118.158.26.347.37.543.112.2.22.455.22.745 0 .188-.065.368-.119.494a3.31 3.31 0 0 1-.202.388 5.444 5.444 0 0 1-.253.382l-.018.025-.005.008-.002.002A.5.5 0 0 1 3.6 4.2l.003-.004.014-.019a4.149 4.149 0 0 0 .204-.31 2.06 2.06 0 0 0 .141-.267c.026-.06.034-.092.037-.103a.593.593 0 0 0-.09-.252A4.334 4.334 0 0 0 3.6 2.8l-.01-.012a5.099 5.099 0 0 1-.37-.543A1.53 1.53 0 0 1 3 1.5c0-.188.065-.368.119-.494.059-.138.134-.274.202-.388a5.446 5.446 0 0 1 .253-.382l.025-.035A.5.5 0 0 1 4.4.8Zm3 0-.003.004-.014.019a4.167 4.167 0 0 0-.204.31 2.327 2.327 0 0 0-.141.267c-.026.06-.034.092-.037.103v.004a.593.593 0 0 0 .091.248c.075.133.178.272.308.445l.01.012c.118.158.26.347.37.543.112.2.22.455.22.745 0 .188-.065.368-.119.494a3.31 3.31 0 0 1-.202.388 5.444 5.444 0 0 1-.253.382l-.018.025-.005.008-.002.002A.5.5 0 0 1 6.6 4.2l.003-.004.014-.019a4.149 4.149 0 0 0 .204-.31 2.06 2.06 0 0 0 .141-.267c.026-.06.034-.092.037-.103a.593.593 0 0 0-.09-.252A4.334 4.334 0 0 0 6.6 2.8l-.01-.012a5.099 5.099 0 0 1-.37-.543A1.53 1.53 0 0 1 6 1.5c0-.188.065-.368.119-.494.059-.138.134-.274.202-.388a5.446 5.446 0 0 1 .253-.382l.025-.035A.5.5 0 0 1 7.4.8Zm3 0-.003.004-.014.019a4.077 4.077 0 0 0-.204.31 2.337 2.337 0 0 0-.141.267c-.026.06-.034.092-.037.103v.004a.593.593 0 0 0 .091.248c.075.133.178.272.308.445l.01.012c.118.158.26.347.37.543.112.2.22.455.22.745 0 .188-.065.368-.119.494a3.198 3.198 0 0 1-.202.388 5.385 5.385 0 0 1-.252.382l-.019.025-.005.008-.002.002A.5.5 0 0 1 9.6 4.2l.003-.004.014-.019a4.149 4.149 0 0 0 .204-.31 2.06 2.06 0 0 0 .141-.267c.026-.06.034-.092.037-.103a.593.593 0 0 0-.09-.252A4.334 4.334 0 0 0 9.6 2.8l-.01-.012a5.099 5.099 0 0 1-.37-.543A1.53 1.53 0 0 1 9 1.5c0-.188.065-.368.119-.494.059-.138.134-.274.202-.388a5.446 5.446 0 0 1 .253-.382l.025-.035A.5.5 0 0 1 10.4.8Z">
                            </path>
                        </svg>
												<span>따끈따끈한 새 글</span>
											</div>
										</c:if>
										<c:if test="${group.getLikeCount() >= 10}">
											<div class="hot">
												<span class="material-symbols-outlined"> favorite </span> <span>인기</span>
											</div>
										</c:if>
										<c:if test="${todayDelay - today < 14}">
											<div class="finish">
												<span class="material-symbols-outlined">
													clock_loader_90 </span> <span>마감코앞</span>
											</div>
										</c:if>
									</div>


									<div class="group-date">
										<span>모집 마감일 ｜</span> <span>${group.getStudyGroupEndDate()}</span>
									</div>
									<div class="group-title">
										<span>${group.getStudyGroupTitle()}</span>
									</div>
									<div class="group-keyword">
										<span>#JAVA</span> <span>#코딩테스트</span> <span>#개발자취업</span> <span>#IT직군</span>
									</div>
									<div class="group-info">
										<div class="user">
											<img
												src="https://hola-post-image.s3.ap-northeast-2.amazonaws.com/default.PNG"
												alt="그룹 프로필 사진" width="30px"> <span>${group.getMemberNickname()}</span>
										</div>
									</div>
								</div>
							</a>
						</c:forEach>
					</c:when>
					<c:otherwise>
						<tr>
							<td colspan="5" align="center">등록된 게시물이 없습니다.</td>
						</tr>
					</c:otherwise>
				</c:choose>


			</div>
		</div>
		<!--  -->
	</section>
	<a href=""><div class="community-banner">
			<div class="community-banner-first">포트폴리오 및 스터디 후기</div>
			<div class="community-banner-second">다른 사람들의 포트폴리오 및 스터디 그룹 후기를
				읽어보세요.</div>
		</div></a>

	<section class="community-list">
		<!--게시물 리스트 노출 -->
		<ul class="content-list">
			<div class="content-listWrap">
				<!-- 게시글 (1/10) -->
				<c:choose>
					<c:when test="${not empty boardList}">
						<c:forEach var="board" items="${boardList}">
							<li>
								<div class="content-subject-wrap">
									<!-- 이거 필요한지? -->
									<em class="label-hot"></em> <a href=""><span
										class="content-subject">${board.getBoardTitle()}</span></a>
								</div> <!-- 게시글 미리보기 --> 
								<span class="content-desc"> ${board.getBoardContent()} </span>
								<div class="content-data-info">
									<!-- 좋아요수, 댓글수, 조회수, 글쓴이 -->
									<!-- (3/4) 조회수 -->
									<span class="content-info content-view"> <!-- 조회수 눈 이미지 -->
										<img src="" alt="" /> 조회수 <strong>${board.getBoardReadCount()}</strong>
									</span>

									<!--(4/4) 작성자이름, 작성 날짜-->
									<div class="content-member-info">
										<div>
											<img
												src="https://mblogthumb-phinf.pstatic.net/20120713_47/wnfhd6545_1342157203202y8kjd_JPEG/%C4%C4%C7%BB%C5%CD1.jpg?type=w2"
												class="content-userImg" height="25px" width="25px" />
										</div>
										<span class="content-writer">${board.getMemberNickname()}</span> <span
											class="content-write-date">${board.getBoardDate()}</span>
									</div>
									<!-- 프사 -->
								</div>
							</li>
						</c:forEach>
					</c:when>
					<c:otherwise>
						<tr>
							<td colspan="5" align="center">등록된 게시물이 없습니다.</td>
						</tr>
					</c:otherwise>
				</c:choose>
				<!--  -->
			</div>
		</ul>
	</section>
	<footer id="new-footer">
		<div class="left-box">
			<div class="footer-category">
				<a href=""><span>회사소개</span></a> <a href=""><span>채용</span></a> <a
					href=""><span>이용약관</span></a> <a href=""><span
					class="font-bold">개인정보처리방침</span></a> <a href="/admin/faq.ad"><span>고객센터</span></a>
			</div>
			<div class="project-name">studymate 사업자 정보</div>
			<div class="info">
				<span>팀명:코드웨이브</span>
			</div>
			<div class="info">
				<span>사업자등록번호:123-44-33255</span> <span>통신판매업</span> <span>개인정보보호책임자:이정현</span>
			</div>
			<div class="info">
				<span>주소:서울특별시 강남구 코리아IT아카데미</span>
			</div>
			<div class="info">
				<span>입점문의: <a href="" class="font-bold">입점문의하기</a>
				</span> <span>대표이메일:dhtkan12@gmail.com</span>
			</div>
			<div class="team-member-name">팀원 : 김윤, 김준혁, 유정현, 이정현, 전은실, 조상수
			</div>
		</div>
		<div class="right-box">
			<div class="representative-number">대표번호</div>
			<div class="number">010-4064-5072</div>
			<div class="info-time">문의시간:평일10:00~19:00</div>
			<div class="footer-box-btn">
				<a>카카오톡 문의</a> <a>자주하는 질문</a>
			</div>
		</div>
	</footer>
	<script src="https://kit.fontawesome.com/7ad89ef4e0.js"
		crossorigin="anonymous"></script>
	<script src="https://code.jquery.com/jquery-3.6.4.js"></script>
	<script src="${pageContext.request.contextPath}/assets/js/main.js"></script>
</body>
</html>