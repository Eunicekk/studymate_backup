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
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/resource/reset.css">
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
					<button type="button" class="prev-to-list">
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
					<div class="boardContent-uploadDate">작성일 2123.08.10</div>


					<div class="boardContent-editButtons">
						<!-- 현재 로그인한 아이디or멤버넘버, 현재 게시글 아이디or멤버넘버 비교하기 c:if-->
						<button type="button" class="boardContent-edit">수정</button>
						<button type="button" class="boardContent-delete">삭제</button>
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
					포트폴리오 본문 내용 [🌏 WINGLE] 프론트엔드 개발자, UI/UX디자이너 리크루팅 ⭐️



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
					https://open.kakao.com/o/sIm0WH5e 
				</div>
			</section>

			<!-- 게시글 댓글 section -->
			<section class="boardContent-postCommentAndViews">
				<div class="boardContent-postComment">
					<div class="commentInput-wrap">
						<!-- 댓글 개수, 댓글 입력, 댓글 등록버튼 -->
						<h1 class="commentInput-count">100개의 댓글이 있습니다</h1>
						<textarea class="commentInput-commentText" placeholder="댓글을 입력하세요">
                        <!-- 댓글 입력하기 -->
                    </textarea>

						<div class="commentInput-buttonWrapper">
							<button class="commentInput-buttonComplete" name="register">댓글
								등록</button>
						</div>

					</div>



					<!-- 댓글 리스트 -->

					<!-- 마진없는 댓글 컨테이너 -->
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
											<div class="commentItem-registerDate">2143.08.10
												13:42:55</div>
										</div>
									</div>
								</div>
								<!-- 댓글 수정 삭제 버튼 사용자 아이디 or 멤버 넘버 비교 후 보이게 하기 c:if -->
								<div class="boardReply-editDelete">
									<button type="button" class="boardReply-editor-buttons">수정</button>
									<button type="button" class="boardReply-editor-buttons">삭제</button>
								</div>
							</section>
							<section class="commentItem-CommentContent">
								<p class="commentItem-CommentContent">안녕하세요 미래에서 왔습니데</p>
							</section>
						</li>
					</ul>
				</div>
			</section>
		</main>

		<footer></footer>
	</div>

	<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
	<script src="../js/boardRead.js"></script>
</body>
</html>