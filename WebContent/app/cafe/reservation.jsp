<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="ko">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Document</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/reservation.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/reset.css" />
    <script
      type="text/javascript"
      src="//dapi.kakao.com/v2/maps/sdk.js?appkey=288648fa9bcef114f977b6cc3dc07c2d&libraries=services"
    ></script>
  </head>
  <body>
    <!-- 헤더 -->
    <header></header>

    <main id="main">
      <main class="reserContainer">
        <!-- 예약할 장소 정보 -->
        <section class="InfoContent">
          <section>
            <!--이미지 슬라이더 -->
            <div class="ImgContent">
              <div class="swiper swiper-pointer-events">
                <div class="swiper-wrapper">
                  <div class="swiper-slide">
                    <button type="button" class="gtm-img">
                      <figure>
                        <img
                          src="${pageContext.request.contextPath}/assets/img/be0a11cf-0d08-4cd9-8719-88937088cf4b.jpg"
                          alt=""
                          class="imglist"
                        />
                      </figure>
                    </button>
                  </div>
                  <div class="swiper-slide">
                    <button type="button" class="gtm-img">
                      <figure>
                        <img
                          src="${pageContext.request.contextPath}/assets/img/be0a11cf-0d08-4cd9-8719-88937088cf4b.jpg"
                          alt=""
                          class="imglist"
                        />
                      </figure>
                    </button>
                  </div>
                </div>
              </div>
              <button class="swiper_prev">
                <span>
                  <img src="${pageContext.request.contextPath}/assets/img/arrow-left-b3b3b3.d28cceba.svg" alt="" />
                </span>
              </button>
              <button class="swiper_next">
                <span>
                  <img src="${pageContext.request.contextPath}/assets/img/arrow-right-b3b3b3.9e94f7a7.svg" alt="" />
                </span>
              </button>
            </div>

            <!-- 작은 이미지 -->
            <div class="ImgThumbnail">
              <button class="img_more">${pageContext.request.contextPath}/assets/img/
                <figure>
                  <img
                    src="${pageContext.request.contextPath}/assets/img/be0a11cf-0d08-4cd9-8719-88937088cf4b.jpg"
                    alt=""
                    class="Imageview"
                  />
                </figure>
              </button>
              <button class="img_more">
                <figure>
                  <img src="" alt="" class="Imageview" />
                </figure>
              </button>
              <button class="img_more">
                <figure>
                  <img src="" alt="" class="Imageview" />
                </figure>
              </button>
              <button class="img_more">
                <figure>
                  <img src="" alt="" class="Imageview" />
                </figure>
              </button>
            </div>
            <!-- 작은 이미지 -->
          </section>

          <section class="Infomain">
              <!-- title -->
              <div class="studyCafeTitle">
                	<p>
						<c:out value="${studycafe.getStudyCafeName() }" />
					</p>
              </div>

              <div class="studyCafeLocation">
                <div class="address">
                  <span>
                    <img src="${pageContext.request.contextPath}/assets/img/location.f1e61d10.svg" alt="" />
                  </span>
                  <p>
                  	<c:out value="${studycafe.getStudyCafeAddress() }" />
                  </p>
                </div>

                <div class="likeCnt">
                  <span>
                    <img src="${pageContext.request.contextPath}/assets/img/heart.1c5c89e6.svg" alt="" />
                  </span>
                  <p>
                  	<c:out value="${studycafe.getStudyCafeLikeCount() }" />
                  </p>
                </div>
              </div>

              <div class="studyCafeReply">
                <div class="start">
                  <img src="${pageContext.request.contextPath}/assets/img/Star_1.svg" alt="" />
                </div>
                <c:out value="${studycafe.getStudyCafeCommentScoreAvg() }" />
                <div class="reviewCnt">
                	<c:out value="${studycafe.getStudyCafeCommentCount() }" />
                </div>
              </div>

              <div class="studyCafePrice">
                <div class="price">
                  <div class="PriceTime">
                    <c:out value="${studycafe.getStudyCafePrice() }" />
                    <p>원 1 시간당</p>
                    <span class="MinTime">최소 1시간 기준</span>
                  </div>
                </div>
                <div class="likeBtn">
                  <button type="button">
                    <span>
                      <img
                        src="${pageContext.request.contextPath}/assets/img/favorite-off.f18adc33.svg"
                        alt="좋아요 버튼"
                        style="vertical-align: middle"
                      />
                    </span>
                  </button>
                </div>
              </div>

              <div class="ReserBtn">
                <button type="button" class="Reservation">예약</button>
              </div>

              <!-- 에약 모달창 -->
             
             <form action="" method="get">
              <div class="ReserveFormContent none">
                <div class="CloseBox">
                  <button type="button">
                    <span>
                      <img src="${pageContext.request.contextPath}/assets/img/icon-close.7745f6d1.svg" alt="" />
                    </span>
                  </button>
                </div>

                <!-- 날짜선택 -->
                <div>
                  <div class="ContentTitle calendal">
                    <button type="button" class="ContentTitleStyle">
                      <div class="TitleSelect">
                        <p>날짜 선택</p>
                        <p class="cal">예약 날짜</p>
                        <input class="calInput" name="calInput" type="text" hidden value="" />
                      </div>
                      <img src="${pageContext.request.contextPath}/assets/img/btn-arrow-down-lightgray.svg" alt="" />
                    </button>

                    <!-- 켈린더 -->
                    <div class="calMain cal_none">
                      <div class="sec_cal">
                        <div class="cal_nav">
                          <a href="javascript:;" class="nav-btn go-prev">prev</a>
                          <div class="year-month"></div>
                          <a href="javascript:;" class="nav-btn go-next">next</a>
                        </div>
                        <div class="cal_wrap">
                          <div class="days">
                            <div class="day">MON</div>
                            <div class="day">TUE</div>
                            <div class="day">WED</div>
                            <div class="day">THU</div>
                            <div class="day">FRI</div>
                            <div class="day">SAT</div>
                            <div class="day">SUN</div>
                          </div>
                          <div class="dates"></div>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>

                <!-- 이용시간 선택 -->
                <div>
                  <div class="ContentTitle timeContainer">
                    <button type="button" class="ContentTitleStyle">
                      <div class="TitleSelect">
                        <p>이용시간</p>
                        <p class="timeText">시작 시간</p>
                        <p class="endText">종료 시간</p>
                        <input class="timeInput" name="timeInput" type="text" hidden value=""/>
                        <input class="endTimeInput" name="endTimeInput" type="text" hidden value="" />
                      </div>
                      <img src="${pageContext.request.contextPath}/assets/img/btn-arrow-down-lightgray.svg" alt="" />
                    </button>

                    <!-- 시간 박스 열림 -->
                    <div class="TimeContainer time_none">
                      <div class="TextBox">
                        <p>최소 시간: 1시간 / 최대시간: 24시간</p>

                        <div class="ColorGuide">
                          <div class="impossible">
                            <span></span>
                            <span>불가</span>
                          </div>
                          <div class="possible">
                            <span></span>
                            <span>가능</span>
                          </div>
                          <div class="selected">
                            <span></span>
                            <span>선택</span>
                          </div>
                        </div>
                      </div>

                      <div class="TimeItem">
                        <div class="Timeslider">
                          <div class="swiper">
                            <div class="swiper-wrapper" id="time">
                              <!-- <div
                              class="swiper-slider time-swiper-slide time-swiper-group-buying"
                            >
                              10,000
                              <span class="time-swiper-time">7:00(시간)</span>
                            </div> -->
                            </div>
                          </div>

                          <p class="sliderComment">
                            시작시간, 선택 후 종료시간을 선택해주세요.
                          </p>

                          <button class="sliderPrev slider-prev" type="button">
                            <span>
                              <img
                                src="${pageContext.request.contextPath}/assets/img/arrow-left-b3b3b3.d28cceba.svg"
                                alt=""
                                style="margin-top: 4px; height: 18px"
                              />
                            </span>
                          </button>
                          <button class="sliderNext slider-next" type="button">
                            <span>
                              <img
                                src="${pageContext.request.contextPath}/assets/img/arrow-right-b3b3b3.9e94f7a7.svg"
                                alt=""
                                style="margin-top: 4px; height: 18px"
                              />
                            </span>
                          </button>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>


                <!-- 결제정보 -->
                <div>
                  <p class="TotalPrice">결제정보</p>
                  <div class="Price">
                    <p>일반 구매 총 금액</p>
                    <!-- 가격 뿌려주기 -->
                    <p class="tal">
                    <c:out value="${studycafe.getStudyCafePrice() }" />
                    원</p>
                    <input type="text" class="talInput" name="price" hidden  value=""/>
                  </div>
                </div>

                <!-- 확인 버튼 -->
                <button class="BuyContainer" type="submit">
                  <div class="BuyBtn">
                    <div style="display: flex">
                      <p class="PriceBtn">
                        <!-- 가격 뿌려주기 -->
                        <c:out value="${studycafe.getStudyCafePrice() }" />
                      </p>
                      <span>원</span>
                    </div>
                    <p class="TitleBtn">스터디 카페 예약하기</p>
                  </div>
                </button>
              </div>
              </form>
          </section>
        </section>
        <!-- 예약할 장소 정보 -->

        <!-- 텝으로 배너 이동 -->
        <section class="TabPanel">
          <ul class="TabPanelList">
            <!-- 클릭 했을때 스크롤 이동, 버튼 색변환 -->
            <li class="blurTab">상세설명</li>
            <li class="TabPanelItem review">후기</li>
            <li class="TabPanelItem caution">주의사항</li>
          </ul>
        </section>
        <!-- 텝으로 배너 이동 -->

        <!-- 위치 상세설명 -->
        <article class="TapContent">
          <section class="description">
            <h3>소개 및 활용 팁</h3>
            <p>
            	<c:out value="${studycafe.getStudyCafeContent() }" />
            </p>
          </section>

          <section class="CurrentLocation">
            <h3>위치</h3>
            <div class="Map">
              <div class="MapLoc">
                <div id="map"></div>
              </div>
              <figure>
                <span>
                  <img src="${pageContext.request.contextPath}/assets/img/location-pin.4a78e1c2.svg" alt="" />
                </span>
                <figcaption>카페 위치 주소 보여주기</figcaption>
              </figure>
            </div>
              <span id="cafe-address">
              	<c:out value="${studycafe.getStudyCafeAddress() }" />
              </span>
          </section>
        </article>
        <!-- 위치 상세설명 -->

        <!-- 댓글 -->
        <section class="ReplyContent">
          <!-- 댓글 수 -->
          <div class="replyCnt">
            <p class="countTitle">
              댓글
              <span>
              	<c:out value="${studycafe.getStudyCafeCommentCount() }" />
              </span>
              건
            </p>
          </div>

          <!--별점 평균  -->
          <div class="startAvg">
            <div class="RateCardContainer">
              <span>
                <img src="${pageContext.request.contextPath}/assets/img/Star_1.svg" alt="" />
              </span>
              <span>별점평균</span>
              <p>
              	<c:out value="${studycafe.getStudyCafeCommentScoreAvg() }" />
              </p>
            </div>

            <div class="CardContainer">
              <div>
                <span>
                	<c:out value="${studycafe.getStudyCafeCommentCount() }" />
                </span>
                건의 후기 중
                <br />
                <span>
                	<c:out value="${studycafe.getStudyCafeCommentScoreProportion() }" />
                </span>
                명의 고객이 5점을 주었어요.
              </div>
            </div>
          </div>

          <!-- 최신순, 순서정렬 -->
          <div class="replyFilter">
            <button type="button">
              <span>최신순</span>
              <span>
                <img src="${pageContext.request.contextPath}/assets/img/arrow-down-87-new.f91c9db5.svg" alt="" />
              </span>
            </button>

            <div class="menuList none">
              <!-- js로 클릭하면 메뉴 나오게, 글자 바뀌게, 올려놓으면 색 바뀌게 -->
              <button type="button" class="select">최신순</button>
              <button type="button" class="none_select">과거순</button>
              <button type="button" class="none_select">별점 높은 순</button>
              <button type="button" class="none_select">별점 낮은 순</button>
            </div>
          </div>
          <!-- 댓글 리스트 -->
          <ul class="replyList">
            <li class="ReplyItemRow">
              <div class="rowContainer">
                <div class="rowbtn">
                  <div class="startReply">
                    <img src="${pageContext.request.contextPath}/assets/img/Star_1.svg" alt="" />
                    <p class="avg">별점평균</p>
                    <p class="nameDate">
                      <span>이름</span>
                      |
                      <span>날짜/시간</span>
                    </p>
                  </div>
                </div>
                <p class="repleyContent">댓글 내용</p>
                <div class="replyLike">
                  <p class="likehelp">도움이 됐어요</p>
                  <div class="likeImg">
                    <span>
                      <img
                        src="${pageContext.request.contextPath}/assets/img/thumbs-up_line_1B_24.9d1ec32f.svg"
                        alt=""
                      />
                    </span>
                    <!-- 좋아요 개수 뿌려주기 -->
                    <span>0</span>
                  </div>
                </div>
              </div>
            </li>
          </ul>
        </section>
        <!-- 댓글 -->

        <!-- 환불규정, 주의 사항 -->
        <article class="NoticeContent">
          <section>
            <h4>주의사항</h4>
            <ul class="NoticeList">
              <ul>
                <li class="NoticeItem">
                  대관 중 시설 훼손이 발생한 경우 손해액을 호스트에게 배상해야 합니다.
                </li>
                <li class="NoticeItem">
                  시간 초과시, 추가 요금은 현장 결제합니다. (1시간마다 발생)
                </li>
                <li class="NoticeItem">
                  대여 시간 보다 적게 사용 하시더라도 환불되지않습니다.
                </li>
                <li class="NoticeItem">
                  실내 공간 이용 시 반드시 실내 용 운동화를 착용바랍니다.
                </li>
                <li class="NoticeItem">분리수거를 철저히 해주시기 바랍니다.</li>
              </ul>
            </ul>
          </section>

          <section>
            <h4>환불 규정</h4>
            <div class="RefundTitle">
              <div class="RefundTypeList">
                <p>회원</p>
                <ul>
                  <li>공간 이용일 기준 7일 전 : 100% 환불</li>
                  <li>공간 이용일 기준 6일 ~ 4일 전 : 50% 환불</li>
                  <li>공간 이용일 기준 3일 ~ 당일 취소 시 : 환불 불가</li>
                </ul>
              </div>
              <div class="RefundTypeList">
                <p>회사 및 호스트</p>
                <ul>
                  <li>
                    <span></span>
                    공간 이용일 기준 당일 취소 시 : 100% 환불
                  </li>
                </ul>
              </div>
              <div class="RefundTypeList">
                <p>천재지변 및 불가항력</p>
                <ul>
                  <li>
                    <span></span>
                    공간 이용일 기준 당일 취소 시 : 100% 환불
                  </li>
                </ul>
              </div>
            </div>
          </section>
        </article>

        <!-- 환불규정, 주의 사항 -->
      </main>
    </main>

    <!-- footer -->
    <footer></footer>

    <script
      src="https://code.jquery.com/jquery-3.6.3.js"
      integrity="sha256-nQLuAZGRRcILA+6dMBOvcRh5Pe310sBpanc6+QBmyVM="
      crossorigin="anonymous"
    ></script>
    <script src="${pageContext.request.contextPath}/assets/js/reservation.js"></script>
  </body>
</html>
