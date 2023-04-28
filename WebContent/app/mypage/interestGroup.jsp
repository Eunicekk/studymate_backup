<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>관심 그룹</title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/css/reset.css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/css/interestGroup.css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/css/reset.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/css/myPageMain.css">
<script src="https://kit.fontawesome.com/85b8cbcba2.js"
	crossorigin="anonymous"></script>
</head>
<body>

	<div class="container">
		<div class="main-container-section">
			<c:choose>
				<c:when test="${not empty myInterestGroup}">
					<c:forEach var="myInterestGroup" items="${myInterestGroup}">
						<ul class="study-list">
							<span class="study-item-open">
								<div class="cancel-btn">
									<li class="fas fa-times"
										data-studyGroupNumber="${myLeaderGroup.getStudyGroupNumber()}"></>
								</div>
								<li >
									<div class="study-item-badge">
										<div class="badge-badge">
											<div class="study-badge">${myInterestGroup.getStudyGroupOnline() }</div>
										</div>
										<div class="badge-badge">
											<div class="study-badge-new"></div>
										</div>
									</div>
									<div class="study-schedule">
										<p>개설일</p>
										<p>${myInterestGroup.getFormatStartDate() }</p>
									</div>
									<h1 class="study-title">
										<a href="${pageContext.request.contextPath}/studyGroup/studyGroupReadOk.sg?studyGroupNumber=${myInterestGroup.getStudyGroupNumber()}">
											${myInterestGroup.getStudyGroupTitle() }
											</a>
									</h1>
									<ul class="study-item-position-list">
										<li class="study-item-position">${myInterestGroup.getStudyGroupContent() }</li>
									</ul>
									<div class="study-item-border"></div>
									<section class="study-item-info">
										<div class="study-user-info">
											<div class="avatar-user">
												<c:choose>
												<c:when test="${empty myJoinGroup.getProfileSystemName()}">
													<img class="avatar-user-img"
														src="https://img.shareit.kr:13443/data/character/1.png"
														alt="" />
												</c:when>

												<c:otherwise>
													<img class="avatar-user-img"
														src="/upload/${myJoinGroup.getProfileSystemName()}" alt="" />
												</c:otherwise>
											</c:choose>
											</div>
											<div class="leader">${myInterestGroup.getMemberNickname() }</div>
										</div>
										<div class="studyItem-viewsAndComment">
											<div class="studyItem-view">
												<div class="view">
													<span> <i class="fa-regular fa-eye"
														style="color: #d6d6d6"></i>
													</span>
												</div>
												<p>${myInterestGroup.getStudyGroupReadCount() }</p>
											</div>
											<div class="studyItem-comment">
												<div class="comment">
													<span> <i class="fa-regular fa-comment"
														style="color: #c0c0c0"></i>
													</span>
													<p>${myInterestGroup.getGroupCommentCount() }</p>
												</div>
											</div>
										</div>
									</section>
							</li>
							</span>
						</ul>
					</c:forEach>
				</c:when>
			</c:choose>
		</div>
	</div>
	<section id="paging">
		<c:if test="${prev}">
			<span><a class="prev">&lt;</a></span>
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
		src="${pageContext.request.contextPath}/assets/js/interestGroup.js"></script>
</body>
</html>