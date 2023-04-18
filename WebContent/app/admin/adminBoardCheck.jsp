<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Board</title>
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/css/reset.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/css/adminBoardCheck.css">
</head>
<body>
	<div class="board-check-setting">
		<!-- 포트폴리오 테이블 검색 -->
		<section class="board-search">
			<span class="material-symbols-outlined"> search </span>
			<!-- 테이블 검색 폼 연결 -->
			<form action="" post=" get">
				<input type="text" placeholder="작성자의 아이디를 입력하세요.">
				<button type="button">검색</button>
			</form>
		</section>

		<!-- 포트폴리오 테이블 정렬 -->
		<section class="board-align">
			<div class="align01">
				<span class="material-symbols-outlined"> check </span> <span>게시물
					번호 순</span>
			</div>
			<div class="align02">
				<span class="material-symbols-outlined"> check </span> <span>작성
					날짜 순</span>
			</div>
		</section>
	</div>

	<!-- 총 개수 -->
	<h1>
		등록된 포트폴리오 개수는 총 <span class="cafe-count">${total}</span>개 입니다.
	</h1>

	<!-- 포트폴리오 테이블 전체 -->
	<main class="board-check">
		<table class="board-table">
			<thead>
				<tr>
					<th>번호</th>
					<th>닉네임</th>
					<th>아이디</th>
					<th>제목</th>
					<th>작성일</th>
					<th>조회수</th>
					<th></th>
				</tr>
			</thead>
			<tbody align="center">
				<!-- 임시로 포트폴리오 정보 넣어놓음, 데이터 삽입 필요 -->
				<!-- 제목 클릭 시 해당 게시물 상세보기로 이동 -->
				<c:choose>
					<c:when test="${not empty boardList}">
						<c:forEach var="board" items="${boardList}">
							<tr>
								<td class="no">${board.getBoardNumber()}</td>
								<td class="nickname">${board.getMemberNickname()}</td>
								<td class="id">${board.getMemberId()}</td>
								<td class="title"><a href="#">${board.getBoardTitle()}</a></td>
								<td class="date">${board.getBoardDate()}</td>
								<td class="read-count">${board.getBoardReadCount()}</td>
								<td><span class="material-symbols-outlined delete"
									id='${board.getBoardNumber()}'> close </span></td>
							</tr>
						</c:forEach>
					</c:when>
					<c:otherwise>
						<tr>
							<td colspan="5" align="center">등록된 게시물이 없습니다.</td>
						</tr>
					</c:otherwise>
				</c:choose>
			</tbody>
		</table>
	</main>


	<c:choose>
		<c:when test="${boardList.size() != 10}">

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
		src="${pageContext.request.contextPath}/assets/js/adminBoardCheck.js"></script>

</body>

</html>