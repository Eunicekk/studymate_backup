<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Board</title>
    <link rel="stylesheet"
        href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/reset.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/adminBoardCheck.css">
</head>
<body>
    <div class="board-check-setting">
        <!-- 포트폴리오 테이블 검색 -->
        <section class="board-search">
            <span class="material-symbols-outlined">
                search
            </span>
            <!-- 테이블 검색 폼 연결 -->
            <form action="">
                <input type="text" placeholder="작성자의 아이디를 입력하세요.">
                <button type="button">검색</button>
            </form>
        </section>

        <!-- 포트폴리오 테이블 정렬 -->
        <section class="board-align">
            <div class="align01">
                <span class="material-symbols-outlined">
                    check
                </span>
                <span>게시물 번호 순</span>
            </div>
            <div class="align02">
                <span class="material-symbols-outlined">
                    check
                </span>
                <span>작성 날짜 순</span>
            </div>
        </section>
    </div>

    <!-- 총 개수 -->
    <h1>등록된 포트폴리오 개수는 총 <span class="cafe-count">0</span>개 입니다.</h1>

    <!-- 포트폴리오 테이블 전체 -->
    <main class="board-check">
        <table class="board-table">
            <thead>
                <tr>
                    <th>번호</th>
                    <th>닉네임</th>
                    <th>아이디</th>
                    <th>제목</th>
                    <th>작성일</th>
                    <th>조회수</th>
                    <th></th>
                </tr>
            </thead>
            <tbody align="center">
                <!-- 임시로 포트폴리오 정보 넣어놓음, 데이터 삽입 필요 -->
                <!-- 제목 클릭 시 해당 게시물 상세보기로 이동 -->
                <tr>
                    <td class="no">1</td>
                    <td class="nickname">호랑호랑이</td>
                    <td class="id">abc123</td>
                    <td class="title">
                        <a href="#">내 포트폴리오 자랑 01</a>
                    </td>
                    <td class="date">2023-03-21</td>
                    <td class="read-count">50</td>
                    <td>
                        <span class="material-symbols-outlined delete">
                            close
                        </span>
                    </td>
                </tr>
                <tr>
                    <td class="no">2</td>
                    <td class="nickname">호랑호랑이</td>
                    <td class="id">abc123</td>
                    <td class="title">
                        <a href="#">내 포트폴리오 자랑 02</a>
                    </td>
                    <td class="date">2023-03-21</td>
                    <td class="read-count">50</td>
                    <td>
                        <span class="material-symbols-outlined delete">
                            close
                        </span>
                    </td>
                </tr>
                <tr>
                    <td class="no">3</td>
                    <td class="nickname">호랑호랑이</td>
                    <td class="id">abc123</td>
                    <td class="title">
                        <a href="#">내 포트폴리오 자랑 03</a>
                    </td>
                    <td class="date">2023-03-21</td>
                    <td class="read-count">50</td>
                    <td>
                        <span class="material-symbols-outlined delete">
                            close
                        </span>
                    </td>
                </tr>
                <tr>
                    <td class="no">4</td>
                    <td class="nickname">호랑호랑이</td>
                    <td class="id">abc123</td>
                    <td class="title">
                        <a href="#">내 포트폴리오 자랑 04</a>
                    </td>
                    <td class="date">2023-03-21</td>
                    <td class="read-count">50</td>
                    <td>
                        <span class="material-symbols-outlined delete">
                            close
                        </span>
                    </td>
                </tr>
                <tr>
                    <td class="no">5</td>
                    <td class="nickname">호랑호랑이</td>
                    <td class="id">abc123</td>
                    <td class="title">
                        <a href="#">내 포트폴리오 자랑 05</a>
                    </td>
                    <td class="date">2023-03-21</td>
                    <td class="read-count">50</td>
                    <td>
                        <span class="material-symbols-outlined delete">
                            close
                        </span>
                    </td>
                </tr>
            </tbody>
        </table>
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
    <script src="${pageContext.request.contextPath}/assets/js/adminBoardCheck.js"></script>

</body>

</html>