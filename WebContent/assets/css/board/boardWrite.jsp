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


	<!-- 메인 -->
	<main class="postRegister-postWrapper">
	<form id="write-form" method="post" action="${pageContext.request.contextPath}/board/boardWriteOk.bo" enctype="multipart/form-data"> 
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
					class="input-customInput" placeholder="글 제목을 입력해주세요! ">
			</div>

			<!-- 글쓰기 기능넣기 -->
			<!-- <form method="post"  > -->
			
				<textarea id="summernote-boardWrite" name="editordata">
                    </textarea>
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



		<!-- 취소, 글 등록 -->
		<section class="writeButtons-wrap">
			<!-- 게시판 리스트로 돌아가기? -->
			<!-- <form action="" method="post"> -->
				<button type="button" class="writeButton-cancel">취소</button>
			<!-- </form> -->
			<!-- 게시판리스트로 돌아가기 ?? -->
			<!-- <form action="" method="post"> -->
				<button type="submit" class="writeButton-register">글 등록</button>
			<!-- </form> -->
		</section>
		</form> 
	</main>

	<!-- 푸터 -->
	<footer></footer>

	<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
	<script src="${pageContext.request.contextPath}/assets/js/boardWrite.js"></script>
	<!-- <script src="../resource/summerNote/summernote-lite.js"></script>
	<script src="../resource/summerNote/summernote-ko-KR.js"></script>
	<link rel="stylesheet"
		href="../resource/summerNote/summernote-lite.css"> -->
</body>
</html>