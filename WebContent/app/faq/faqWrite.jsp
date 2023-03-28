<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Cafe</title>
    <link rel="stylesheet"
        href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/faqWrite.css">
</head>

<body>
    <h1>회원들이 자주 묻는 질문을 추가하세요.</h1>

    <form action="">
        <!-- FAQ 제목 -->
        <div class="title flex">
            <label for="title">FAQ 제목</label>
            <input type="text" name="cafeTitle" id="title" placeholder="등록할 FAQ 제목을 입력하세요." required>
        </div>

        <!-- summernote -->
        <textarea name="editordata" id="summernote-faq"></textarea>
        <button type="button" class="signup">FAQ 등록</button>
    </form>

    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="${pageContext.request.contextPath}/assets/js/summernote/summernote-lite.js"></script>
    <script src="${pageContext.request.contextPath}/assets/js/summernote/lang/summernote-ko-KR.js"></script>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/summernote/summernote-lite.css">
</body>

</html>