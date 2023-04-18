<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Document</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/reset.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/study_group_main.css" />
  </head>
  <body>
    <header></header>
    <main id="main">
      <!--nav 검색창, 필터버튼 -->
      <div class="searchContainer">
        <div class="searchBox">
          <button class="searchBtn" hidden></button>
          <form id="search" action="" method="post">
            <input
              type="text"
              autocomplete="off"
              id="searchInput" 
              name="searchInput" 
              placeholder="찾으시는 키워드를 입력하세요"
              value=""
            />
            <input type="submit" id="search-btn" value="" />
          </form>
          <a href="${pageContext.request.contextPath}/app/group/studyGroupWrite.jsp" class="newWriteBtn">새 글 쓰기</a>
        </div>


        <div class="searchFilter">
          <ul class="filterContainer">

            
            <li class="filterBtn onoff">
              <div class="filterlist">
                <div class="InputContainer OnOff">
                  <div class="selectText">
                    <div class="TextFiled">
                      <div class="Text on" [date-value="optValue" ]>
                        진행 방식
                      </div>
                    </div>
                    <div class="BtnFiled">
                      <span></span>
                      <div class="underImg">
                        <img
                          src="${pageContext.request.contextPath}/assets/img/btn-arrow-down-lightgray.svg"
                          alt="아래 화살표"
                        />
                      </div>
                    </div>
                  </div>
                  <!--메뉴창 -->
                  <div class="selectMenu selectOnOff none">
                    <div class="selectList">
                      <div class="selectOption">온라인</div>
                      <div class="selectOption">오프라인</div>
                    </div>
                  </div>
                  <input type="hidden" value="on" />
                </div>
           </li>

          </li>
          <li class="filterBtn filed">
            <div class="filterlist">
              <div class="InputContainer">
                <div class="selectText">
                  <div class="TextFiled">
                    <div class="Text_filed" [date-value="optValue" ]>
                      모집 분야
                    </div>
                  </div>
                  <div class="BtnFiled">
                    <span></span>
                    <div class="underImg">
                      <img
                        src="${pageContext.request.contextPath}/assets/img/btn-arrow-down-lightgray.svg"
                        alt="아래 화살표"
                      />
                    </div>
                  </div>
                </div>
                <!--메뉴창 -->
                <div class="selectMenu selectFiled none">
                  <div class="selectList">
                    <div class="Option">어학</div>
                    <div class="Option">취업</div>
                    <div class="Option">고시/공무원</div>
                    <div class="Option">취미/교양</div>
                    <div class="Option">프로그래밍</div>
                    <div class="Option">자율</div>
                    <div class="Option">기타</div>
                  </div>
                </div>
              <input type="hidden" value="on">
            </div>
         </li>

         <li class="filterBtn calendal">
          <div class="filterlist">
            <button class="filter">
              <span class="cal">모집기간</span>
              <div class="underImg">
                <img
                  src="${pageContext.request.contextPath}/assets/img/btn-arrow-down-lightgray.svg"
                  alt="아래 화살표"
                />
              </div>
            </button>
          </div>
            
            <!--캘린더  -->
            <div class="locationList none">
              <div class="locationModal">
                <div class="calMain">
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
        </li>

            <li class="resetFilterBtn">
              <!-- 스터디 예약 메인 페이지 -->
              <a href="">
                <span>초기화</span>
              </a>
            </li>
          </ul>
        </div>

        <!-- 스터디 카페 메인  -->
      <form action="/studyGroup/studyGroupMainOk.sg" method="get" name="order">
        <div class="mainSpace">
          <div class="titleOrder">
            <h2 class="title">
              스터디 그룹
            </h2>
            <input type="hidden" class="studygroup-count" value="${total }">
            <div class="selectOrder">
              <select id="order"  name="order" >  
               <option id="latest" value="latest">
                  최신순
                </option>
                <option id="viewCount" value="viewCount">
                  조회순
                </option>
                <option id="interest" value="interest">
                  좋아요순
                </option>
                <option id="commentCount" value="commentCount">
                  댓글순
                </option>
              </select>
            </div>
          </div>
        </div>
      </form>

          <!-- 그룹모집 메인 -->
        <div class="mainContainer2">
          <ul class="spaceList">
          
          
          <!-- 게시글 목록  -->
          <!-- 게시글 -->
          
          <c:choose>
          <c:when test="${not empty studyGroups}">
          <c:forEach var="group" items= "${studyGroups}">
           <%-- <a href="${pageContext.request.contextPath}/studyGroup/studyGroupReadOk.sg?studyGroupNumber=${group.getStudyGroupNumber()}" class="studyOpen"> --%>
              <a href="" class="studyOpen">
              <li>
                <div class="badge">
                  <div class="badgeFiled">
                    <!-- 모집 분야 받아와서 넣어주기 -->
                    <div class="onoffOptions">${group.getStudyGroupOnline()}</div>
                    <div class="badgeFiledName">${group.getStudyGroupField()}</div>
                  </div>
                </div>


                <!-- 마감일 -->
                <div class="endDate">
                  <p class="endDateText">모집 마감 |</p>
                  <!-- 날짜 받아오기 -->
                  <p>${group.getStudyGroupStartDate()}</p>
                </div>

                <!-- 이름 -->
                <h1 class="groupTitle">${group.getStudyGroupTitle()}</h1>
                <ul class="positionList">
                  <!-- 분야 넣어주기 -->
                  <li class="positionItem">백엔드</li>
                  <li class="positionItem">데이터베이스</li>
                </ul>

                <div class="studyBorder"></div>

                <section class="ReadReviewCnt">
                  <div class="userInfo">
                    <div class="userImg">
                      <img src="${pageContext.request.contextPath}/assets/img/인공지능팩토리_2022-06-20_15-25-27.png" alt="유저 프로필사진">
                    </div>
                    <!-- ${board.getMemberId() } -->
                    <div>${group.getMemberNickname()}</div>
                  </div>

                  <div class="ReadReview">
                    <div class="replyCnt">
                      <img src="${pageContext.request.contextPath}/assets/img/icon-search-input.svg"
                       alt="조회수 이미지"
                       style="width: 10px;">
                       <p>${group.getStudyGroupReadCount()}</p>
                    </div>
                    <div class="replyCnt">
                      <img src="${pageContext.request.contextPath}/assets/img/icn-chat-filled-lightgray.d59bfd98.svg"
                       alt="댓글 이미지">
                       <p>${group.getStudyGroupCommentCount()}</p>
                    </div>
                    
                    <!-- 좋아요 -->
                    <div class="groupLikeItems" > 
                    <input type="hidden" class= "like-study-group-number" >
                    <input type="hidden" class= "like-member-number" value= "${group.getMemberNumber()}" >
          		     <button class= "groupLikeButton" data-study-group-number= "${group.getStudyGroupNumber()}">
                   	<img alt="" src="https://cdn-icons-png.flaticon.com/512/1077/1077035.png" class="groupLikeImg" >
                   	<p>${group.getStudyGroupLikeCount()}</p>
                    </button> 
                     </div>
                    
                  </div>
                  
                </section>
         
              
              </li>
         	<!-- 좋아요 버튼  -->     
              
              <!-- <div > 검색된 게시물이 없습니다.</div> -->
            </a>
          
          
          </c:forEach>
         
          </c:when>
          
          
         <c:otherwise>
         <div> 등록된 게시물이 없습니다. </div>
         </c:otherwise>
          
          
          </c:choose>
          
          
          
           <%--  <a href="${pageContext.request.contextPath}/app/group/studyGroupRead.jsp" class="studyOpen">
              <li>
                <div class="badge">
                  <div class="badgeFiled">
                    <!-- 모집 분야 받아와서 넣어주기 -->
                    <div class="onoffOptions">?? </div>
                    <div class="badgeFiledName">프로그래밍</div>
                  </div>
                </div>

                <!-- 마감일 -->
                <div class="endDate">
                  <p class="endDateText">모집 마감 |</p>
                  <!-- 날짜 받아오기 -->
                  <p>마지막 날짜</p>
                </div>

                <!-- 이름 -->
                <h1 class="groupTitle">앱 개발 공모전 같이 나가실 UI/UX 디자이너분 구합니다!</h1>
                <ul class="positionList">
                  <!-- 분야 넣어주기 -->
                  <li class="positionItem">백엔드</li>
                  <li class="positionItem">데이터베이스</li>
                </ul>

                <div class="studyBorder"></div>

                <section class="ReadReviewCnt">
                  <div class="userInfo">
                    <div class="userImg">
                      <img src="${pageContext.request.contextPath}/assets/img/인공지능팩토리_2022-06-20_15-25-27.png" alt="유저 프로필사진">
                    </div>
                    <!-- ${board.getMemberId() } -->
                    <div>유저 이름</div>
                  </div>

                  <div class="ReadReview">
                    <div class="replyCnt">
                      <img src="${pageContext.request.contextPath}/assets/img/icon-search-input.svg"
                       alt="조회수 이미지"
                       style="width: 10px;">
                       <p>조회수</p>
                    </div>
                    <div class="replyCnt">
                      <img src="${pageContext.request.contextPath}/assets/img/icn-chat-filled-lightgray.d59bfd98.svg"
                       alt="댓글 이미지">
                       <p>댓글수</p>
                    </div>
                  </div>
                </section>
         
              </li>
              
              <!-- <div > 검색된 게시물이 없습니다.</div> -->
            </a>
            
            
            <a href="${pageContext.request.contextPath}/app/group/studyGroupRead.jsp" class="studyOpen">
              <li>
                <div class="badge">
                  <div class="badgeFiled">
                    <!-- 모집 분야 받아와서 넣어주기 -->
                         <div class="onoffOptions">${studyGroup }</div>
                    <div class="badgeFiledName">어학</div>
                  </div>
                </div>

                <!-- 마감일 -->
                <div class="endDate">
                  <p class="endDateText">모집 마감 |</p>
                  <p>마지막 날짜</p>
                </div>

                <h1 class="groupTitle">스터디그룹 이름</h1>
                <ul class="positionList">
                  <li class="positionItem">백엔드</li>
                  <li class="positionItem">데이터베이스</li>
                </ul>

                <div class="studyBorder"></div>

                <section class="ReadReviewCnt">
                  <div class="userInfo">
                    <div class="userImg">
                      <img src="${pageContext.request.contextPath}/assets/img/인공지능팩토리_2022-06-20_15-25-27.png" alt="유저 프로필사진">
                    </div>
                    <div>유저 이름</div>
                  </div>

                  <div class="ReadReview">
                    <div class="replyCnt">
                      <img src="${pageContext.request.contextPath}/assets/img/icon-search-input.svg"
                       alt="조회수 이미지"
                       style="width: 10px;">
                       <p>조회수</p>
                    </div>
                    <div class="replyCnt">
                      <img src="${pageContext.request.contextPath}/assets/img/icn-chat-filled-lightgray.d59bfd98.svg"
                       alt="댓글 이미지">
                       <p>댓글수</p>
                    </div>
                  </div>
                </section>

              </li>
            </a>
            <a href="" class="studyOpen">
              <li>
                <div class="badge">
                  <div class="badgeFiled">
                    <!-- 모집 분야 받아와서 넣어주기 -->
                      <div class="onoffOptions">온라인</div>
                    <div class="badgeFiledName">고시/공무원</div>
                  </div>
                </div>

                <!-- 마감일 -->
                <div class="endDate">
                  <p class="endDateText">모집 마감 |</p>
                  <p>마지막 날짜</p>
                </div>

                <h1 class="groupTitle">스터디그룹 이름</h1>
                <ul class="positionList">
                  <li class="positionItem">백엔드</li>
                  <li class="positionItem">데이터베이스</li>
                </ul>

                <div class="studyBorder"></div>

                <section class="ReadReviewCnt">
                  <div class="userInfo">
                    <div class="userImg">
                      <img src="${pageContext.request.contextPath}/assets/img/인공지능팩토리_2022-06-20_15-25-27.png" alt="유저 프로필사진">
                    </div>
                    <div>유저 이름</div>
                  </div>

                  <div class="ReadReview">
                    <div class="replyCnt">
                      <img src="../img/icon-search-input.svg"
                       alt="조회수 이미지"
                       style="width: 10px;">
                       <p>조회수</p>
                    </div>
                    <div class="replyCnt">
                      <img src="${pageContext.request.contextPath}/assets/img/icn-chat-filled-lightgray.d59bfd98.svg"
                       alt="댓글 이미지">
                       <p>댓글수</p>
                    </div>
                  </div>
                </section>

              </li>
            </a>
            <a href="" class="studyOpen">
              <li>
                <div class="badge">
                  <div class="badgeFiled">
                    <!-- 모집 분야 받아와서 넣어주기 -->
                    <div class="onoffOptions">오프라인</div>
                    <div class="badgeFiledName">프로그래밍</div>
                  </div>
                </div>

                <!-- 마감일 -->
                <div class="endDate">
                  <p class="endDateText">모집 마감 |</p>
                  <p>마지막 날짜</p>
                </div>

                <h1 class="groupTitle">스터디그룹 이름</h1>
                <ul class="positionList">
                  <li class="positionItem">백엔드</li>
                  <li class="positionItem">데이터베이스</li>
                </ul>

                <div class="studyBorder"></div>

                <section class="ReadReviewCnt">
                  <div class="userInfo">
                    <div class="userImg">
                      <img src="../img/인공지능팩토리_2022-06-20_15-25-27.png" alt="유저 프로필사진">
                    </div>
                    <div>유저 이름</div>
                  </div>

                  <div class="ReadReview">
                    <div class="replyCnt">
                      <img src="../img/icon-search-input.svg"
                       alt="조회수 이미지"
                       style="width: 10px;">
                       <p>조회수</p>
                    </div>
                    <div class="replyCnt">
                      <img src="../img/icn-chat-filled-lightgray.d59bfd98.svg"
                       alt="댓글 이미지">
                       <p>댓글수</p>
                    </div>
                  </div>
                </section>

              </li>
            </a>
            <a href="" class="studyOpen">
            
              <li>
                <div class="badge">
                  <div class="badgeFiled">
                    <!-- 모집 분야 받아와서 넣어주기 -->
                    <div class="onoffOptions">오프라인</div>
                    <div class="badgeFiledName">취업</div>
                  </div>
                </div>

                <!-- 마감일 -->
                <div class="endDate">
                  <p class="endDateText">모집 마감 |</p>
                  <p>마지막 날짜</p>
                </div>

                <h1 class="groupTitle">스터디그룹 이름</h1>
                <ul class="positionList">
                  <li class="positionItem">백엔드</li>
                  <li class="positionItem">데이터베이스</li>
                </ul>

                <div class="studyBorder"></div>

                <section class="ReadReviewCnt">
                  <div class="userInfo">
                    <div class="userImg">
                      <img src="../img/인공지능팩토리_2022-06-20_15-25-27.png" alt="유저 프로필사진">
                    </div>
                    <div>유저 이름</div>
                  </div>

                  <div class="ReadReview">
                    <div class="replyCnt">
                      <img src="../img/icon-search-input.svg"
                       alt="조회수 이미지"
                       style="width: 10px;">
                       <p>조회수</p>
                    </div>
                    <div class="replyCnt">
                      <img src="../img/icn-chat-filled-lightgray.d59bfd98.svg"
                       alt="댓글 이미지">
                       <p>댓글수</p>
                    </div>
                  </div>
                </section>
              </li>
            </a>
            
            <a href="" class="studyOpen">
              <li>
                <div class="badge">
                  <div class="badgeFiled">
                    <!-- 모집 분야 받아와서 넣어주기 -->
                    <div class="onoffOptions">오프라인</div>
                    <div class="badgeFiledName">취미/교양</div>
                  </div>
                </div>

                <!-- 마감일 -->
                <div class="endDate">
                  <p class="endDateText">모집 마감 |</p>
                  <p>마지막 날짜</p>
                </div>

                <h1 class="groupTitle">스터디그룹 이름</h1>
                <ul class="positionList">
                  <li class="positionItem">백엔드</li>
                  <li class="positionItem">데이터베이스</li>
                </ul>

                <div class="studyBorder"></div>

                <section class="ReadReviewCnt">
                  <div class="userInfo">
                    <div class="userImg">
                      <img src="../img/인공지능팩토리_2022-06-20_15-25-27.png" alt="유저 프로필사진">
                    </div>
                    <div>유저 이름</div>
                  </div>

                  <div class="ReadReview">
                    <div class="replyCnt">
                      <img src="../img/icon-search-input.svg"
                       alt="조회수 이미지"
                       style="width: 10px;">
                       <p>조회수</p>
                    </div>
                    <div class="replyCnt">
                      <img src="../img/icn-chat-filled-lightgray.d59bfd98.svg"
                       alt="댓글 이미지">
                       <p>댓글수</p>
                    </div>
                  </div>
                </section>
    
              </li>
            </a>
              
              
               <a href="${pageContext.request.contextPath}/app/group/studyGroupRead.jsp" class="studyOpen">
              <li>
                <div class="badge">
                  <div class="badgeFiled">
                    <!-- 모집 분야 받아와서 넣어주기 -->
                    <div class="onoffOptions">온라인</div>
                    <div class="badgeFiledName">프로그래밍</div>
                  </div>
                </div>

                <!-- 마감일 -->
                <div class="endDate">
                  <p class="endDateText">모집 마감 |</p>
                  <!-- 날짜 받아오기 -->
                  <p>마지막 날짜</p>
                </div>

                <!-- 이름 -->
                <h1 class="groupTitle">앱 개발 공모전 같이 나가실 UI/UX 디자이너분 구합니다!</h1>
                <ul class="positionList">
                  <!-- 분야 넣어주기 -->
                  <li class="positionItem">백엔드</li>
                  <li class="positionItem">데이터베이스</li>
                </ul>

                <div class="studyBorder"></div>

                <section class="ReadReviewCnt">
                  <div class="userInfo">
                    <div class="userImg">
                      <img src="${pageContext.request.contextPath}/assets/img/인공지능팩토리_2022-06-20_15-25-27.png" alt="유저 프로필사진">
                    </div>
                    <!-- ${board.getMemberId() } -->
                    <div>유저 이름</div>
                  </div>

                  <div class="ReadReview">
                    <div class="replyCnt">
                      <img src="${pageContext.request.contextPath}/assets/img/icon-search-input.svg"
                       alt="조회수 이미지"
                       style="width: 10px;">
                       <p>조회수</p>
                    </div>
                    <div class="replyCnt">
                      <img src="${pageContext.request.contextPath}/assets/img/icn-chat-filled-lightgray.d59bfd98.svg"
                       alt="댓글 이미지">
                       <p>댓글수</p>
                    </div>
                  </div>
                </section>
         
              </li>
              
              <!-- <div > 검색된 게시물이 없습니다.</div> -->
            </a>
            
            
            
            
             <a href="${pageContext.request.contextPath}/app/group/studyGroupRead.jsp" class="studyOpen">
              <li>
                <div class="badge">
                  <div class="badgeFiled">
                    <!-- 모집 분야 받아와서 넣어주기 -->
                    <div class="onoffOptions">온라인</div>
                    <div class="badgeFiledName">프로그래밍</div>
                  </div>
                </div>

                <!-- 마감일 -->
                <div class="endDate">
                  <p class="endDateText">모집 마감 |</p>
                  <!-- 날짜 받아오기 -->
                  <p>마지막 날짜</p>
                </div>

                <!-- 이름 -->
                <h1 class="groupTitle">앱 개발 공모전 같이 나가실 UI/UX 디자이너분 구합니다!</h1>
                <ul class="positionList">
                  <!-- 분야 넣어주기 -->
                  <li class="positionItem">백엔드</li>
                  <li class="positionItem">데이터베이스</li>
                </ul>

                <div class="studyBorder"></div>

                <section class="ReadReviewCnt">
                  <div class="userInfo">
                    <div class="userImg">
                      <img src="${pageContext.request.contextPath}/assets/img/인공지능팩토리_2022-06-20_15-25-27.png" alt="유저 프로필사진">
                    </div>
                    <!-- ${board.getMemberId() } -->
                    <div>유저 이름</div>
                  </div>

                  <div class="ReadReview">
                    <div class="replyCnt">
                      <img src="${pageContext.request.contextPath}/assets/img/icon-search-input.svg"
                       alt="조회수 이미지"
                       style="width: 10px;">
                       <p>조회수</p>
                    </div>
                    <div class="replyCnt">
                      <img src="${pageContext.request.contextPath}/assets/img/icn-chat-filled-lightgray.d59bfd98.svg"
                       alt="댓글 이미지">
                       <p>댓글수</p>
                    </div>
                  </div>
                </section>
         
              </li>
              
              <!-- <div > 검색된 게시물이 없습니다.</div> -->
            </a>
            
            
             --%>
              
              
              
          </ul>
        </div>
        
          <!-- 페이징 처리 -->
          <ul class="pageNumber">
          
           <c:if test="${prev}">
            <li class="prev">
             <button type="button" onclick="location.href='${pageContext.request.contextPath}/studyGroup/studyGroupMainOk.sg?page=${startPage - 1}'">
                <span class="box-sizing">
                <!--  이 a 태그를 윤님은 button 에다가 onclick 을 주셨는데 나는 a 태그를 넣어봄. 되는지 확인하고 수정하기-->
                  <img src="${pageContext.request.contextPath}/assets/img/arrow-left-677294.ae6b1d0b.svg" alt="">
                </span>
              </button>
            </li>
               </c:if>   
               
                  <c:forEach var="i" begin="${startPage}" end="${endPage}">
                  <c:choose>
                     <c:when test="${!(i==page)}">
                        <li class="pageBtn">
                        <button type="button" onclick="location.href='${pageContext.request.contextPath}/studyGroup/studyGroupMainOk.sg?page=${i}'">
               	   <c:out value="${i }" />
                        </button>
                        </li>
                     </c:when>
                     <c:otherwise>
                        <li class="pageBtn">
                        <button type="button" onclick="location.href='#'" class="active">
                           <c:out value="${i }" />
                        </button>
                        </li>                     
                     </c:otherwise>
                  </c:choose>
               </c:forEach>
               	
               	
                <c:if test="${next }">
               <li class="next">
                  <button type="button" onclick="location.href='${pageContext.request.contextPath}/studyGroup/studyGroupMainOk.sg?page=${endPage+1}'">
                     <span class="box-sizing">
                     <img src="${pageContext.request.contextPath}/assets/img/arrow-right-677294.662f8854.svg" alt="">
                     </span>
                  </button>
               </li>
               </c:if>
            
            </ul> 	
               
               
            
            <%-- <li class="pageBtn">
              <button type="button">1</button>
            </li>
            <li class="pageBtn">
              <button type="button">2</button>
            </li>
            <li class="pageBtn">
              <button type="button">3</button>
            </li>
            <li class="pageBtn">
              <button type="button">4</button>
            </li>
            <li class="pageBtn">
              <button type="button">5</button>
            </li>
            <li class="next">
              <button type="button">
                <span class="box-sizing">
                  <img src="${pageContext.request.contextPath}/assets/img/arrow-right-677294.662f8854.svg" alt="">
                </span>
              </button>
            </li>
          </ul>
          
           --%>
        </div>
	
	
      </div>

    </main>
    <footer></footer>

    <script
      src="https://code.jquery.com/jquery-3.6.3.js"
      integrity="sha256-nQLuAZGRRcILA+6dMBOvcRh5Pe310sBpanc6+QBmyVM="
      crossorigin="anonymous"
    ></script>
    <script>
    let memberNumber = 1;
    </script>
    <script src="${pageContext.request.contextPath}/assets/js/study_group_main.js"></script>
  </body>
</html>
