<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>	
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Document</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/boardRead.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/reset.css">
</head>
<body>

	<!-- 전체 페이지 width/height: 100% -->
	<div>
		<!-- 헤더 -->
		<header></header>

		<!-- 메인컨텐츠 영역 - 게시글헤더(뒤로가기,글제목,글쓴이,작성일) / 게시글콘텐츠()/ 게시글댓글-->
		<main class="boardContent-wrapper">
			<!-- 게시글헤더 section -->
			<section class="boardContent-postHeader">
				<!-- 뒤로가기버튼, 글제목, 글쓴이/날짜 -->
				<div class="currentColor">
					<button type="button" class="prev-to-list" data-boardNumber="${board.getBoardNumber()}">
					<%-- <c:out value="${board.getBoardNumber() }"></c:out> --%>
						<!-- 뒤로가기 버튼 -->
						<img src="https://cdn-icons-png.flaticon.com/512/3353/3353056.png"
							alt="" height="25" width="25">
					</button>
				</div>
				<div class="boardContent-title">
					<c:out value="${board.getBoardTitle()}" />
					<!-- 임시 제목 <br> [포트폴리오] lemon은 어떻게 만들어지는가⭐️ -->
				</div>
				<div class="boardContent-userAndDate">
					<div class="boardContent-user">
						<!-- 프로필사진이랑이름 넣기-->
						<div class="boardContent-userImg">
							<img
								src="https://mblogthumb-phinf.pstatic.net/20120713_47/wnfhd6545_1342157203202y8kjd_JPEG/%C4%C4%C7%BB%C5%CD1.jpg?type=w2"
								class="userImg" height="3rem" width="3rem">
						</div>
						<div class="boardContent-userName">
						<c:out value="${board.getMemberId() }" />
						<!-- 은시룽 /작성자 --></div>
					</div>
					<div class="boardContent-uploadDate">작성일 "${board.getBoardDate() }"</div>


					<div class="boardContent-editButtons">
						<!-- 현재 로그인한 아이디or멤버넘버, 현재 게시글 아이디or멤버넘버 비교하기 c:if-->
					 <%-- <c:if test="${sessionScope.memberNumber == board.getMemberNumber()}"> --%>
						<button type="button" class="boardContent-edit">수정</button>
						<button type="button" class="boardContent-delete">삭제</button>
					<%--  </c:if> --%>
					</div>
				</div>
			</section>
			<br> <br>
			<section>포트폴리오 분류</section>
			<br> <br> <br> <br>

			<!-- 게시글 본문 section -->
			<section class="boardContent-postContent-wrapper">
				<h2 class="boardContent-postInfo">포트폴리오 소개</h2>
				<div class="boardContent-postContent">
				<c:out value="${board.getBoardContent() }" />
