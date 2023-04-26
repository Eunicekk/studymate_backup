<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Document</title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/css/faq.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/css/reset.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/css/adminBoardCheck.css">
</head>
<body>
	<header>
		<c:choose>
			<c:when test="${empty sessionScope.memberNumber}">
					<jsp:include
						page="${pageContext.request.contextPath}/app/header/header.jsp" />
				<%-- <jsp:include
					page="${pageContext.request.contextPath}/app/admin/adminheader.jsp" /> --%>
			</c:when>
			<c:otherwise>
<%-- 				<c:if test="${not empty sessionScope.memberNumber }">
				<jsp:include
					page="${pageContext.request.contextPath}/app/admin/adminhaederafter.jsp" />
				</c:if> --%>
					<jsp:include
						page="${pageContext.request.contextPath}/app/header/headerafter.jsp" />
			</c:otherwise>
		</c:choose>
	</header>


	<!-- 메인  -->
	<main>
		<!-- 배너 -->
		<section class="topBanner-container">
			<div class="topBanner-textBox">
				<p>자주하는 질문 FAQ</p>
				<p>자주 찾으시는 질문을 모아 보았어요.</p>
				<c:choose>
					<c:when test="${empty sessionScope.adminNickname}">

					</c:when>
					<c:otherwise>
						<div class="boardContent-editButtons">
							<!-- 현재 로그인한 아이디or멤버넘버, 현재 게시글 아이디or멤버넘버 비교하기 c:if-->
							<button type="button" class="boardContent-delete write">등록</button>

						</div>
					</c:otherwise>
				</c:choose>

			</div>
		</section>

		<!-- 자주하는 질문 리스트  -->
		<section class="NoticeContent-container">
			<div class="NoticeContent-titleBox">
				<h2>어떤 것이 궁금하신가요? 언제나 더 나은 서비스를 위해 노력하겠습니다 !</h2>
			</div>


			<ul>
				<!-- 1/6 -->
				<c:choose>
					<c:when test="${not empty faqlist}">
						<c:forEach var="faq" items="${faqlist}">
							<li>
								<button type="button" class="NoticeContent-serviceItemButton">
									<p data-adminNumber="${faq.getAdminNumber()}">FAQ</p>
									<div class="serviceItem-titleDate">
										<p>${faq.getFaqTitle()}</p>
										<div>
											<img
												src="https://cdn-icons-png.flaticon.com/512/892/892498.png"
												class="serviceItem-ExtraButton" width="20px" height="20px">
										</div>
									</div>
								</button> <!-- 팝업 창 -->
								<div class="serviceItem-contentBox">

									<h2>${faq.getFaqTitle()}</h2>
									<br>
									<%
									pageContext.setAttribute("br", "<br/>");
									pageContext.setAttribute("cn", "\n");
									%>
									<p>${fn:replace(faq.getFaqContent(),cn,br)}</p>
									<br> <br> <br>
									<c:choose>
										<c:when test="${empty sessionScope.adminNickname}">

										</c:when>
										<c:otherwise>
											<div class="boardContent-editButtons">

												<button type="button" value="${faq.getFaqNumber()}"
													class="boardContent-edit">수정</button>
												<button type="button" value="${faq.getFaqNumber()}"
													class="boardContent-delete">삭제</button>
											</div>
										</c:otherwise>
									</c:choose>
								</div>
							</li>
						</c:forEach>
					</c:when>
					<c:otherwise>

						<p colspan="5" align="center">등록된 게시물이 없습니다.</p>

					</c:otherwise>
				</c:choose>

			</ul>
		</section>

		<section id="paging">


			<c:if test="${prev}">
				<a
					href="${pageContext.request.contextPath}/admin/faqListOk.ad?page=${startPage - 1}"
					class="prev"> <svg xmlns="http://www.w3.org/2000/svg"
						width="16" height="12" fill="currentColor"
						class="bi bi-chevron-left" viewBox="0 0 16 16">
                <path fill-rule="evenodd"
							d="M11.354 1.646a.5.5 0 0 1 0 .708L5.707 8l5.647 5.646a.5.5 0 0 1-.708.708l-6-6a.5.5 0 0 1 0-.708l6-6a.5.5 0 0 1 .708 0z" />
            </svg></a>
			</c:if>


			<c:forEach var="i" begin="${startPage}" end="${endPage}">
				<c:choose>
					<c:when test="${!(i == page) }">

						<a
							href="${pageContext.request.contextPath}/admin/faqListOk.ad?page=${i}"
							class="pageBtn"> <c:out value="${i}" /> <!-- <svg
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
				<a
					href="${pageContext.request.contextPath}/admin/faqListOk.ad?page=${endPage + 1}"
					class="next"> <svg xmlns="http://www.w3.org/2000/svg"
						width="16" height="12" fill="currentColor"
						class="bi bi-chevron-right" viewBox="0 0 16 16">
                <path fill-rule="evenodd"
							d="M4.646 1.646a.5.5 0 0 1 .708 0l6 6a.5.5 0 0 1 0 .708l-6 6a.5.5 0 0 1-.708-.708L10.293 8 4.646 2.354a.5.5 0 0 1 0-.708z" />
            </svg>
				</a>
			</c:if>

		</section>
	</main>

	<!-- footer -->
	<footer>
		<c:choose>
			<c:when test="${empty sessionScope.adminNickname}">
				<jsp:include
					page="${pageContext.request.contextPath}/app/footer/footer.jsp" />
			</c:when>
			<c:otherwise>
				<jsp:include
					page="${pageContext.request.contextPath}/app/footer/footer.jsp" />
			</c:otherwise>
		</c:choose>
	</footer>

	<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
	<script src="${pageContext.request.contextPath}/assets/js/faq.js"></script>

</body>
</html>