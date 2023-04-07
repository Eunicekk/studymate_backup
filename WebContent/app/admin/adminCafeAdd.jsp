<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Cafe</title>
    <link rel="stylesheet"
        href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/adminCafeAdd.css">
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="${pageContext.request.contextPath}/assets/js/summernote-lite.js" defer></script>
    <script src="${pageContext.request.contextPath}/assets/js/summernote/summernote-ko-KR.js" defer></script>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/summernote/summernote-lite.css">
    <script src="${pageContext.request.contextPath}/assets/js/adminCafeAdd.js" defer></script>
</head>

<body>
    <form action="adminCafeWriteOk.ad" method="post" enctype="multipart/form-data">
        <!-- 스터디 카페 이름 -->
        <div class="title flex">
            <label for="title">스터디 카페 이름</label>
            <input type="text" name="cafeTitle" id="title" placeholder="등록할 스터디 카페 이름을 입력하세요." required>
        </div>

        <!-- 스터디 카페 사진 첨부 -->
        <div class="image flex">
            <label for="file">스터디 카페 사진 첨부</label>
            <div class="image-upload-wrap">
                <input type="file" name="cafeFile" id="file" accept=".jpg, .jpeg, .png" multiple>
                <div class="image-upload-box">
                    <p>
                        <span class="material-symbols-outlined">
                            upload
                        </span>
                        이미지 업로드 (<span class="count">0</span>/5)
                    </p>
                    <p>최대 5개까지 업로드 가능</p>
                    <p>파일 형식 : jpg, jpeg, png</p>
                    <p>※이미지를 등록하면 즉시 반영됩니다.</p>
                </div>
            </div>
            <div class="img-controller-box">
            	<ul class="file-list">
            	
            	</ul>
            </div>
        </div>

        <!-- 스터디 카페 위치 -->
        <div class="address flex">
            <label for="address">스터디 카페 위치</label>
            <input type="text" name="address" id="address" placeholder="스터디 카페 주소를 입력하세요." required>
        </div>

        <!-- 스터디 카페 가격 -->
        <div class="price flex">
            <label for="price">스터디 카페 가격</label>
            <input type="text" name="price" id="price" placeholder="스터디 카페의 시간 당 이용 가격을 입력하세요." required>
        </div>

        <!-- summernote -->
        <textarea name="editordata" id="summernote-cafe-add"></textarea>
        <button type="submit" class="signup">스터디 카페 등록</button>
    </form>

    
</body>

</html>