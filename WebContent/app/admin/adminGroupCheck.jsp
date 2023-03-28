<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Group</title>
    <link rel="stylesheet"
        href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/reset.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/adminGroupCheck.css">
</head>

<body>
    <div class="group-check-setting">
        <!-- 그룹 테이블 검색 -->
        <section class="group-search">
            <span class="material-symbols-outlined">
                search
            </span>
            <!-- 테이블 검색 폼 연결 -->
            <form action="">
                <input type="text" placeholder="그룹 리더 아이디를 입력하세요.">
                <button type="button">검색</button>
            </form>
        </section>

        <!-- 그룹 테이블 정렬 -->
        <section class="group-align">
            <div class="align01">
                <span class="material-symbols-outlined">
                    check
                </span>
                <span>그룹 번호 순</span>
            </div>
            <div class="align02">
                <span class="material-symbols-outlined">
                    check
                </span>
                <span>그룹 생성일 순</span>
            </div>
        </section>
    </div>
    
    <!-- 총 개수 -->
    <h1>등록된 스터디 그룹 개수는 총 <span class="cafe-count">0</span>개 입니다.</h1>

    <!-- 그룹 주제별 필터 -->
    <div class="filter-wrap">
        <section class="group-filter">
            <div class="filter">
                <span class="filter-click">주제별</span>
                <span class="material-symbols-outlined filter-click">
                    arrow_drop_down
                </span>
            </div>
            <div class="filter-field">
                <ul>
                    <li>어학</li>
                    <li>취업</li>
                    <li>고시/공무원</li>
                    <li>취미/교양</li>
                    <li>프로그래밍</li>
                    <li>자율</li>
                    <li>기타</li>
                </ul>
            </div>
        </section>
    </div>

    <!-- 스터디그룹 콘텐츠 -->
    <section class="group-list">
        <!-- 클릭 시 스터디 그룹 콘텐츠로 이동 -->
        <a href="#">
            <div class="group-content">
                <div class="group-plus">
                    <div class="field">
                        <svg xmlns="http://www.w3.org/2000/svg" width="12" height="12" fill="currentColor"
                            class="bi bi-pencil-fill" viewBox="0 0 16 16">
                            <path
                                d="M12.854.146a.5.5 0 0 0-.707 0L10.5 1.793 14.207 5.5l1.647-1.646a.5.5 0 0 0 0-.708l-3-3zm.646 6.061L9.793 2.5 3.293 9H3.5a.5.5 0 0 1 .5.5v.5h.5a.5.5 0 0 1 .5.5v.5h.5a.5.5 0 0 1 .5.5v.5h.5a.5.5 0 0 1 .5.5v.207l6.5-6.5zm-7.468 7.468A.5.5 0 0 1 6 13.5V13h-.5a.5.5 0 0 1-.5-.5V12h-.5a.5.5 0 0 1-.5-.5V11h-.5a.5.5 0 0 1-.5-.5V10h-.5a.499.499 0 0 1-.175-.032l-.179.178a.5.5 0 0 0-.11.168l-2 5a.5.5 0 0 0 .65.65l5-2a.5.5 0 0 0 .168-.11l.178-.178z">
                            </path>
                        </svg>
                        <span>진행 분야</span>
                    </div>
                    <div class="new">
                        <svg xmlns="http://www.w3.org/2000/svg" width="12" height="12" fill="currentColor"
                            class="bi bi-cup-hot-fill" viewBox="0 0 16 16">
                            <path fill-rule="evenodd"
                                d="M.5 6a.5.5 0 0 0-.488.608l1.652 7.434A2.5 2.5 0 0 0 4.104 16h5.792a2.5 2.5 0 0 0 2.44-1.958l.131-.59a3 3 0 0 0 1.3-5.854l.221-.99A.5.5 0 0 0 13.5 6H.5ZM13 12.5a2.01 2.01 0 0 1-.316-.025l.867-3.898A2.001 2.001 0 0 1 13 12.5Z">
                            </path>
                            <path
                                d="m4.4.8-.003.004-.014.019a4.167 4.167 0 0 0-.204.31 2.327 2.327 0 0 0-.141.267c-.026.06-.034.092-.037.103v.004a.593.593 0 0 0 .091.248c.075.133.178.272.308.445l.01.012c.118.158.26.347.37.543.112.2.22.455.22.745 0 .188-.065.368-.119.494a3.31 3.31 0 0 1-.202.388 5.444 5.444 0 0 1-.253.382l-.018.025-.005.008-.002.002A.5.5 0 0 1 3.6 4.2l.003-.004.014-.019a4.149 4.149 0 0 0 .204-.31 2.06 2.06 0 0 0 .141-.267c.026-.06.034-.092.037-.103a.593.593 0 0 0-.09-.252A4.334 4.334 0 0 0 3.6 2.8l-.01-.012a5.099 5.099 0 0 1-.37-.543A1.53 1.53 0 0 1 3 1.5c0-.188.065-.368.119-.494.059-.138.134-.274.202-.388a5.446 5.446 0 0 1 .253-.382l.025-.035A.5.5 0 0 1 4.4.8Zm3 0-.003.004-.014.019a4.167 4.167 0 0 0-.204.31 2.327 2.327 0 0 0-.141.267c-.026.06-.034.092-.037.103v.004a.593.593 0 0 0 .091.248c.075.133.178.272.308.445l.01.012c.118.158.26.347.37.543.112.2.22.455.22.745 0 .188-.065.368-.119.494a3.31 3.31 0 0 1-.202.388 5.444 5.444 0 0 1-.253.382l-.018.025-.005.008-.002.002A.5.5 0 0 1 6.6 4.2l.003-.004.014-.019a4.149 4.149 0 0 0 .204-.31 2.06 2.06 0 0 0 .141-.267c.026-.06.034-.092.037-.103a.593.593 0 0 0-.09-.252A4.334 4.334 0 0 0 6.6 2.8l-.01-.012a5.099 5.099 0 0 1-.37-.543A1.53 1.53 0 0 1 6 1.5c0-.188.065-.368.119-.494.059-.138.134-.274.202-.388a5.446 5.446 0 0 1 .253-.382l.025-.035A.5.5 0 0 1 7.4.8Zm3 0-.003.004-.014.019a4.077 4.077 0 0 0-.204.31 2.337 2.337 0 0 0-.141.267c-.026.06-.034.092-.037.103v.004a.593.593 0 0 0 .091.248c.075.133.178.272.308.445l.01.012c.118.158.26.347.37.543.112.2.22.455.22.745 0 .188-.065.368-.119.494a3.198 3.198 0 0 1-.202.388 5.385 5.385 0 0 1-.252.382l-.019.025-.005.008-.002.002A.5.5 0 0 1 9.6 4.2l.003-.004.014-.019a4.149 4.149 0 0 0 .204-.31 2.06 2.06 0 0 0 .141-.267c.026-.06.034-.092.037-.103a.593.593 0 0 0-.09-.252A4.334 4.334 0 0 0 9.6 2.8l-.01-.012a5.099 5.099 0 0 1-.37-.543A1.53 1.53 0 0 1 9 1.5c0-.188.065-.368.119-.494.059-.138.134-.274.202-.388a5.446 5.446 0 0 1 .253-.382l.025-.035A.5.5 0 0 1 10.4.8Z">
                            </path>
                        </svg>
                        <span>따끈따끈한 새 글</span>
                    </div>
                </div>
                <div class="group-delete">
                    <span class="material-symbols-outlined">
                        close
                    </span>
                </div>
                <div class="group-date">
                    <span>모집 마감일 ｜</span>
                    <span>2023-03-22</span>
                </div>
                <div class="group-title">
                    <span>JAVA 코딩 테스트 스터디 모집 합니다냥 가나다라마바사아 우와아아앙 자차카타파하 걍아아악</span>
                </div>
                <div class="group-keyword">
                    <span>#JAVA</span>
                    <span>#코딩테스트</span>
                    <span>#개발자취업</span>
                    <span>#IT직군</span>
                </div>
                <div class="group-info">
                    <div class="user">
                        <img src="https://hola-post-image.s3.ap-northeast-2.amazonaws.com/default.PNG" alt="그룹 프로필 사진"
                            width="30px">
                        <span>작성자 닉네임</span>
                        <span>｜</span>
                        <span>abc123</span>
                    </div>
                </div>
            </div>
        </a>
        <a href="#">
            <div class="group-content">
                <div class="group-plus">
                    <div class="field">
                        <svg xmlns="http://www.w3.org/2000/svg" width="12" height="12" fill="currentColor"
                            class="bi bi-pencil-fill" viewBox="0 0 16 16">
                            <path
                                d="M12.854.146a.5.5 0 0 0-.707 0L10.5 1.793 14.207 5.5l1.647-1.646a.5.5 0 0 0 0-.708l-3-3zm.646 6.061L9.793 2.5 3.293 9H3.5a.5.5 0 0 1 .5.5v.5h.5a.5.5 0 0 1 .5.5v.5h.5a.5.5 0 0 1 .5.5v.5h.5a.5.5 0 0 1 .5.5v.207l6.5-6.5zm-7.468 7.468A.5.5 0 0 1 6 13.5V13h-.5a.5.5 0 0 1-.5-.5V12h-.5a.5.5 0 0 1-.5-.5V11h-.5a.5.5 0 0 1-.5-.5V10h-.5a.499.499 0 0 1-.175-.032l-.179.178a.5.5 0 0 0-.11.168l-2 5a.5.5 0 0 0 .65.65l5-2a.5.5 0 0 0 .168-.11l.178-.178z">
                            </path>
                        </svg>
                        <span>진행 분야</span>
                    </div>
                    <div class="new">
                        <svg xmlns="http://www.w3.org/2000/svg" width="12" height="12" fill="currentColor"
                            class="bi bi-cup-hot-fill" viewBox="0 0 16 16">
                            <path fill-rule="evenodd"
                                d="M.5 6a.5.5 0 0 0-.488.608l1.652 7.434A2.5 2.5 0 0 0 4.104 16h5.792a2.5 2.5 0 0 0 2.44-1.958l.131-.59a3 3 0 0 0 1.3-5.854l.221-.99A.5.5 0 0 0 13.5 6H.5ZM13 12.5a2.01 2.01 0 0 1-.316-.025l.867-3.898A2.001 2.001 0 0 1 13 12.5Z">
                            </path>
                            <path
                                d="m4.4.8-.003.004-.014.019a4.167 4.167 0 0 0-.204.31 2.327 2.327 0 0 0-.141.267c-.026.06-.034.092-.037.103v.004a.593.593 0 0 0 .091.248c.075.133.178.272.308.445l.01.012c.118.158.26.347.37.543.112.2.22.455.22.745 0 .188-.065.368-.119.494a3.31 3.31 0 0 1-.202.388 5.444 5.444 0 0 1-.253.382l-.018.025-.005.008-.002.002A.5.5 0 0 1 3.6 4.2l.003-.004.014-.019a4.149 4.149 0 0 0 .204-.31 2.06 2.06 0 0 0 .141-.267c.026-.06.034-.092.037-.103a.593.593 0 0 0-.09-.252A4.334 4.334 0 0 0 3.6 2.8l-.01-.012a5.099 5.099 0 0 1-.37-.543A1.53 1.53 0 0 1 3 1.5c0-.188.065-.368.119-.494.059-.138.134-.274.202-.388a5.446 5.446 0 0 1 .253-.382l.025-.035A.5.5 0 0 1 4.4.8Zm3 0-.003.004-.014.019a4.167 4.167 0 0 0-.204.31 2.327 2.327 0 0 0-.141.267c-.026.06-.034.092-.037.103v.004a.593.593 0 0 0 .091.248c.075.133.178.272.308.445l.01.012c.118.158.26.347.37.543.112.2.22.455.22.745 0 .188-.065.368-.119.494a3.31 3.31 0 0 1-.202.388 5.444 5.444 0 0 1-.253.382l-.018.025-.005.008-.002.002A.5.5 0 0 1 6.6 4.2l.003-.004.014-.019a4.149 4.149 0 0 0 .204-.31 2.06 2.06 0 0 0 .141-.267c.026-.06.034-.092.037-.103a.593.593 0 0 0-.09-.252A4.334 4.334 0 0 0 6.6 2.8l-.01-.012a5.099 5.099 0 0 1-.37-.543A1.53 1.53 0 0 1 6 1.5c0-.188.065-.368.119-.494.059-.138.134-.274.202-.388a5.446 5.446 0 0 1 .253-.382l.025-.035A.5.5 0 0 1 7.4.8Zm3 0-.003.004-.014.019a4.077 4.077 0 0 0-.204.31 2.337 2.337 0 0 0-.141.267c-.026.06-.034.092-.037.103v.004a.593.593 0 0 0 .091.248c.075.133.178.272.308.445l.01.012c.118.158.26.347.37.543.112.2.22.455.22.745 0 .188-.065.368-.119.494a3.198 3.198 0 0 1-.202.388 5.385 5.385 0 0 1-.252.382l-.019.025-.005.008-.002.002A.5.5 0 0 1 9.6 4.2l.003-.004.014-.019a4.149 4.149 0 0 0 .204-.31 2.06 2.06 0 0 0 .141-.267c.026-.06.034-.092.037-.103a.593.593 0 0 0-.09-.252A4.334 4.334 0 0 0 9.6 2.8l-.01-.012a5.099 5.099 0 0 1-.37-.543A1.53 1.53 0 0 1 9 1.5c0-.188.065-.368.119-.494.059-.138.134-.274.202-.388a5.446 5.446 0 0 1 .253-.382l.025-.035A.5.5 0 0 1 10.4.8Z">
                            </path>
                        </svg>
                        <span>따끈따끈한 새 글</span>
                    </div>
                </div>
                <div class="group-delete">
                    <span class="material-symbols-outlined">
                        close
                    </span>
                </div>
                <div class="group-date">
                    <span>모집 마감일 ｜</span>
                    <span>2023-03-22</span>
                </div>
                <div class="group-title">
                    <span>JAVA 코딩 테스트 스터디 모집 합니다냥 가나다라마바사아 우와아아앙 자차카타파하 걍아아악</span>
                </div>
                <div class="group-keyword">
                    <span>#JAVA</span>
                    <span>#코딩테스트</span>
                    <span>#개발자취업</span>
                    <span>#IT직군</span>
                </div>
                <div class="group-info">
                    <div class="user">
                        <img src="https://hola-post-image.s3.ap-northeast-2.amazonaws.com/default.PNG" alt="그룹 프로필 사진"
                            width="30px">
                        <span>작성자 닉네임</span>
                        <span>｜</span>
                        <span>abc123</span>
                    </div>
                </div>
            </div>
        </a>
        <a href="#">
            <div class="group-content">
                <div class="group-plus">
                    <div class="field">
                        <svg xmlns="http://www.w3.org/2000/svg" width="12" height="12" fill="currentColor"
                            class="bi bi-pencil-fill" viewBox="0 0 16 16">
                            <path
                                d="M12.854.146a.5.5 0 0 0-.707 0L10.5 1.793 14.207 5.5l1.647-1.646a.5.5 0 0 0 0-.708l-3-3zm.646 6.061L9.793 2.5 3.293 9H3.5a.5.5 0 0 1 .5.5v.5h.5a.5.5 0 0 1 .5.5v.5h.5a.5.5 0 0 1 .5.5v.5h.5a.5.5 0 0 1 .5.5v.207l6.5-6.5zm-7.468 7.468A.5.5 0 0 1 6 13.5V13h-.5a.5.5 0 0 1-.5-.5V12h-.5a.5.5 0 0 1-.5-.5V11h-.5a.5.5 0 0 1-.5-.5V10h-.5a.499.499 0 0 1-.175-.032l-.179.178a.5.5 0 0 0-.11.168l-2 5a.5.5 0 0 0 .65.65l5-2a.5.5 0 0 0 .168-.11l.178-.178z">
                            </path>
                        </svg>
                        <span>진행 분야</span>
                    </div>
                    <div class="hot">
                        <span class="material-symbols-outlined">
                            favorite
                        </span>
                        <span>인기</span>
                    </div>
                </div>
                <div class="group-delete">
                    <span class="material-symbols-outlined">
                        close
                    </span>
                </div>
                <div class="group-date">
                    <span>모집 마감일 ｜</span>
                    <span>2023-03-22</span>
                </div>
                <div class="group-title">
                    <span>JAVA 코딩 테스트 스터디 모집 합니다냥 가나다라마바사아 우와아아앙 자차카타파하 걍아아악</span>
                </div>
                <div class="group-keyword">
                    <span>#JAVA</span>
                    <span>#코딩테스트</span>
                    <span>#개발자취업</span>
                    <span>#IT직군</span>
                </div>
                <div class="group-info">
                    <div class="user">
                        <img src="https://hola-post-image.s3.ap-northeast-2.amazonaws.com/default.PNG" alt="그룹 프로필 사진"
                            width="30px">
                        <span>작성자 닉네임</span>
                        <span>｜</span>
                        <span>abc123</span>
                    </div>
                </div>
            </div>
        </a>
        <a href="#">
            <div class="group-content">
                <div class="group-plus">
                    <div class="field">
                        <svg xmlns="http://www.w3.org/2000/svg" width="12" height="12" fill="currentColor"
                            class="bi bi-pencil-fill" viewBox="0 0 16 16">
                            <path
                                d="M12.854.146a.5.5 0 0 0-.707 0L10.5 1.793 14.207 5.5l1.647-1.646a.5.5 0 0 0 0-.708l-3-3zm.646 6.061L9.793 2.5 3.293 9H3.5a.5.5 0 0 1 .5.5v.5h.5a.5.5 0 0 1 .5.5v.5h.5a.5.5 0 0 1 .5.5v.5h.5a.5.5 0 0 1 .5.5v.207l6.5-6.5zm-7.468 7.468A.5.5 0 0 1 6 13.5V13h-.5a.5.5 0 0 1-.5-.5V12h-.5a.5.5 0 0 1-.5-.5V11h-.5a.5.5 0 0 1-.5-.5V10h-.5a.499.499 0 0 1-.175-.032l-.179.178a.5.5 0 0 0-.11.168l-2 5a.5.5 0 0 0 .65.65l5-2a.5.5 0 0 0 .168-.11l.178-.178z">
                            </path>
                        </svg>
                        <span>진행 분야</span>
                    </div>
                    <div class="finish">
                        <span class="material-symbols-outlined">
                            clock_loader_90
                        </span>
                        <span>마감코앞</span>
                    </div>
                </div>
                <div class="group-delete">
                    <span class="material-symbols-outlined">
                        close
                    </span>
                </div>
                <div class="group-date">
                    <span>모집 마감일 ｜</span>
                    <span>2023-03-22</span>
                </div>
                <div class="group-title">
                    <span>JAVA 코딩 테스트 스터디 모집 합니다냥 가나다라마바사아 우와아아앙 자차카타파하 걍아아악</span>
                </div>
                <div class="group-keyword">
                    <span>#JAVA</span>
                    <span>#코딩테스트</span>
                    <span>#개발자취업</span>
                    <span>#IT직군</span>
                </div>
                <div class="group-info">
                    <div class="user">
                        <img src="https://hola-post-image.s3.ap-northeast-2.amazonaws.com/default.PNG" alt="그룹 프로필 사진"
                            width="30px">
                        <span>작성자 닉네임</span>
                        <span>｜</span>
                        <span>abc123</span>
                    </div>
                </div>
            </div>
        </a>
    </section>

    <section id="paging">
        <a href="">
            <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor"
                class="bi bi-chevron-bar-left" viewBox="0 0 16 16">
                <path fill-rule="evenodd"
                    d="M11.854 3.646a.5.5 0 0 1 0 .708L8.207 8l3.647 3.646a.5.5 0 0 1-.708.708l-4-4a.5.5 0 0 1 0-.708l4-4a.5.5 0 0 1 .708 0zM4.5 1a.5.5 0 0 0-.5.5v13a.5.5 0 0 0 1 0v-13a.5.5 0 0 0-.5-.5z" />
            </svg>
        </a>
        <a href="">
            <svg xmlns="http://www.w3.org/2000/svg" width="16" height="12" fill="currentColor"
                class="bi bi-chevron-left" viewBox="0 0 16 16">
                <path fill-rule="evenodd"
                    d="M11.354 1.646a.5.5 0 0 1 0 .708L5.707 8l5.647 5.646a.5.5 0 0 1-.708.708l-6-6a.5.5 0 0 1 0-.708l6-6a.5.5 0 0 1 .708 0z" />
            </svg>
        </a>
        <a href="">1</a>
        <a href="">2</a>
        <a href="">3</a>
        <a href="">4</a>
        <a href="">5</a>
        <a href="">
            <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-three-dots"
                viewBox="0 0 16 16">
                <path
                    d="M3 9.5a1.5 1.5 0 1 1 0-3 1.5 1.5 0 0 1 0 3zm5 0a1.5 1.5 0 1 1 0-3 1.5 1.5 0 0 1 0 3zm5 0a1.5 1.5 0 1 1 0-3 1.5 1.5 0 0 1 0 3z" />
            </svg>
        </a>
        <a href="">20</a>
        <a href="">
            <svg xmlns="http://www.w3.org/2000/svg" width="16" height="12" fill="currentColor"
                class="bi bi-chevron-right" viewBox="0 0 16 16">
                <path fill-rule="evenodd"
                    d="M4.646 1.646a.5.5 0 0 1 .708 0l6 6a.5.5 0 0 1 0 .708l-6 6a.5.5 0 0 1-.708-.708L10.293 8 4.646 2.354a.5.5 0 0 1 0-.708z" />
            </svg>
        </a>
        <a href="">
            <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor"
                class="bi bi-chevron-bar-right" viewBox="0 0 16 16">
                <path fill-rule="evenodd"
                    d="M4.146 3.646a.5.5 0 0 0 0 .708L7.793 8l-3.647 3.646a.5.5 0 0 0 .708.708l4-4a.5.5 0 0 0 0-.708l-4-4a.5.5 0 0 0-.708 0zM11.5 1a.5.5 0 0 1 .5.5v13a.5.5 0 0 1-1 0v-13a.5.5 0 0 1 .5-.5z" />
            </svg>
        </a>
    </section>

    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="${pageContext.request.contextPath}/assets/js/adminGroupCheck.js"></script>

</body>

</html>