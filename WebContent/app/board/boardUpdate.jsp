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
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/boardWrite.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/reset.css">
<script
   src="${pageContext.request.contextPath}/assets/js/summernote/summernote-ko-KR.js"
   defer></script>
<script
   src="${pageContext.request.contextPath}/assets/js/summernote-lite.js"
   defer></script>
<link rel="stylesheet"
   href="${pageContext.request.contextPath}/assets/css/summernote/summernote-lite.css" />
</head>
<body>
	<!-- 헤더 -->
	<header></header>
	<div class="header">
				<jsp:include
					page="${pageContext.request.contextPath}/app/header/headerafter.jsp" />
	</div>
	
	<!-- 메인 -->
	<main class="postRegister-postWrapper">
	<form id="write-form" method="post" action="${pageContext.request.contextPath}/board/boardUpdateOk.bo" enctype="multipart/form-data"> 
		<!-- 포트폴리오 분류 -->
		<section></section>

		<!-- 포트폴리오 내용입력 -->
		<section>
			<div class="postRegister-wrapper">
				<span class="postRegister-sequence"></span>
				<h2 class="postRegister-text">포트폴리오를 공유해보세요</h2>
			</div>
			<div class="input-Title-wrap">
				<label for="input-labelText">제목</label> <input type="text"
					class="input-customInput" name="boardTitle" placeholder="글 제목을 입력해주세요! "
					value="${board.getBoardTitle()}">
			</div>

			<!-- 글쓰기 기능넣기 -->
			<!-- <form method="post"  > -->
			
				<textarea id="summernote-boardWrite" name="editordata">
                   <c:out value ="${board.getBoardContent()}"/> </textarea>
			<!-- </form> -->
	
			<!-- <div class="mainContent-container">
                    <div class="toolBar">툴 바</div>
                    <div class="mainContent-wrap">
                        <div class="mainContent-write" data-placeholder="프로젝트에 대해 소개해주세요!">
                        </div>
                     </div>
                </div>
            </div> -->
		</section>
		<!-- 첨부 파일 -->
			<div class="form-group">
				<label for="file">파일 첨부</label>

				<div class="image-upload-wrap">
					<input type="file" id="file" name="boardFile"
						accept=".jpg, .jpeg, .png" multiple />
					<div class="image-upload-box">
						<div class="upload-text">
							<div class="upload-icon">
								<svg viewBox="0 0 48 48">
                  <path fill-rule="evenodd" clip-rule="evenodd"
										d="M25.9087 8.12155L36.4566 18.3158C37.2603 18.7156 38.2648 18.6156 38.968 18.3158C39.6712 17.5163 39.6712 16.4169 38.968 15.7173L25.3059 2.5247C24.6027 1.8251 23.4977 1.8251 22.7945 2.5247L9.03196 15.8172C8.32877 16.5168 8.32877 17.6162 9.03196 18.3158C9.73516 19.0154 10.9406 19.0154 11.6438 18.3158L22.2922 8.12155V28.4111C22.2922 29.4106 23.0959 30.2091 24.1005 30.2091C25.105 30.2091 25.9087 29.4106 25.9087 28.4111V8.12155ZM5.61644 29.4104C5.61644 28.4109 4.81279 27.6104 3.80822 27.6104C2.80365 27.6104 2 28.5099 2 29.5093V44.202C2 45.2015 2.80365 46 3.80822 46H44.1918C45.1963 46 46 45.2015 46 44.202V29.5093C46 28.5099 45.1963 27.7113 44.1918 27.7113C43.1872 27.7113 42.3836 28.5099 42.3836 29.5093V42.3021H5.61644V29.4104Z"></path></svg>
							</div>
							<div class="upload-count">
								이미지 업로드(<span class="cnt">0</span>/5)
							</div>
						</div>
						<div class="upload-text">최대 5개까지 업로드 가능</div>
						<div class="upload-text">파일 형식 : jpg, png</div>
						<div class="upload-text">※ 이미지를 등록하면 즉시 반영됩니다.</div>
					</div>
				</div>
				<div class="img-controller-box">
					<ul class="file-list">

					</ul>
				</div>
			</div>
			<!-- /첨부 파일 -->


		<!-- 취소, 글 등록 -->
		<section class="writeButtons-wrap">
			<!-- 게시판 리스트로 돌아가기? -->
			<!-- <form action="" method="post"> -->
				<button type="button" class="writeButton-cancel">취소</button>
			<!-- </form> -->
			<!-- 게시판리스트로 돌아가기 ?? -->
			<!-- <form action="" method="post"> -->
				<button type="submit" class="writeButton-register">수정 완료</button>
			<!-- </form> -->	
		</section>
		</form> 
	</main>

	<!-- 푸터 -->
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
	<script src="${pageContext.request.contextPath}/assets/js/boardWrite.js"></script>
	<!-- <script src="../resource/summerNote/summernote-lite.js"></script>
	<script src="../resource/summerNote/summernote-ko-KR.js"></script>
	<link rel="stylesheet"
		href="../resource/summerNote/summernote-lite.css"> -->
	
</body>
</html>