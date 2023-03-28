<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Member</title>
    <link rel="stylesheet"
        href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/reset.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/adminMemberCheck.css">
</head>

<body>

    <div class="member-check-setting">
        <!-- 회원 테이블 검색 -->
        <section class="member-search">
            <span class="material-symbols-outlined">
                search
            </span>
            <!-- 테이블 검색 폼 연결 -->
            <form action="">
                <input type="text" placeholder="아이디를 입력하세요.">
                <button type="button">검색</button>
            </form>
        </section>

        <!-- 회원 테이블 정렬 -->
        <section class="member-align">
            <div class="align01">
                <span class="material-symbols-outlined">
                    check
                </span>
                <span>회원 번호 순</span>
            </div>
            <div class="align02">
                <span class="material-symbols-outlined">
                    check
                </span>
                <span>가입 날짜 순</span>
            </div>
        </section>
    </div>

    <!-- 총 개수 -->
    <h1>가입자 수는 총 <span class="cafe-count">0</span>명 입니다.</h1>

    <!-- 회원 테이블 전체 -->
    <main class="member-check">
        <table class="member-table">
            <thead>
                <tr>
                    <th>번호</th>
                    <th>아이디</th>
                    <th>비밀번호</th>
                    <th>이름</th>
                    <th>닉네임</th>
                    <th>나이</th>
                    <th>성별</th>
                    <th>이메일</th>
                    <th>핸드폰 번호</th>
                    <th>가입 날짜</th>
                    <th></th>
                </tr>
            </thead>
            <tbody align="center">
                <!-- 임시로 회원 정보 넣어놓음, 데이터 삽입 필요 -->
                <tr>
                    <td class="no">1</td>
                    <td class="id">abc123</td>
                    <td class="password">abcd1234!</td>
                    <td class="name">권순영</td>
                    <td class="nickname">호랑호랑이</td>
                    <td class="age">28</td>
                    <td class="gender">M</td>
                    <td class="email">abcd@gmail.com</td>
                    <td class="phone-number">01012341234</td>
                    <td class="date">2023-03-21</td>
                    <td>
                        <span class="material-symbols-outlined delete">
                            close
                        </span>
                    </td>
                </tr>
                <tr>
                    <td class="no">2</td>
                    <td class="id">abcd1234</td>
                    <td class="password">abcd1234!</td>
                    <td class="name">부승관</td>
                    <td class="nickname">갸아아악</td>
                    <td class="age">26</td>
                    <td class="gender">M</td>
                    <td class="email">abcd@gmail.com</td>
                    <td class="phone-number">01012341234</td>
                    <td class="date">2023-03-21</td>
                    <td>
                        <span class="material-symbols-outlined delete">
                            close
                        </span>
                    </td>
                </tr>
                <tr>
                    <td class="no">3</td>
                    <td class="id">dfw1245</td>
                    <td class="password">abcd1234!</td>
                    <td class="name">전원우</td>
                    <td class="nickname">하입보이</td>
                    <td class="age">28</td>
                    <td class="gender">M</td>
                    <td class="email">abcd@gmail.com</td>
                    <td class="phone-number">01012341234</td>
                    <td class="date">2023-03-21</td>
                    <td>
                        <span class="material-symbols-outlined delete">
                            close
                        </span>
                    </td>
                </tr>
                <tr>
                    <td class="no">4</td>
                    <td class="id">drew6525</td>
                    <td class="password">abcd1234!</td>
                    <td class="name">이찬</td>
                    <td class="nickname">룰루루라랄</td>
                    <td class="age">26</td>
                    <td class="gender">M</td>
                    <td class="email">abcd@gmail.com</td>
                    <td class="phone-number">01012341234</td>
                    <td class="date">2023-03-21</td>
                    <td>
                        <span class="material-symbols-outlined delete">
                            close
                        </span>
                    </td>
                </tr>
                <tr>
                    <td class="no">5</td>
                    <td class="id">zded2645</td>
                    <td class="password">abcd1234!</td>
                    <td class="name">윤정한</td>
                    <td class="nickname">아워너노우</td>
                    <td class="age">29</td>
                    <td class="gender">M</td>
                    <td class="email">abcd@gmail.com</td>
                    <td class="phone-number">01012341234</td>
                    <td class="date">2023-03-21</td>
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
    <script src="${pageContext.request.contextPath}/assets/js/adminMemberCheck.js"></script>
</body>

</html>