<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page import="java.util.Date" %> 
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Group</title>
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/css/reset.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/css/adminGroupCheck.css">
</head>

<body>
	<div class="group-check-setting">
		<!-- 그룹 테이블 검색 -->
		<section class="group-search">
			<span class="material-symbols-outlined"> search </span>
			<!-- 테이블 검색 폼 연결 -->
			<form action="">
				<input type="text" placeholder="그룹 리더 아이디를 입력하세요.">
				<button type="button">검색</button>
			</form>
		</section>

		<!-- 그룹 테이블 정렬 -->
		<section class="group-align">
			<div class="align01">
				<span class="material-symbols-outlined"> check </span> <span>그룹
					번호 순</span>
			</div>
			<div class="align02">
				<span class="material-symbols-outlined"> check </span> <span>그룹
					생성일 순</span>
			</div>
		</section>
	</div>

	<!-- 총 개수 -->
	<h1>
		등록된 스터디 그룹 개수는 총 <span class="cafe-count">${total}</span>개 입니다.
	</h1>

	<!-- 그룹 주제별 필터 -->
	<div class="filter-wrap">
		<section class="group-filter">
			<div class="filter">
				<span class="filter-click filter-search">주제별</span> <span
					class="material-symbols-outlined filter-click">
					arrow_drop_down </span>
			</div>
			<div class="filter-field">
				<ul>
					<li>어학</li>
					<li>취업</li>
					<li>고시/공무원</li>
					<li>취미/교양</li>
					<li>프로그래밍</li>
					<li>자율</li>
				</ul>
			</div>
		</section>
	</div>

	<!-- 스터디그룹 콘텐츠 -->
	<section class="group-list">
		<!-- 클릭 시 스터디 그룹 콘텐츠로 이동 -->
		<c:choose>
			<c:when test="${not empty groupList}">
				<c:forEach var="group" items="${groupList}">
					<a>
						<div class="group-content">
							<div class="group-plus">
								<div class="field">
									<svg xmlns="http://www.w3.org/2000/svg" width="12" height="12"
										fill="currentColor" class="bi bi-pencil-fill"
										viewBox="0 0 16 16">
                            <path
											d="M12.854.146a.5.5 0 0 0-.707 0L10.5 1.793 14.207 5.5l1.647-1.646a.5.5 0 0 0 0-.708l-3-3zm.646 6.061L9.793 2.5 3.293 9H3.5a.5.5 0 0 1 .5.5v.5h.5a.5.5 0 0 1 .5.5v.5h.5a.5.5 0 0 1 .5.5v.5h.5a.5.5 0 0 1 .5.5v.207l6.5-6.5zm-7.468 7.468A.5.5 0 0 1 6 13.5V13h-.5a.5.5 0 0 1-.5-.5V12h-.5a.5.5 0 0 1-.5-.5V11h-.5a.5.5 0 0 1-.5-.5V10h-.5a.499.499 0 0 1-.175-.032l-.179.178a.5.5 0 0 0-.11.168l-2 5a.5.5 0 0 0 .65.65l5-2a.5.5 0 0 0 .168-.11l.178-.178z">
                            </path>
                        </svg>
									<span>${group.getStudyGroupField()}</span>
								</div>			
								<fmt:parseDate var="dateStr2" value="${group.getStudyGroupEndDate() }" pattern="yyyy-MM-dd HH:mm:ss"/>
								<fmt:formatDate var="dateFom2" value="${dateStr2}" pattern="yyyyMMdd"/>
								<fmt:parseNumber var="todayDelay" value="${dateStr2.time / (1000*60*60*24)}" integerOnly="true" />
								
								<c:set var="now" value="<%=new java.util.Date()%>" />
								<fmt:formatDate var="sysYear" value="${now}" pattern="yyyyMMdd" />
								<fmt:parseNumber var="today" value="${now.time /(1000*60*60*24)}" integerOnly="true" />
								
								
								<c:if test="${(todayDelay - today) - group.getStudyGroupDuration() < 7}">
									<div class="new">
										<svg xmlns="http://www.w3.org/2000/svg" width="12" height="12"
											fill="currentColor" class="bi bi-cup-hot-fill"
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


							<div class="group-delete">
								<span class="material-symbols-outlined delete"
									id="${group.getStudyGroupNumber()}"> close </span>
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
										src="${pageContext.request.contextPath}/upload/${group.getProfileSystemName()}"
										 width="30px"> <span>작성자 닉네임</span> <span>｜</span>
									<span>${group.getMemberNickname()}</span>
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

	</section>

	<c:choose>
		<c:when test="${groupList.size() != 21}">

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
		src="${pageContext.request.contextPath}/assets/js/adminGroupCheck.js"></script>

</body>

</html>