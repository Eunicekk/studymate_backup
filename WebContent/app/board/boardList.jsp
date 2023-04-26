<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>	
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Document</title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/css/boardList.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/css/reset.css">


</head>
<body>
	<header id="header-main">
		<div>
	<!-- 		<img src="/img/로고.png" alt="" class="logo" /> -->
		</div>
		<div class="header-left">
			<a href="#" class="content-cafe">스터디카페 예약</a> <a href="#"
				class="content-group">스터디그룹 모집</a>
		</div>
		<div class="header-right">
            <div class="btn-group">
               <c:choose>
                  <c:when test="${empty sessionScope.memberNumber}">
                     <!-- 로그인 페이지 이동 처리 -->
                     <a href="${pageContext.request.contextPath}/member/login.me"
                        class="login-btn">로그인</a>
                     <!-- 회원가입 페이지 이동 처리 -->
                     <a href="${pageContext.request.contextPath}/member/join.me"
                        class="join-btn">회원가입</a>
                  </c:when>
                  <c:otherwise>
                     <a href="${pageContext.request.contextPath}/member/logoutOk.me"
                        class="logout-btn">로그아웃</a>
                     <div class="member-name">
						<a href="#">이름</a>
					</div>		
					<div class="mypage">
						<a href="${pageContext.request.contextPath}/mypage/MyPageModifyingProfile.my">마이페이지</a>
					</div>   
                  </c:otherwise>

               </c:choose>

            </div>
         </div>
	</header>

	<!-- 메인 마진 없 sri wrap-->
	<main class="boardList-ContentWrapper">
		<!-- 마진 있 / content -->
		<div id="content-wrap">
			<!-- 마진없는 컴팩트사이즈 company honest qna-->
			<div class="content">
				<div class="contents-container">
					<!-- (1/4) -->
					<section class="sub_top_wrap tag_list">
						<span class="sub-title-tag"> <strong class="title">
								포트폴리오 </strong>
						</span>
					</section>
					<!-- (2/4) 네비게이션 (9개씩 나온) 필요한지 뺄지-->
					<section class="contents-topic-nav">
						<div class="content-slide-category"></div>
					</section>

					<!-- (3/4) 전체 몇건인지, 검색창  -->
					<section class="search-form">
						<!-- 전체건수 -->
						<div class="contents-list-cnt">
							전체 <strong>${total}</strong> 건
						</div>
						<!-- 검색창 -->
						<div class="box-search">
						
							<div class="input-keyword">
							  <form action="">
								<input type="text" name="input-keyword" id="input-keyword" value
									placeholder="어떤 포트폴리오를 찾으시나요?" class="inpTypo">
								<button type="button" class="button-search">
									<!-- 돋보기 이미지 넣기 -->
									<img
										src="https://cdn-icons-png.flaticon.com/512/8915/8915520.png"
										alt="" width="" class="search-icon">
								</button>
							  </form>	
							</div>
						</div>
					</section>


					<!-- (4/4) -->
					<section class="content-list-wrapper">
						<!-- 게시글 작성 버튼 라인 -->
						<div class="content-list-short">
							<!-- 좋아요순, 최신순, 조회수 많은 순, 댓글 많은 순  -->
							<div class="content-outline filter">
								<!-- <span class="content-order-list"> <label class="lbl"
									for="popular"> <img
										src="https://cdn-icons-png.flaticon.com/512/1055/1055183.png"
										alt="" class="orderList-checkImg" width="24px" height="24px">
										좋아요 순
								</label>
								</span> --> <span class="content-order-list"> <label class="lbl"
									for="popular" id="sortByComments"> <img
										src="https://cdn-icons-png.flaticon.com/512/1055/1055183.png"
										alt="" class="orderList-checkImg" width="24px" height="24px">
										<a href="/board/boardListOk.bo?orderBy=commentCount">
										댓글 많은 순
										</a>
								</label>
								</span> <span class="content-order-list"> <label class="lbl"
									for="popular" id="sortByRecent"> <img
										src="https://cdn-icons-png.flaticon.com/512/1055/1055183.png"
										alt="" class="orderList-checkImg" width="24px" height="24px">
										<a href="?orderBy=recent">
										최신 순
										</a>
										
								</label>
								</span>

							</div>
							<!-- 게시글 작성하는 페이지로 보내기 -->
							<form action="">
								<button type="button" class="button-content-write" > <a href="${pageContext.request.contextPath}/board/boardWrite.bo"> 게시글
									작성 </a> </button>
							</form>
						</div>

						<!-- 게시글 리스트 -->
						<ul class="content-list">
							<c:choose>
							 <c:when test="${not empty boardList}">
							<c:forEach var="post" items="${boardList}">
							<!-- <div class="content-listWrap"> -->
								<!-- 게시글 (1/10) -->
								<li>
									<div class="content-subject-wrap">
										<!-- 이거 필요한지? -->
										<em class="label-hot"></em>
										<!-- 게시글 상세로 페이지 이동처리 -->
										<a href="${pageContext.request.contextPath}/board/boardReadOk.bo?boardNumber=${post.getBoardNumber()}" class="content-subject">
  											<c:out value="${post.getBoardTitle()}"></c:out>
										</a>
			
										
								<!-- 		[🌏 포트폴리오] lemon은 어떻게
											만들어지는가⭐️</a> -->
									</div> <!-- 게시글 미리보기 -->  <span class="content-desc">
										<c:out value="${post.getBoardContent() }"></c:out>
										
										 </span>
									<div class="content-data-info">
										<!-- 댓글수, 조회수, 글쓴이 -->
										
										<!-- (1/3) 댓글 수-->
										<span class="content-info content-reply"> 
										
										<!-- 댓글이미지 -->
											<img src="" alt=""> 댓글 <strong> <c:out value="${post.getBoardCommentCount()}"/> </strong>
										</span>

										<!-- (2/3) 조회수 -->
										<span class="content-info content-view"> 
										<!-- 조회수 눈 이미지 -->
											<img src="" alt=""> 조회수 <strong><c:out value="${post.getBoardReadCount()}"></c:out></strong>
										</span>

										<!--(3/3) 작성자이름, 작성 날짜-->
										<div class="content-member-info">
											<div>
												<img
													src="https://mblogthumb-phinf.pstatic.net/20120713_47/wnfhd6545_1342157203202y8kjd_JPEG/%C4%C4%C7%BB%C5%CD1.jpg?type=w2"
													class="content-userImg" height="25px" width="25px">
											</div>
											<span class="content-writer"><c:out value="${post.getMemberNumber() }"/></span> 
											<span class="content-write-date"><c:out value="${post.getBoardDate() }"/></span>
										</div>
										<!-- 프사 -->
									</div>
								</li>
								</c:forEach>
								</c:when> 
								 <c:otherwise>
               					   
          					           <li >등록된 게시물이 없습니다.</li>
                				 		
         					      </c:otherwise>
								</c:choose>
							</ul>	
								
							<div class="pageButtons">
 							 <ul class="page-list">
  							  <!-- ========== 페이징 처리 예시 ============ -->
  							   <c:if test="${prev}">
   							   <li>
    						    <a href="${pageContext.request.contextPath}/board/boardListOk.bo?page=${startPage - 1}" class="prev">
    						     <img
                    				src="https://shareit.kr/_next/static/media/arrow-left-677294.ae6b1d0b.svg"
                    				class="page" width="15px" height="15px" alt=""
                  					/>
    						    </a>			
   							   </li>
 							   </c:if>		 	

  							  <c:forEach var="i" begin="${startPage}" end="${endPage}">
   							   <c:choose>
    						    <c:when test="${!(i == page)}">
     						     <li class="page-list-container">			
         						   <a href="${pageContext.request.contextPath}/board/boardListOk.bo?page=${i}" class="page">
         						     <c:out value="${i}"/>
         						   </a>
      						    </li>
      						   </c:when>
      						  <c:otherwise>
       						    <li class="page-list-container">
       						     <a href="#" class="pageNow">
        					      <c:out value="${i}"/>
           						 </a>
         						 </li> 
      						  </c:otherwise>
    					  </c:choose>
  					  </c:forEach>

    						<c:if test="${next}">
    							  <li>			
     							   <a href="${pageContext.request.contextPath}/board/boardListOk.bo?page=${endPage + 1}" class="next">
     							     <img src="https://cdn-icons-png.flaticon.com/512/2989/2989988.png" class="page" width="15px" height="15px" alt="">
     							   </a>
    							  </li>
   							 </c:if>
  						  <!-- ========== /페이징 처리 예시 ============ -->
  						</ul>
					</div>
				</section>
			</div>
		</div>
	</main>


	<!-- 푸터 -->
	<footer></footer>
	<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
	<script src="${pageContext.request.contextPath}/assets/js/boardList.js"></script>
</body>
</html>