<!-- 					포트폴리오 본문 내용 [🌏 WINGLE] 프론트엔드 개발자, UI/UX디자이너 리크루팅 ⭐️



					<p>안녕하세요, 저희는 숙명여대 학생들로 구성된 WINGLE팀입니다.</p>
					<br> WINGLE은 대학 내 외국인, 한국인 학생을 대상으로 하는 국제교류 커뮤니티 개발 프로젝트로, <br>
					현재 MVP개발 및 베타버전 출시를 앞두고 있습니다. 서비스 형태는
					<모바일 웹 어플리케이션>이며, <br>
					23-1학기동안 베타버전 런칭, 운영, 디벨롭 등을 진행하고자 합니다. <br>
					WINGLE과 함께 글로벌 서비스를 만들어갈 ❗️프론트엔드 개발자, UI/UX디자이너❗️를 구합니다! <br>




					🌏 WINGLE 프로젝트 소개 및 모집공고<br>
					<br>
					https://prickle-bergamot-c19.notion.site/WINGLE-PROJECT-5b1c8e024b2744d19306a14a4abebbe6


					<br>


					📌모집분야 및 인원 - 프론트엔드 개발자 - UI/UX 디자이너 📌 모집방법 : 노션페이지 - 팀별 모집공고 참고



					📌 모집기간 : 3/22 (수) 자정 까지 📌 리크루팅 문의 오카방 👉🏼
					https://open.kakao.com/o/sIm0WH5e  -->
				</div>
				<!-- 임시파일 -->
				<div class="boardContent-postFile">
				<c:forEach var="file" items="${board.getFiles() }">
					<div class="img-box">
						<img
							src="${pageContext.request.contextPath}/upload/${file.getBoardFileSystemName()}">

					<%-- 	<a
							href="${pageContext.request.contextPath}/file/download.boardFile?boardFileSystemName=${file.getBoardFileSystemName()}&boardFileOriginalName=${file.getBoardFileOriginalName()}">
							<!-- <div class="download-btn">
								<svg viewBox="0 0 14 14" xmlns="http://www.w3.org/2000/svg">
									<path fill-rule="evenodd" clip-rule="evenodd"
										d="M6.44325 7.02619L3.36676 4.05286C3.13236 3.93626 2.83937 3.96541 2.63427 4.05286C2.42917 4.28606 2.42917 4.60672 2.63427 4.81077L6.61905 8.6586C6.82415 8.86265 7.14644 8.86265 7.35154 8.6586L11.3656 4.78162C11.5707 4.57757 11.5707 4.25691 11.3656 4.05286C11.1605 3.84881 10.8089 3.84881 10.6038 4.05286L7.49804 7.02619L7.49804 1.1084C7.49804 0.816895 7.26364 0.583984 6.97064 0.583984C6.67765 0.583984 6.44325 0.816895 6.44325 1.1084L6.44325 7.02619ZM1.63829 9.91137C1.63829 9.61987 1.40389 9.38638 1.11089 9.38638C0.817895 9.38638 0.583496 9.64873 0.583496 9.94023V12.8923C0.583496 13.1838 0.817895 13.4167 1.11089 13.4167H12.8894C13.1824 13.4167 13.4168 13.1838 13.4168 12.8923V9.94023C13.4168 9.64873 13.1824 9.41582 12.8894 9.41582C12.5964 9.41582 12.362 9.64873 12.362 9.94023V12.3381H1.63829V9.91137Z"></path></svg>
							</div> -->
						</a> --%>
					</div>
				</c:forEach>
				</div>
			</section>

			<!-- 게시글 댓글 section -->
			<section class="boardContent-postCommentAndViews">
				<div class="boardContent-postComment">
					<input type="hidden" name="boardNumber"
                   value="${board.getBoardNumber()}">
					<div class="commentInput-wrap">
						<!-- 댓글 개수, 댓글 입력, 댓글 등록버튼 -->
						<c:choose>
						 <c:when test="${not empty board.getBoardCommentCount()}">
							<h1 class="commentInput-count"><c:out value="${post.getBoardCommentCount()}"/>개의 댓글이 있습니다</h1>
						 </c:when>
						 <c:otherwise>
							<h1 class="commentInput-count">댓글이 없습니다</h1>
						 </c:otherwise>
						</c:choose>
						<textarea class="commentInput-commentText" placeholder="댓글을 입력하세요"></textarea>

						<div class="commentInput-buttonWrapper">
							<button class="commentInput-buttonComplete" name="register">댓글
								등록</button>
						</div>

					</div>



					<!-- 댓글 리스트 -->

					<!-- 마진없는 댓글 컨테이너 -->
				<div class="commentList">
					<ul class="commentList-CommentList">
					 
						
						<!-- 마진 준 댓글 리스트 컨테이너 -->
						<li class="commentItem-commentContainer">
							<section class="commentItem-CommentHeader">
								<div class="commentItem-writerWrapper">
									<img class="commentItem-writerImg"
										src="https://mblogthumb-phinf.pstatic.net/20120713_47/wnfhd6545_1342157203202y8kjd_JPEG/%C4%C4%C7%BB%C5%CD1.jpg?type=w2"
										alt="">
									<div class="commentItem-commentInfo">
										<div class="commentItem-title">
											<div class="commentItem-userNickname">른시룽</div>
											<div class="commentItem-registerDate">2222-22-22</div>
										</div>
									</div>
								</div>
								<!-- 댓글 수정 삭제 버튼 사용자 아이디 or 멤버 넘버 비교 후 보이게 하기 c:if -->
								<div class="boardReply-btn-gruops">
									<div class="boardReply-editDelete">
										<button type="button" class="boardReply-editor-modify-ready-buttons" id="modify-btn">수정</button>
										<button type="button" class="boardReply-editor-delete-buttons" id="delete-btn">삭제</button>
									</div>
									<div class="boardReply-editDelete none">	
										<button type="button" class="boardReply-editor-modify-button" id="modify-complete-btn">수정 완료</button>
									</div>	
								</div>
							</section>
							<section class="commentItem-CommentContent">
								<p class="commentItem-CommentContent">ㅁㅁ</p>
							</section>
						</li>
					
					 </ul>
				 </div>
				</div>
			</section>
		</main>

		<footer></footer>
	</div>

	<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
		<script >
		/* let memberNumber = "${sessionScope.memberNumber}"; */
		let memberNumber ="2"
		let $boardNumber ="${board.getBoardNumber()}"
	</script>
	<script src="${pageContext.request.contextPath}/assets/js/boardRead.js"></script>
</body>
</html>