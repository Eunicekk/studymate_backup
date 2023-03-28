<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>참여 그룹</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/reset.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/participatingGroup.css" />
   
    <script
      src="https://kit.fontawesome.com/85b8cbcba2.js"
      crossorigin="anonymous"
    ></script>
  </head>
  <body>
    <div class="main">
      <!-- 헤더 영역 -->
      <div class="header"></div>
      <!-- 메인 컨테이너 -->
      <div class="container">
        <!-- 사이드바 영역 -->
        <div class="sidebar">
           <ul>
            <li class="active"><a href="#">내 정보</a></li>
            <li class="side">
              <a href="Modifying Information.jsp">정보 수정</a>
            </li>
            <li class="side">
              <a href="portfolioList.jsp">내 포트폴리오</a>
            </li>
            <li class="active"><a href="#">카페 예약 정보</a></li>
            <li class="side"><a href="interestPlace.jsp">관심 장소</a></li>
            <li class="side"><a href="reserve.jsp">예약 정보</a></li>
            <li class="side"><a href="Usage details.jsp">이용 내역</a></li>
            <li class="side"><a href="cancel.jsp">취소/환불</a></li>
            <li class="active"><a href="#">그룹 참여 정보</a></li>
            <li class="side"><a href="leaderGroup.jsp">내 그룹</a></li>
            <li class="side"><a href="interestGroup.jsp">관심 그룹</a></li>
            <li class="side">
              <a href="participatingGroup.jsp">참여 그룹</a>
            </li>
            <li class="side"><a href="endGroup.jsp">종료 그룹</a></li>
          </ul>
        </div>
        <!-- 메인 컨텐츠 영역 -->
        <div class="main-container">
          <!-- 메인 컨텐츠 헤더 영역 -->
          <div class="main-container-title">
            <h1>참여 그룹</h1>
          </div>
          <!-- 참여 그룹 section -->
          <div class="main-container-section">
            <!-- 참여 그룹 목록 -->
            <ul class="study-list">
              <a href="/groupRead.html" class="study-item-open">
                <li>
                  <!-- 스터디 그룹 정보 -->
                  <div class="study-item-badge">
                    <div class="badge-badge">
                      <div class="study-badge">🗂 프로젝트</div>
                    </div>
                    <div class="badge-badge">
                      <div class="study-badge-new">🍞 따끈따끈 새 글</div>
                    </div>
                  </div>
                  <div class="study-schedule">
                    <p>마감일</p>
                    <p>2023.03.31</p>
                  </div>
                  <h1 class="study-title">
                    프론트앤드 개발자, 웹디자이너분 구인합니다!
                  </h1>
                  <ul class="study-item-position-list">
                    <li class="study-item-position">프론트엔드</li>
                    <li class="study-item-position">디자이너</li>
                  </ul>
                  <div class="study-item-border"></div>
                  <section class="study-item-info">
                    <div class="study-user-info">
                      <div class="avatar-user">
                        <img
                          class="avatar-user-img"
                          src="https://hola-post-image.s3.ap-northeast-2.amazonaws.com/default.PNG"
                          alt="avatar"
                        />
                      </div>
                      <div class="leader">CodeWave</div>
                    </div>
                    <div class="studyItem-viewsAndComment">
                      <div class="studyItem-view">
                        <div class="view">
                          <span>
                            <i
                              class="fa-regular fa-eye"
                              style="color: #d6d6d6"
                            ></i>
                          </span>
                        </div>
                        <p>36</p>
                      </div>
                      <div class="studyItem-comment">
                        <div class="comment">
                          <span>
                            <i
                              class="fa-regular fa-comment"
                              style="color: #c0c0c0"
                            ></i>
                          </span>
                          <p>0</p>
                        </div>
                      </div>
                    </div>
                  </section>
                </li>
              </a>
            </ul>
          </div>
          <ul class="pagenation-list">
            <li class="prev">
              <button type="button">
                <span class="prev-button">
                  <img
                    src="https://shareit.kr/_next/static/media/arrow-left-677294.ae6b1d0b.svg"
                    alt=""
                    class="prev-button-img"
                  />
                </span>
              </button>
            </li>
            <li class="page-number">
              <button type="button" class="page-number-button">1</button>
            </li>
            <li class="next">
              <button type="button">
                <span class="next-button">
                  <img
                    src="https://shareit.kr/_next/static/media/arrow-right-677294.662f8854.svg"
                    alt=""
                    class="next-button-img"
                  />
                </span>
              </button>
            </li>
          </ul>
        </div>
      </div>

      <div class="footer"></div>
    </div>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="${pageContext.request.contextPath}/assets/js/participatingGroup.js"></script>
  </body>
</html>
    