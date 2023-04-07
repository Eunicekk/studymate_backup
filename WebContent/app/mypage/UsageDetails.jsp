<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>이용 내역</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/reset.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css//UsageDetails.css" />
  </head>
  <body>
    <div class="main">
      <div class="header"></div>
      <div class="container">
        <div class="sidebar">
          	<ul>
					<li class="active"><a href="#">내 정보</a></li>
					<li class="side"><a
						href="${pageContext.request.contextPath}/mypage/MyPageModifyingProfile.my">정보
							수정</a></li>
					<li class="side"><a
						href="${pageContext.request.contextPath}/mypage/MyPagePortfolioOk.my">내
							포트폴리오</a></li>
					<li class="active"><a href="#">카페 예약 정보</a></li>
					<li class="side"><a
						href="${pageContext.request.contextPath}/mypage/MyPageInterestPlaceOk.my">관심
							장소</a></li>
					<li class="side"><a
						href="${pageContext.request.contextPath}/mypage/MyPageReserveOk.my">예약
							정보</a></li>
					<li class="side"><a
						href="${pageContext.request.contextPath}/mypage/MyPageUsaDetailsOk.my">이용
							내역</a></li>
					<!-- <li class="side"><a href="cancel.jsp">취소/환불</a></li> -->
					<li class="active"><a href="#">그룹 참여 정보</a></li>
					<li class="side"><a
						href="${pageContext.request.contextPath}/app/mypage/leaderGroup.jsp">내
							그룹</a></li>
					<li class="side"><a
						href="${pageContext.request.contextPath}/app/mypage/interestGroup.jsp">관심
							그룹</a></li>
					<li class="side"><a
						href="${pageContext.request.contextPath}/app/mypage/participatingGroup.jsp">참여
							그룹</a></li>
					<li class="side"><a
						href="${pageContext.request.contextPath}/app/mypage/endGroup.jsp">종료
							그룹</a></li>
				</ul>
        </div>
        <div class="main-container">
          <div class="main-container-title">
            <h1>이용 내역</h1>
          </div>
          <ul class="reserve-tab-panel">
            <li class="reserve-tab-li">
              <button class="reserve-tab-button-selected">전체(1)</button>
            </li>
          </ul>
          <form class="reserve-search-form">
            <label class="reserve-search-label"
              ><input
                type="text"
                class="reserve-search-input"
                placeholder="예약 번호를 입력해주세요."
            /></label>
            <button class="reserve-search-button">검색</button>
          </form>
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
                    결제 완료
                  </p>
                </div>
              </div>
              <section class="sub-info-box">
                <div class="sub-info-text-box">
                  <div>
                    <p>상품명</p>
                    <div>
                      <span class="sub-info-status-info">이용 완료</span>
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
            </li>
          </ul>
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
    <script src="${pageContext.request.contextPath}/assets/js/UsageDetails.js"></script>
  </body>
</html>
    