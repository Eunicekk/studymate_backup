<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Cafe</title>
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/css/faqWrite.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/css/summernote/summernote-lite.css">

</head>

<header>
	<c:choose>
		<c:when test="${empty sessionScope.adminNickname}">
			<jsp:include
				page="${pageContext.request.contextPath}/app/admin/adminheader.jsp" />
		</c:when>
		<c:otherwise>
			<jsp:include
				page="${pageContext.request.contextPath}/app/admin/adminhaederafter.jsp" />
		</c:otherwise>
	</c:choose>
</header>

<body>
	<h1>회원들이 자주 묻는 질문을 추가하세요.</h1>

	<form action="faqUpdateOk.ad" method="get">
		<!-- FAQ 제목 -->
		<input name="faqNumber" type="hidden" value="${faq.getFaqNumber()}">
		<div class="title flex">
			<label for="title">FAQ 제목</label> <input type="text" name="cafeTitle"
				id="title" placeholder="등록할 FAQ 제목을 입력하세요."
				value="${faq.getFaqTitle()}" required>
		</div>

		<!-- summernote -->
		<textarea name="editordata" id="summernote-faq" style="width: 100%"
			value="${faq.getFaqContent()}"></textarea>
		<button type="submit" class="update" value="${faq.getFaqNumber()}">FAQ
			수정</button>
	</form>

	<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/assets/js/summernote-lite.js"></script>
	<script
		src="${pageContext.request.contextPath}/assets/js/summernote/summernote-ko-KR.js"></script>
	<script src="${pageContext.request.contextPath}/assets/js/faqWrite.js"></script>

	<script type="text/javascript">
		$('#summernote-faq').summernote('code', "${faq.getFaqContent()}");
		$('#summernote-faq').summernote({
			placeholder : '최대 500자 작성 가능합니다.',
			height : 300,
			width : 1060,
			lang : 'ko-KR',
			callbacks : {
				onImageUpload : function(files, editor, welEditable) {
					for (var i = files.length - 1; i >= 0; i--) {
						sendFile(files[i], this);
					}
				}
			}
		});
	</script>
</body>

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

</html>