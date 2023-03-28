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
    <link rel="stylesheet"
        href="https://fonts.googleapis.com/css2?family=Material+Symbols+Rounded:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/reset.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/adminCafeCheck.css">
</head>

<body>

    <div class="cafe-check-setting">
        <!-- 스터디 카페 검색 -->
        <section class="cafe-search">
            <span class="material-symbols-outlined">
                search
            </span>
            <!-- 검색 폼 연결 -->
            <form action="">
                <input type="text" placeholder="카페 이름을 입력하세요.">
                <button type="button">검색</button>
            </form>
        </section>

        <!-- 스터디 카페 정렬 -->
        <section class="cafe-align">
            <div class="align01">
                <span class="material-symbols-outlined">
                    check
                </span>
                <span>카페 번호 순</span>
            </div>
            <div class="align02">
                <span class="material-symbols-outlined">
                    check
                </span>
                <span>예약 많은 순</span>
            </div>
            <div class="align03">
                <span class="material-symbols-outlined">
                    check
                </span>
                <span>좋아요 많은 순</span>
            </div>
        </section>
    </div>

    <!-- 총 개수 -->
    <h1>등록된 스터디 카페 개수는 총 <span class="cafe-count">0</span>개 입니다.</h1>

    <main class="cafe-check">
        <ul>
            <li>
                <a href="#">
                    <div class="cafe-delete">
                        <span class="material-symbols-outlined delete">
                            close
                        </span>
                    </div>
                    <div class="cafe-image">
                        <img src="https://img.shareit.kr:13443/tempspaceauth/img/2023-02-01/0e792c8b-e7c7-4f6f-b939-259be4c6af61.jpg"
                            alt="스터디 카페" height="200px">
                    </div>
                    <div class="cafe-title">
                        [동대문] 자연광 렌탈 스튜디오 A room
                    </div>
                    <div class="cafe-address">
                        <img src="https://shareit.kr/_next/static/media/location.f1e61d10.svg" alt="위치">
                        <span>서울 동대문구 난계로28길 48</span>
                    </div>
                    <div class="cafe-price">
                        <span>55,000</span> 원 ~ / 1시간 당
                    </div>
                    <div class="cafe-info">
                        <div class="reservation-count">
                            <span>예약 건수 ｜</span>
                            <span>10</span>
                        </div>
                        <div class="counts">
                            <div class="read-count">
                                <span class="material-symbols-rounded">
                                    visibility
                                </span>
                                <span>123</span>
                            </div>
                            <div class="score">
                                <span class="material-symbols-rounded">
                                    star
                                </span>
                                <span>4.5</span>
                            </div>
                            <div class="like-count">
                                <span class="material-symbols-rounded">
                                    favorite
                                </span>
                                <span>4</span>
                            </div>
                        </div>
                    </div>
                </a>
            </li>
            <li>
                <a href="#">
                    <div class="cafe-delete">
                        <span class="material-symbols-outlined delete">
                            close
                        </span>
                    </div>
                    <div class="cafe-image">
                        <img src="https://img.shareit.kr:13443/tempspaceauth/img/2023-02-01/0e792c8b-e7c7-4f6f-b939-259be4c6af61.jpg"
                            alt="스터디 카페" height="200px">
                    </div>
                    <div class="cafe-title">
                        [동대문] 자연광 렌탈 스튜디오 A room
                    </div>
                    <div class="cafe-address">
                        <img src="https://shareit.kr/_next/static/media/location.f1e61d10.svg" alt="위치">
                        <span>서울 동대문구 난계로28길 48</span>
                    </div>
                    <div class="cafe-price">
                        <span>55,000</span> 원 ~ / 1시간 당
                    </div>
                    <div class="cafe-info">
                        <div class="reservation-count">
                            <span>예약 건수 ｜</span>
                            <span>10</span>
                        </div>
                        <div class="counts">
                            <div class="read-count">
                                <span class="material-symbols-rounded">
                                    visibility
                                </span>
                                <span>123</span>
                            </div>
                            <div class="score">
                                <span class="material-symbols-rounded">
                                    star
                                </span>
                                <span>4.5</span>
                            </div>
                            <div class="like-count">
                                <span class="material-symbols-rounded">
                                    favorite
                                </span>
                                <span>4</span>
                            </div>
                        </div>
                    </div>
                </a>
            </li>
            <li>
                <a href="#">
                    <div class="cafe-delete">
                        <span class="material-symbols-outlined delete">
                            close
                        </span>
                    </div>
                    <div class="cafe-image">
                        <img src="https://img.shareit.kr:13443/tempspaceauth/img/2023-02-01/0e792c8b-e7c7-4f6f-b939-259be4c6af61.jpg"
                            alt="스터디 카페" height="200px">
                    </div>
                    <div class="cafe-title">
                        [동대문] 자연광 렌탈 스튜디오 A room
                    </div>
                    <div class="cafe-address">
                        <img src="https://shareit.kr/_next/static/media/location.f1e61d10.svg" alt="위치">
                        <span>서울 동대문구 난계로28길 48</span>
                    </div>
                    <div class="cafe-price">
                        <span>55,000</span> 원 ~ / 1시간 당
                    </div>
                    <div class="cafe-info">
                        <div class="reservation-count">
                            <span>예약 건수 ｜</span>
                            <span>10</span>
                        </div>
                        <div class="counts">
                            <div class="read-count">
                                <span class="material-symbols-rounded">
                                    visibility
                                </span>
                                <span>123</span>
                            </div>
                            <div class="score">
                                <span class="material-symbols-rounded">
                                    star
                                </span>
                                <span>4.5</span>
                            </div>
                            <div class="like-count">
                                <span class="material-symbols-rounded">
                                    favorite
                                </span>
                                <span>4</span>
                            </div>
                        </div>
                    </div>
                </a>
            </li>
            <li>
                <a href="#">
                    <div class="cafe-delete">
                        <span class="material-symbols-outlined delete">
                            close
                        </span>
                    </div>
                    <div class="cafe-image">
                        <img src="https://img.shareit.kr:13443/tempspaceauth/img/2023-02-01/0e792c8b-e7c7-4f6f-b939-259be4c6af61.jpg"
                            alt="스터디 카페" height="200px">
                    </div>
                    <div class="cafe-title">
                        [동대문] 자연광 렌탈 스튜디오 A room
                    </div>
                    <div class="cafe-address">
                        <img src="https://shareit.kr/_next/static/media/location.f1e61d10.svg" alt="위치">
                        <span>서울 동대문구 난계로28길 48</span>
                    </div>
                    <div class="cafe-price">
                        <span>55,000</span> 원 ~ / 1시간 당
                    </div>
                    <div class="cafe-info">
                        <div class="reservation-count">
                            <span>예약 건수 ｜</span>
                            <span>10</span>
                        </div>
                        <div class="counts">
                            <div class="read-count">
                                <span class="material-symbols-rounded">
                                    visibility
                                </span>
                                <span>123</span>
                            </div>
                            <div class="score">
                                <span class="material-symbols-rounded">
                                    star
                                </span>
                                <span>4.5</span>
                            </div>
                            <div class="like-count">
                                <span class="material-symbols-rounded">
                                    favorite
                                </span>
                                <span>4</span>
                            </div>
                        </div>
                    </div>
                </a>
            </li>
        </ul>
    </main>

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
    <script src="${pageContext.request.contextPath}/assets/js/adminCafeCheck.js"></script>

</body>

</html>