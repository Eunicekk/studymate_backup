<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>진행중인 예약</title>
   <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/reset.css" />
   <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/reserve.css" />
  </head>
  <body>
    <div class="main">
      <!-- 헤더 영역 -->
      <div class="header"></div>
      <div class="container">
        <!-- 사이드 바 영역 -->
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
          <!-- 메인 헤더 영역 -->
          <div class="main-container-title">
            <h1>진행중인 예약</h1>
          </div>
          <!-- 예약 목록 영역 -->
          <ul class="reserve-tab-panel">
            <li class="reserve-tab-li">
              <button class="reserve-tab-button-selected">전체(1)</button>
            </li>
          </ul>
          <!-- 예약번호 정보 조회 영역 -->
          <form class="reserve-search-form">
            <label class="reserve-search-label"
              ><input
                type="text"
                class="reserve-search-input"
                placeholder="예약 번호를 입력해주세요."
            /></label>
            <button class="reserve-search-button">검색</button>
          </form>
          <!-- 예약 카페 정보 영역  -->
          <ul class="reserve-list">
            <li class="reserve-item">
              <div class="info-box">
                <img
                  src="https://img.shareit.kr:13443/prod/img/2022-04-21/5444d94a-3d51-47fe-aa95-cba605d5604c.jpg"
                  alt="스터디"
                />
                <div>
                  <div class="info-box-host-name">토즈 양재센터</div>
                  <div class="info-box-product-name">1인 독립형</div>
                  <p class="info-box-reserve-detail">
                    <img
                      src="https://shareit.kr/image/myPage/ico-estimate.svg"
                    />
                    승인 대기
                  </p>
                </div>
              </div>
              <section class="sub-info-box">
                <div class="sub-info-text-box">
                  <div>
                    <p>상품명</p>
                    <div>
                      <span class="sub-info-status-info">승인</span>
                      <p>1인 동립형 일반</p>
                    </div>
                  </div>
                  <div>
                    <p>예약 번호</p>
                    <p>61091</p>
                  </div>
                  <div>
                    <p>사용 시간</p>
                    <p>
                      2023-03-31 (금) 13:00 시작 <br />
                      2023-03-31 (금) 15:00 종료
                    </p>
                  </div>
                  <div>
                    <p>인원</p>
                    <p>1명</p>
                  </div>
                  <div>
                    <p>행사 목적</p>
                    <p>스터디</p>
                  </div>
                </div>
                <div class="payment-box">
                  <p>총 금액</p>
                  <p>10,000원</p>
                </div>
              </section>
              <div class="cancel-button-box">
                <button class="cancel-button">대여 취소</button>
              </div>
            </li>
          </ul>
          <!-- 페이지 리스트 -->
          <ul class="pagenation-list">
            <!-- 페이지 앞으로가기, 뒤로가기, 페이지 번호 버튼 -->
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
    <script src="${pageContext.request.contextPath}/assets/js/reserve.js"></script>
  </body>
</html>
    