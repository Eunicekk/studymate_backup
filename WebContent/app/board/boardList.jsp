<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
	<header></header>

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
							전체 <strong>1,011</strong> 건
						</div>
						<!-- 검색창 -->
						<div class="box-search">
							<div class="input-keyword">
								<input type="text" name="input-keyword" id="input-keyword" value
									placeholder="어떤 포트폴리오를 찾으시나요?" class="inpTypo">
								<button type="button" class="button-search">
									<!-- 돋보기 이미지 넣기 -->
									<img
										src="https://cdn-icons-png.flaticon.com/512/8915/8915520.png"
										alt="" width="" class="search-icon">
								</button>
							</div>
						</div>
					</section>


					<!-- (4/4) -->
					<section class="content-list-wrapper">
						<!-- 게시글 작성 버튼 라인 -->
						<div class="content-list-short">
							<!-- 좋아요순, 최신순, 조회수 많은 순, 댓글 많은 순  -->
							<div class="content-outline filter">
								<span class="content-order-list"> <label class="lbl"
									for="popular"> <img
										src="https://cdn-icons-png.flaticon.com/512/1055/1055183.png"
										alt="" class="orderList-checkImg" width="24px" height="24px">
										좋아요 순
								</label>
								</span> <span class="content-order-list"> <label class="lbl"
									for="popular"> <img
										src="https://cdn-icons-png.flaticon.com/512/1055/1055183.png"
										alt="" class="orderList-checkImg" width="24px" height="24px">
										댓글 많은 순
								</label>
								</span> <span class="content-order-list"> <label class="lbl"
									for="popular"> <img
										src="https://cdn-icons-png.flaticon.com/512/1055/1055183.png"
										alt="" class="orderList-checkImg" width="24px" height="24px">
										최신 순
								</label>
								</span>

							</div>
							<!-- 게시글 작성하는 페이지로 보내기 -->
							<form action="#">
								<button type="button" class="button-content-write">게시글
									작성</button>
							</form>
						</div>

						<!-- 게시글 리스트 -->
						<ul class="content-list">
							<div class="content-listWrap">
								<!-- 게시글 (1/10) -->
								<li>
									<div class="content-subject-wrap">
										<!-- 이거 필요한지? -->
										<em class="label-hot"></em>
										<!-- 게시글 상세로 페이지 이동처리 -->
										<a href="#" class="content-subject">[🌏 포트폴리오] lemon은 어떻게
											만들어지는가⭐️</a>
									</div> <!-- 게시글 미리보기 --> <span class="content-desc">안녕하세욤 이곳은
										게시글을 미리 볼 수 있는 공간입니당 </span>
									<div class="content-data-info">
										<!-- 좋아요수, 댓글수, 조회수, 글쓴이 -->
										<!--(1/4) 좋아요  -->
										<span class="content-info content-like"> <!-- 좋아요이미지 -->
											<img src="" alt=""> 좋아요 <strong>140</strong>
										</span>
										<!-- (2/4) 댓글 수-->
										<span class="content-info content-reply"> <!-- 댓글이미지 -->
											<img src="" alt=""> 댓글 <strong>50</strong>
										</span>

										<!-- (3/4) 조회수 -->
										<span class="content-info content-view"> <!-- 조회수 눈 이미지 -->
											<img src="" alt=""> 조회수 <strong>1,200</strong>
										</span>

										<!--(4/4) 작성자이름, 작성 날짜-->
										<div class="content-member-info">
											<div>
												<img
													src="https://mblogthumb-phinf.pstatic.net/20120713_47/wnfhd6545_1342157203202y8kjd_JPEG/%C4%C4%C7%BB%C5%CD1.jpg?type=w2"
													class="content-userImg" height="25px" width="25px">
											</div>
											<span class="content-writer">작성자 이름</span> <span
												class="content-write-date">작성 날짜</span>
										</div>
										<!-- 프사 -->
									</div>
								</li>

								<!-- 게시글 (2/10) -->
								<li>
									<div class="content-subject-wrap">
										<!-- 이거 필요한지? -->
										<em class="label-hot"></em> <a href="#"
											class="content-subject">임시제목 입니다</a>
									</div> <!-- 게시글 미리보기 --> <span class="content-desc">안녕하세욤 이곳은
										게시글을 미리 볼 수 있는 공간입니당 </span>
									<div class="content-data-info">
										<!-- 좋아요수, 댓글수, 조회수, 글쓴이 -->
										<!--(1/4) 좋아요  -->
										<span class="content-info content-like"> <!-- 좋아요이미지 -->
											<img src="" alt=""> 좋아요 <strong>140</strong>
										</span>
										<!-- (2/4) 댓글 수-->
										<span class="content-info content-reply"> <!-- 댓글이미지 -->
											<img src="" alt=""> 댓글 <strong>50</strong>
										</span>

										<!-- (3/4) 조회수 -->
										<span class="content-info content-view"> <!-- 조회수 눈 이미지 -->
											<img src="" alt=""> 조회수 <strong>1,200</strong>
										</span>

										<!--(4/4) 작성자이름, 작성 날짜-->
										<div class="content-member-info">
											<div>
												<img
													src="https://mblogthumb-phinf.pstatic.net/20120713_47/wnfhd6545_1342157203202y8kjd_JPEG/%C4%C4%C7%BB%C5%CD1.jpg?type=w2"
													class="content-userImg" height="25px" width="25px">
											</div>
											<span class="content-writer">이름이 길면 어케요?</span> <span
												class="content-write-date">2023.12.25</span>
										</div>
									</div> <a href=""></a>
								</li>

								<!-- 게시글 (3/10) -->
								<li>
									<div class="content-subject-wrap">
										<!-- 이거 필요한지? -->
										<em class="label-hot"></em> <a href="#"
											class="content-subject">임시제목 입니다</a>
									</div> <!-- 게시글 미리보기 --> <span class="content-desc">안녕하세욤 이곳은
										게시글을 미리 볼 수 있는 공간입니당 </span>
									<div class="content-data-info">
										<!-- 좋아요수, 댓글수, 조회수, 글쓴이 -->
										<!--(1/4) 좋아요  -->
										<span class="content-info content-like"> <!-- 좋아요이미지 -->
											<img src="" alt=""> 좋아요 <strong>140</strong>
										</span>
										<!-- (2/4) 댓글 수-->
										<span class="content-info content-reply"> <!-- 댓글이미지 -->
											<img src="" alt=""> 댓글 <strong>50</strong>
										</span>

										<!-- (3/4) 조회수 -->
										<span class="content-info content-view"> <!-- 조회수 눈 이미지 -->
											<img src="" alt=""> 조회수 <strong>1,200</strong>
										</span>

										<!--(4/4) 작성자이름, 작성 날짜-->
										<div class="content-member-info">
											<div>
												<img
													src="https://mblogthumb-phinf.pstatic.net/20120713_47/wnfhd6545_1342157203202y8kjd_JPEG/%C4%C4%C7%BB%C5%CD1.jpg?type=w2"
													class="content-userImg" height="25px" width="25px">
											</div>
											<span class="content-writer">이름이 길면 어케요?</span> <span
												class="content-write-date">2023.12.25</span>
										</div>
									</div> <a href=""></a>
								</li>
								<!-- 게시글 (4/10) -->
								<li>
									<div class="content-subject-wrap">
										<!-- 이거 필요한지? -->
										<em class="label-hot"></em> <a href="#"
											class="content-subject">임시제목 입니다</a>
									</div> <!-- 게시글 미리보기 --> <span class="content-desc">안녕하세욤 이곳은
										게시글을 미리 볼 수 있는 공간입니당 </span>
									<div class="content-data-info">
										<!-- 좋아요수, 댓글수, 조회수, 글쓴이 -->
										<!--(1/4) 좋아요  -->
										<span class="content-info content-like"> <!-- 좋아요이미지 -->
											<img src="" alt=""> 좋아요 <strong>140</strong>
										</span>
										<!-- (2/4) 댓글 수-->
										<span class="content-info content-reply"> <!-- 댓글이미지 -->
											<img src="" alt=""> 댓글 <strong>50</strong>
										</span>

										<!-- (3/4) 조회수 -->
										<span class="content-info content-view"> <!-- 조회수 눈 이미지 -->
											<img src="" alt=""> 조회수 <strong>1,200</strong>
										</span>

										<!--(4/4) 작성자이름, 작성 날짜-->
										<div class="content-member-info">
											<div>
												<img
													src="https://mblogthumb-phinf.pstatic.net/20120713_47/wnfhd6545_1342157203202y8kjd_JPEG/%C4%C4%C7%BB%C5%CD1.jpg?type=w2"
													class="content-userImg" height="25px" width="25px">
											</div>
											<span class="content-writer">이름이 길면 어케요?</span> <span
												class="content-write-date">2023.12.25</span>
										</div>
									</div> <a href=""></a>
								</li>
								<!-- 게시글 (5/10) -->
								<li>
									<div class="content-subject-wrap">
										<!-- 이거 필요한지? -->
										<em class="label-hot"></em> <a href="#"
											class="content-subject">임시제목 입니다</a>
									</div> <!-- 게시글 미리보기 --> <span class="content-desc">안녕하세욤 이곳은
										게시글을 미리 볼 수 있는 공간입니당 </span>
									<div class="content-data-info">
										<!-- 좋아요수, 댓글수, 조회수, 글쓴이 -->
										<!--(1/4) 좋아요  -->
										<span class="content-info content-like"> <!-- 좋아요이미지 -->
											<img src="" alt=""> 좋아요 <strong>140</strong>
										</span>
										<!-- (2/4) 댓글 수-->
										<span class="content-info content-reply"> <!-- 댓글이미지 -->
											<img src="" alt=""> 댓글 <strong>50</strong>
										</span>

										<!-- (3/4) 조회수 -->
										<span class="content-info content-view"> <!-- 조회수 눈 이미지 -->
											<img src="" alt=""> 조회수 <strong>1,200</strong>
										</span>

										<!--(4/4) 작성자이름, 작성 날짜-->
										<div class="content-member-info">
											<div>
												<img
													src="https://mblogthumb-phinf.pstatic.net/20120713_47/wnfhd6545_1342157203202y8kjd_JPEG/%C4%C4%C7%BB%C5%CD1.jpg?type=w2"
													class="content-userImg" height="25px" width="25px">
											</div>
											<span class="content-writer">이름이 길면 어케요?</span> <span
												class="content-write-date">2023.12.25</span>
										</div>
									</div> <a href=""></a>
								</li>
								<!-- 게시글 (6/10) -->
								<li>
									<div class="content-subject-wrap">
										<!-- 이거 필요한지? -->
										<em class="label-hot"></em> <a href="#"
											class="content-subject">임시제목 입니다</a>
									</div> <!-- 게시글 미리보기 --> <span class="content-desc">안녕하세욤 이곳은
										게시글을 미리 볼 수 있는 공간입니당 </span>
									<div class="content-data-info">
										<!-- 좋아요수, 댓글수, 조회수, 글쓴이 -->
										<!--(1/4) 좋아요  -->
										<span class="content-info content-like"> <!-- 좋아요이미지 -->
											<img src="" alt=""> 좋아요 <strong>140</strong>
										</span>
										<!-- (2/4) 댓글 수-->
										<span class="content-info content-reply"> <!-- 댓글이미지 -->
											<img src="" alt=""> 댓글 <strong>50</strong>
										</span>

										<!-- (3/4) 조회수 -->
										<span class="content-info content-view"> <!-- 조회수 눈 이미지 -->
											<img src="" alt=""> 조회수 <strong>1,200</strong>
										</span>

										<!--(4/4) 작성자이름, 작성 날짜-->
										<div class="content-member-info">
											<div>
												<img
													src="https://mblogthumb-phinf.pstatic.net/20120713_47/wnfhd6545_1342157203202y8kjd_JPEG/%C4%C4%C7%BB%C5%CD1.jpg?type=w2"
													class="content-userImg" height="25px" width="25px">
											</div>
											<span class="content-writer">이름이 길면 어케요?</span> <span
												class="content-write-date">2023.12.25</span>
										</div>
									</div> <a href=""></a>
								</li>


								<!-- 게시글 (7/10) -->
								<li>
									<div class="content-subject-wrap">
										<!-- 이거 필요한지? -->
										<em class="label-hot"></em> <a href="#"
											class="content-subject">임시제목 입니다</a>
									</div> <!-- 게시글 미리보기 --> <span class="content-desc">안녕하세욤 이곳은
										게시글을 미리 볼 수 있는 공간입니당 </span>
									<div class="content-data-info">
										<!-- 좋아요수, 댓글수, 조회수, 글쓴이 -->
										<!--(1/4) 좋아요  -->
										<span class="content-info content-like"> <!-- 좋아요이미지 -->
											<img src="" alt=""> 좋아요 <strong>140</strong>
										</span>
										<!-- (2/4) 댓글 수-->
										<span class="content-info content-reply"> <!-- 댓글이미지 -->
											<img src="" alt=""> 댓글 <strong>50</strong>
										</span>

										<!-- (3/4) 조회수 -->
										<span class="content-info content-view"> <!-- 조회수 눈 이미지 -->
											<img src="" alt=""> 조회수 <strong>1,200</strong>
										</span>

										<!--(4/4) 작성자이름, 작성 날짜-->
										<div class="content-member-info">
											<div>
												<img
													src="https://mblogthumb-phinf.pstatic.net/20120713_47/wnfhd6545_1342157203202y8kjd_JPEG/%C4%C4%C7%BB%C5%CD1.jpg?type=w2"
													class="content-userImg" height="25px" width="25px">
											</div>
											<span class="content-writer">이름이 길면 어케요?</span> <span
												class="content-write-date">2023.12.25</span>
										</div>
									</div> <a href=""></a>
								</li>


								<!-- 게시글 (8/10) -->
								<li>
									<div class="content-subject-wrap">
										<!-- 이거 필요한지? -->
										<em class="label-hot"></em> <a href="#"
											class="content-subject">임시제목 입니다</a>
									</div> <!-- 게시글 미리보기 --> <span class="content-desc">안녕하세욤 이곳은
										게시글을 미리 볼 수 있는 공간입니당 </span>
									<div class="content-data-info">
										<!-- 좋아요수, 댓글수, 조회수, 글쓴이 -->
										<!--(1/4) 좋아요  -->
										<span class="content-info content-like"> <!-- 좋아요이미지 -->
											<img src="" alt=""> 좋아요 <strong>140</strong>
										</span>
										<!-- (2/4) 댓글 수-->
										<span class="content-info content-reply"> <!-- 댓글이미지 -->
											<img src="" alt=""> 댓글 <strong>50</strong>
										</span>

										<!-- (3/4) 조회수 -->
										<span class="content-info content-view"> <!-- 조회수 눈 이미지 -->
											<img src="" alt=""> 조회수 <strong>1,200</strong>
										</span>

										<!--(4/4) 작성자이름, 작성 날짜-->
										<div class="content-member-info">
											<div>
												<img
													src="https://mblogthumb-phinf.pstatic.net/20120713_47/wnfhd6545_1342157203202y8kjd_JPEG/%C4%C4%C7%BB%C5%CD1.jpg?type=w2"
													class="content-userImg" height="25px" width="25px">
											</div>
											<span class="content-writer">이름이 길면 어케요?</span> <span
												class="content-write-date">2023.12.25</span>
										</div>
									</div> <a href=""></a>
								</li>


								<!-- 게시글 (9/10) -->
								<li>
									<div class="content-subject-wrap">
										<!-- 이거 필요한지? -->
										<em class="label-hot"></em> <a href="#"
											class="content-subject">임시제목 입니다</a>
									</div> <!-- 게시글 미리보기 --> <span class="content-desc">안녕하세욤 이곳은
										게시글을 미리 볼 수 있는 공간입니당 </span>
									<div class="content-data-info">
										<!-- 좋아요수, 댓글수, 조회수, 글쓴이 -->
										<!--(1/4) 좋아요  -->
										<span class="content-info content-like"> <!-- 좋아요이미지 -->
											<img src="" alt=""> 좋아요 <strong>140</strong>
										</span>
										<!-- (2/4) 댓글 수-->
										<span class="content-info content-reply"> <!-- 댓글이미지 -->
											<img src="" alt=""> 댓글 <strong>50</strong>
										</span>

										<!-- (3/4) 조회수 -->
										<span class="content-info content-view"> <!-- 조회수 눈 이미지 -->
											<img src="" alt=""> 조회수 <strong>1,200</strong>
										</span>

										<!--(4/4) 작성자이름, 작성 날짜-->
										<div class="content-member-info">
											<div>
												<img
													src="https://mblogthumb-phinf.pstatic.net/20120713_47/wnfhd6545_1342157203202y8kjd_JPEG/%C4%C4%C7%BB%C5%CD1.jpg?type=w2"
													class="content-userImg" height="25px" width="25px">
											</div>
											<span class="content-writer">이름이 길면 어케요?</span> <span
												class="content-write-date">2023.12.25</span>
										</div>
									</div> <a href=""></a>
								</li>


								<!-- 게시글 (10/10) -->
								<li>
									<div class="content-subject-wrap">
										<!-- 이거 필요한지? -->
										<em class="label-hot"></em> <a href="#"
											class="content-subject">임시제목 입니다</a>
									</div> <!-- 게시글 미리보기 --> <span class="content-desc">안녕하세욤 이곳은
										게시글을 미리 볼 수 있는 공간입니당 </span>
									<div class="content-data-info">
										<!-- 좋아요수, 댓글수, 조회수, 글쓴이 -->
										<!--(1/4) 좋아요  -->
										<span class="content-info content-like"> <!-- 좋아요이미지 -->
											<img src="" alt=""> 좋아요 <strong>140</strong>
										</span>
										<!-- (2/4) 댓글 수-->
										<span class="content-info content-reply"> <!-- 댓글이미지 -->
											<img src="" alt=""> 댓글 <strong>50</strong>
										</span>

										<!-- (3/4) 조회수 -->
										<span class="content-info content-view"> <!-- 조회수 눈 이미지 -->
											<img src="" alt=""> 조회수 <strong>1,200</strong>
										</span>

										<!--(4/4) 작성자이름, 작성 날짜-->
										<div class="content-member-info">
											<div>
												<img
													src="https://mblogthumb-phinf.pstatic.net/20120713_47/wnfhd6545_1342157203202y8kjd_JPEG/%C4%C4%C7%BB%C5%CD1.jpg?type=w2"
													class="content-userImg" height="25px" width="25px">
											</div>
											<span class="content-writer">이름이 길면 어케요?</span> <span
												class="content-write-date">2023.12.25</span>
										</div>
									</div> <a href=""></a>
								</li>
							</div>
							<!-- 게시글 다음페이지 넘기기 버튼  -->
							<div class="pageButtons">
								<a class="page" href="">1</a> <span class="pageNow">2</span> <a
									class="page" href="">3</a> <a class="page" href="">4</a> <a
									class="page" href="">5</a> <a class="page" href="">6</a> <a
									class="page" href="">7</a> <a class="page" href="">8</a> <a
									class="page" href="">9</a> <a class="page" href="">10</a> <a
									class="page" type="button" href="">다음 </a>
								<!-- next button -->
								<img
									src="https://cdn-icons-png.flaticon.com/512/2989/2989988.png"
									class="page" width="15px" height="15px" alt="">
							</div>
						</ul>
					</section>
				</div>
			</div>

		</div>
	</main>


	<!-- 푸터 -->
	<footer></footer>
	<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
	<script src="${pageContext.request.contextPath}/assets/js/boardList.js"></script>
</body>
</html>