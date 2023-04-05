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
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/groupRead.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/reset.css"/>
    
  </head>
  <body>
    <!-- 전체 페이지 width/height: 100% -->
    <div>
      <!-- 헤더 -->
      <header></header>

      <!-- 메인컨텐츠 영역 - 게시글헤더(뒤로가기,글제목,글쓴이,작성일) / 게시글콘텐츠()/ 게시글댓글-->
      <main class="boardContent-wrapper">
        <!-- 게시글헤더 section -->
        <section class="boardContent-postHeader">
          <!-- 뒤로가기버튼, 글제목, 글쓴이/날짜 -->
          <div class="currentColor">
            <button type="button" class="prev-to-list">
              <img
                src="https://cdn-icons-png.flaticon.com/512/3353/3353056.png"
                alt=""
                height="25"
                width="25"
              />
            </button>
          </div>
          <div class="boardContent-title">
            <c:out value="${group.getStudyGroupTitle()}" />
          </div>
          <div class="boardContent-userAndDate">
            <div class="boardContent-user">
              <!-- 프로필사진이랑이름 넣기-->
              <div class="boardContent-userImg">
                <img
                  src="https://mblogthumb-phinf.pstatic.net/20120713_47/wnfhd6545_1342157203202y8kjd_JPEG/%C4%C4%C7%BB%C5%CD1.jpg?type=w2"
                  class="userImg"
                  height="3rem"
                  width="3rem"
                />
              </div>
              <!-- 유저 닉네임 -->
              <div class="boardContent-userName">
              <c:out value="${group.getMemberNickname()}" />
              </div>
            </div>
            <!-- 작성일자 -->
            <div class="boardContent-uploadDate">
             <c:out value="${group.getStudyGroupStartDate()}" />
            </div>
			<!-- 게시글 수정 삭제 -->	
            <div class="boardContent-editButtons">
             <c:if test="${sessionScope.memberNumber == group.getMemberNumber()}">  
              <button type="button" class="boardContent-edit">수정</button>
              <button type="button" class="boardContent-delete">삭제</button>
               </c:if> 
          </div>

          </div>

          

          <!-- 스터디그룹 정보 -->
          <ul class="studyInfo">
            <li class="studyInfoList">
              <span class="studyTitle">모집 분야</span>
              <span class="studyFeild">
              <c:out value="${group.getStudyGroupField()}" />
              </span>
            </li>
            <li class="studyInfoList">
              <span class="studyTitle">진행 방식</span>
              <span class="studyFeild">
              <c:out value="${group.getStudyGroupOnline()}" />
              </span>
            </li>
            <li class="studyInfoList">
              <span class="studyTitle">모집 인원</span>
              <span class="studyFeild">
               <c:out value="${group.getStudyGroupCapacity()}" />
              </span>
            </li>
            <li class="studyInfoList">
              <span class="studyTitle">모집 마감일</span>
              <span class="studyFeild"></span>
            </li>
            <li class="studyInfoList">
              <span class="studyTitle">연락 방법</span>
               <a href="#" class="studyEmail">
                <div class="">
                 <c:out value="${group.getStudyGroupContact()}" />
                </div>
                <img src="https://cdn-icons-png.flaticon.com/512/7268/7268615.png" alt="">
              </a>
            </li>
            <li class="studyInfoList">
              <span class="studyTitle">예상 기간</span>
              <span class="studyFeild">
               <c:out value="${group.getStudyGroupDuration()}" />
              </span>
            </li>
          </ul>
        </section>

        <!-- 게시글 본문 section -->
        <section class="boardContent-postContent-wrapper">
          <h2 class="boardContent-postInfo">스터디그룹 소개</h2>
          <div class="boardContent-postContent">
           <c:out value="${group.getStudyGroupcontent()}" />
          </div>
        </section>

        <!-- 게시글 댓글 section -->
        <section class="boardContent-postCommentAndViews">
          <div class="boardContent-postComment">
            <div class="commentInput-wrap">
              <!-- 댓글 개수, 댓글 입력, 댓글 등록버튼 -->
              <h1 class="commentInput-count">100개의 댓글이 있습니다</h1>
              <textarea
                class="commentInput-commentText"
                placeholder="댓글을 입력하세요"
              >
                        <!-- 댓글 입력하기 -->
                    </textarea
              >
              <div class="commentInput-buttonWrapper">
                <button class="commentInput-buttonComplete" name="register">
                  댓글 등록
                </button>
              </div>
            </div>

            <!-- 댓글 리스트 -->

            <!-- 마진없는 댓글 컨테이너 -->
            <ul class="commentList-CommentList">
              <!-- 마진 준 댓글 리스트 컨테이너 -->
              <li class="commentItem-commentContainer">
                <section class="commentItem-CommentHeader">
                  <div class="commentItem-writerWrapper">
                    <img
                      class="commentItem-writerImg"
                      src="https://mblogthumb-phinf.pstatic.net/20120713_47/wnfhd6545_1342157203202y8kjd_JPEG/%C4%C4%C7%BB%C5%CD1.jpg?type=w2"
                      alt=""
                    />
                    <div class="commentItem-commentInfo">
                      <div class="commentItem-title">
                        <div class="commentItem-userNickname">른시룽</div>
                        <div class="commentItem-registerDate">
                          2143.08.10 13:42:55 
                        </div>
                      </div>
                    </div>
                  </div>
                  <div class="boardReply-editDelete">
                    <button type="button" class="boardReply-editor-buttons">수정</button>
                <button type="button" class="boardReply-editor-buttons">삭제</button>
                </div>
                </section>
                <section class="commentItem-CommentContent">
                  <p class="commentItem-CommentContent">
                    안녕하세요 미래에서 왔습니데
                  </p>
                </section>
              </li>
            </ul>
          </div>
        </section>
      </main>

      <footer></footer>
    </div>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="${pageContext.request.contextPath}/assets/js/groupRead.js"></script> 
  </body>
</html>
