<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	  <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>Document</title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/css/groupWrite.css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/css/summernote/summernote-lite.css" />
</head>
<body>
	<header></header>

	<main class="main">
		<div class="MainWrite">
			<form id="myForm"
				name= "myForm"
				action="#"
				method="post" enctype="multipart/form-data">
			<input type= "hidden" name= "studyGroupNumber" value="${update.getStudyGroupNumber()}"  >
				<!-- 모집 정보 입력 -->
				<section>
					<div class="InfoTitle">
						<span class="WriteNum">1</span>
						<h2 class="WriteText">스터디그룹 기본 정보를 입력해주세요</h2>
					</div>
				
					<ul class="Infolist" data-role="selectBox">  
						<li class="InfoItems"><label class="FeildName">모집 분야</label>
							<div class="InputContainer person">
								<select name="feild" form="myForm" id= "feild">
								
								<c:choose>
								<c:when test="${update.getStudyGroupField() eq '어학'}">
									<option value="">모집분야</option>
									<option value="language" class="fieldOption" selected >어학</option>
									<option value="jobHunting" class="fieldOption">취업</option>
									<option value="government" class="fieldOption">고시/공무원</option>
									<option value="hobby" class="fieldOption">취미/교양</option>
									<option value="programming" class="fieldOption">프로그래밍</option>
									<option value="autonomy" class="fieldOption">자율</option>
									<option value="etc" class="fieldOption">기타</option>	
									</c:when>
									
								<c:when test="${update.getStudyGroupField() eq '취업'}">
									<option value="">모집분야</option>
									<option value="language" class="fieldOption"  >어학</option>
									<option value="jobHunting" class="fieldOption " selected>취업</option>
									<option value="government" class="fieldOption">고시/공무원</option>
									<option value="hobby" class="fieldOption">취미/교양</option>
									<option value="programming" class="fieldOption">프로그래밍</option>
									<option value="autonomy" class="fieldOption">자율</option>
									<option value="etc" class="fieldOption">기타</option>	
									</c:when>
									
							<c:when test="${update.getStudyGroupField() eq '고시/공무원'}">
									<option value="">모집분야</option>
									<option value="language" class="fieldOption" >어학</option>
									<option value="jobHunting" class="fieldOption" >취업</option>
									<option value="government" class="fieldOption" selected>고시/공무원</option>
									<option value="hobby" class="fieldOption">취미/교양</option>
									<option value="programming" class="fieldOption">프로그래밍</option>
									<option value="autonomy" class="fieldOption">자율</option>
									<option value="etc" class="fieldOption">기타</option>	
									</c:when>

								<c:when test="${update.getStudyGroupField() eq '취미/교양'}">
										<option value="">모집분야</option>
									<option value="language" class="fieldOption" >어학</option>
									<option value="jobHunting" class="fieldOption" >취업</option>
									<option value="government" class="fieldOption" >고시/공무원</option>
									<option value="hobby" class="fieldOption" selected>취미/교양</option>
									<option value="programming" class="fieldOption">프로그래밍</option>
									<option value="autonomy" class="fieldOption">자율</option>
									<option value="etc" class="fieldOption">기타</option>	
									</c:when>
									
											<c:when test="${update.getStudyGroupField() eq '프로그래밍'}">
									<option value="">모집분야</option>
									<option value="language" class="fieldOption"  >어학</option>
									<option value="jobHunting" class="fieldOption" >취업</option>
									<option value="government" class="fieldOption">고시/공무원</option>
									<option value="hobby" class="fieldOption">취미/교양</option>
									<option value="programming" class="fieldOption" selected>프로그래밍</option>
									<option value="autonomy" class="fieldOption">자율</option>
									<option value="etc" class="fieldOption">기타</option>	
									</c:when>
									
											<c:when test="${update.getStudyGroupField() eq '자율'}">
									<option value="">모집분야</option>
									<option value="language" class="fieldOption"  >어학</option>
									<option value="jobHunting" class="fieldOption" >취업</option>
									<option value="government" class="fieldOption">고시/공무원</option>
									<option value="hobby" class="fieldOption">취미/교양</option>
									<option value="programming" class="fieldOption">프로그래밍</option>
									<option value="autonomy" class="fieldOption" selected>자율</option>
									<option value="etc" class="fieldOption">기타</option>	
									</c:when>
									
									<c:when test="${update.getStudyGroupField() eq '기타'}">
									<option value="">모집분야</option>
									<option value="language" class="fieldOption"  >어학</option>
									<option value="jobHunting" class="fieldOption" >취업</option>
									<option value="government" class="fieldOption">고시/공무원</option>
									<option value="hobby" class="fieldOption">취미/교양</option>
									<option value="programming" class="fieldOption">프로그래밍</option>
									<option value="autonomy" class="fieldOption">자율</option>
									<option value="etc" class="fieldOption" selected >기타</option>	
									</c:when>
									
									<c:otherwise>
									<option value="">모집분야</option>
									<option value="language" class="fieldOption"  >어학</option>
									<option value="jobHunting" class="fieldOption" >취업</option>
									<option value="government" class="fieldOption">고시/공무원</option>
									<option value="hobby" class="fieldOption">취미/교양</option>
									<option value="programming" class="fieldOption">프로그래밍</option>
									<option value="autonomy" class="fieldOption">자율</option>
									<option value="etc" class="fieldOption" >기타</option>	
									</c:otherwise>
									</c:choose>
								</select>
								</div>
								</li>

						<!-- 모집 인원 -->
						<li class="InfoItems"><label class="FeildName">모집 인원</label>
							<div class="InputContainer person">
								<select name="person" form="myForm" id="person">
								<c:choose>
								<c:when test="${update.getStudyGroupCapacity() eq '1명'}">
									<option value="">희망인원</option>
									<option class="CapacityOption" value="" selected>1명</option>
									<option class="CapacityOption"value="">2명</option>
									<option class="CapacityOption" value="">3명</option>
									<option class="CapacityOption" value="">4명</option>
									<option class="CapacityOption" value="">5명</option>
									<option class="CapacityOption" value="">6명</option>
									<option class="CapacityOption" value="">7명</option>
									<option class="CapacityOption" value="">8명</option>
									<option class="CapacityOption" value="">9명</option>
									<option class="CapacityOption" value="">10명이상</option>
								</c:when>
								
								<c:when test="${update.getStudyGroupCapacity() eq '2명'}">
									<option value="">희망인원</option>
									<option class="CapacityOption" value="">1명</option>
									<option class="CapacityOption"value="" selected>2명</option>
									<option class="CapacityOption" value="">3명</option>
									<option class="CapacityOption" value="">4명</option>
									<option class="CapacityOption" value="">5명</option>
									<option class="CapacityOption" value="">6명</option>
									<option class="CapacityOption" value="">7명</option>
									<option class="CapacityOption" value="">8명</option>
									<option class="CapacityOption" value="">9명</option>
									<option class="CapacityOption" value="">10명이상</option>
								</c:when>
								
								<c:when test="${update.getStudyGroupCapacity() eq '3명'}">
									<option value="">희망인원</option>
									<option class="CapacityOption" value="">1명</option>
									<option class="CapacityOption"value="" >2명</option>
									<option class="CapacityOption" value="" selected>3명</option>
									<option class="CapacityOption" value="">4명</option>
									<option class="CapacityOption" value="">5명</option>
									<option class="CapacityOption" value="">6명</option>
									<option class="CapacityOption" value="">7명</option>
									<option class="CapacityOption" value="">8명</option>
									<option class="CapacityOption" value="">9명</option>
									<option class="CapacityOption" value="">10명이상</option>
								</c:when>
								
								<c:when test="${update.getStudyGroupCapacity() eq '4명'}">
									<option value="">희망인원</option>
									<option class="CapacityOption" value="">1명</option>
									<option class="CapacityOption"value="" >2명</option>
									<option class="CapacityOption" value="">3명</option>
									<option class="CapacityOption" value="" selected>4명</option>
									<option class="CapacityOption" value="">5명</option>
									<option class="CapacityOption" value="">6명</option>
									<option class="CapacityOption" value="">7명</option>
									<option class="CapacityOption" value="">8명</option>
									<option class="CapacityOption" value="">9명</option>
									<option class="CapacityOption" value="">10명이상</option>
								</c:when>
								
								<c:when test="${update.getStudyGroupCapacity() eq '5명'}">
									<option value="">희망인원</option>
									<option class="CapacityOption" value="">1명</option>
									<option class="CapacityOption"value="" >2명</option>
									<option class="CapacityOption" value="">3명</option>
									<option class="CapacityOption" value="">4명</option>
									<option class="CapacityOption" value="" selected>5명</option>
									<option class="CapacityOption" value="">6명</option>
									<option class="CapacityOption" value="">7명</option>
									<option class="CapacityOption" value="">8명</option>
									<option class="CapacityOption" value="">9명</option>
									<option class="CapacityOption" value="">10명이상</option>
								</c:when>
								
								<c:when test="${update.getStudyGroupCapacity() eq '6명'}">
									<option value="">희망인원</option>
									<option class="CapacityOption" value="">1명</option>
									<option class="CapacityOption"value="" >2명</option>
									<option class="CapacityOption" value="">3명</option>
									<option class="CapacityOption" value="">4명</option>
									<option class="CapacityOption" value="">5명</option>
									<option class="CapacityOption" value="" selected>6명</option>
									<option class="CapacityOption" value="">7명</option>
									<option class="CapacityOption" value="">8명</option>
									<option class="CapacityOption" value="">9명</option>
									<option class="CapacityOption" value="">10명이상</option>
								</c:when>
								
								<c:when test="${update.getStudyGroupCapacity() eq '7명'}">
									<option value="">희망인원</option>
									<option class="CapacityOption" value="">1명</option>
									<option class="CapacityOption"value="" >2명</option>
									<option class="CapacityOption" value="">3명</option>
									<option class="CapacityOption" value="">4명</option>
									<option class="CapacityOption" value="">5명</option>
									<option class="CapacityOption" value="">6명</option>
									<option class="CapacityOption" value="" selected>7명</option>
									<option class="CapacityOption" value="">8명</option>
									<option class="CapacityOption" value="">9명</option>
									<option class="CapacityOption" value="">10명이상</option>
								</c:when>
								
								<c:when test="${update.getStudyGroupCapacity() eq '8명'}">
									<option value="">희망인원</option>
									<option class="CapacityOption" value="">1명</option>
									<option class="CapacityOption"value="" >2명</option>
									<option class="CapacityOption" value="">3명</option>
									<option class="CapacityOption" value="">4명</option>
									<option class="CapacityOption" value="">5명</option>
									<option class="CapacityOption" value="">6명</option>
									<option class="CapacityOption" value="">7명</option>
									<option class="CapacityOption" value="" selected>8명</option>
									<option class="CapacityOption" value="">9명</option>
									<option class="CapacityOption" value="">10명이상</option>
								</c:when>
								
								<c:when test="${update.getStudyGroupCapacity() eq '9명'}">
									<option value="">희망인원</option>
									<option class="CapacityOption" value="">1명</option>
									<option class="CapacityOption"value="" >2명</option>
									<option class="CapacityOption" value="">3명</option>
									<option class="CapacityOption" value="">4명</option>
									<option class="CapacityOption" value="">5명</option>
									<option class="CapacityOption" value="">6명</option>
									<option class="CapacityOption" value="">7명</option>
									<option class="CapacityOption" value="">8명</option>
									<option class="CapacityOption" value="" selected>9명</option>
									<option class="CapacityOption" value="">10명이상</option>
								</c:when>
								
								<c:when test="${update.getStudyGroupCapacity() eq '10명이상'}">
									<option value="">희망인원</option>
									<option class="CapacityOption" value="">1명</option>
									<option class="CapacityOption"value="" >2명</option>
									<option class="CapacityOption" value="">3명</option>
									<option class="CapacityOption" value="">4명</option>
									<option class="CapacityOption" value="">5명</option>
									<option class="CapacityOption" value="">6명</option>
									<option class="CapacityOption" value="">7명</option>
									<option class="CapacityOption" value="">8명</option>
									<option class="CapacityOption" value="">9명</option>
									<option class="CapacityOption" value="" selected>10명이상</option>
								</c:when>
								
								<c:otherwise>
								<option value="">희망인원</option>
									<option class="CapacityOption" value="">1명</option>
									<option class="CapacityOption"value="" >2명</option>
									<option class="CapacityOption" value="">3명</option>
									<option class="CapacityOption" value="">4명</option>
									<option class="CapacityOption" value="">5명</option>
									<option class="CapacityOption" value="">6명</option>
									<option class="CapacityOption" value="">7명</option>
									<option class="CapacityOption" value="">8명</option>
									<option class="CapacityOption" value="">9명</option>
									<option class="CapacityOption" value="">10명이상</option>
								</c:otherwise>
								
								</c:choose>
								</select>
							</div></li>
					</ul>
					<ul class="Infolist" data-role="selectBox">
						<li class="InfoItems"><label class="FeildName">진행 방식</label>
							<div class="InputContainer person">
								<select name="online" form="myForm" id = "online">
								
									<c:choose>
									<c:when test="${update.getStudyGroupOnline() eq '온라인'}">
									<option value="">온라인/오프라인</option>
									<option class="OnlineOption" value="" selected>온라인</option>
									<option class="OnlineOption" value="">오프라인</option>
									</c:when>
									
									<c:when test="${update.getStudyGroupOnline() eq '오프라인'}">
									<option value="">온라인/오프라인</option>
									<option class="OnlineOption" value="" >온라인</option>
									<option class="OnlineOption" value="" selected>오프라인</option>
									</c:when>
									
									<c:otherwise>
									<option value="">온라인/오프라인</option>
									<option class="OnlineOption" value="" >온라인</option>
									<option class="OnlineOption" value="">오프라인</option>
									</c:otherwise>
									
									</c:choose>
									
								</select>
							</div></li>


						<li class="InfoItems"><label class="FeildName"> 예상 기간</label>
							<div class="InputContainer person">
								<select name="date" form="myForm" class="date" id= "duration">
								
								<c:choose>
								<c:when test="${update.getStudyGroupDuration() eq '1개월'}">
									<option value="">스터디 기간</option>
									<option class="durationOption"  value="" selected>1개월</option>
									<option class="durationOption" value="">2개월</option>
									<option class="durationOption" value="">3개월</option>
									<option class="durationOption" value="">4개월</option>
									<option class="durationOption" value="">5개월</option>
									<option class="durationOption" value="">6개월</option>
								</c:when>
								
								<c:when test="${update.getStudyGroupDuration() eq '2개월'}">
									<option value="">스터디 기간</option>
									<option class="durationOption"  value="">1개월</option>
									<option class="durationOption" value="" selected>2개월</option>
									<option class="durationOption" value="">3개월</option>
									<option class="durationOption" value="">4개월</option>
									<option class="durationOption" value="">5개월</option>
									<option class="durationOption" value="">6개월</option>
								</c:when>
								
								<c:when test="${update.getStudyGroupDuration() eq '3개월'}">
									<option value="">스터디 기간</option>
									<option class="durationOption"  value="">1개월</option>
									<option class="durationOption" value="" >2개월</option>
									<option class="durationOption" value="" selected>3개월</option>
									<option class="durationOption" value="">4개월</option>
									<option class="durationOption" value="">5개월</option>
									<option class="durationOption" value="">6개월</option>
								</c:when>
								
								<c:when test="${update.getStudyGroupDuration() eq '4개월'}">
									<option value="">스터디 기간</option>
									<option class="durationOption"  value="">1개월</option>
									<option class="durationOption" value="" >2개월</option>
									<option class="durationOption" value="" >3개월</option>
									<option class="durationOption" value="" selected>4개월</option>
									<option class="durationOption" value="">5개월</option>
									<option class="durationOption" value="">6개월</option>
								</c:when>
								
								<c:when test="${update.getStudyGroupDuration() eq '5개월'}">
									<option value="">스터디 기간</option>
									<option class="durationOption"  value="">1개월</option>
									<option class="durationOption" value="" >2개월</option>
									<option class="durationOption" value="" >3개월</option>
									<option class="durationOption" value="">4개월</option>
									<option class="durationOption" value="" selected>5개월</option>
									<option class="durationOption" value="">6개월</option>
								</c:when>
								
								<c:when test="${update.getStudyGroupDuration() eq '6개월'}">
									<option value="">스터디 기간</option>
									<option class="durationOption"  value="">1개월</option>
									<option class="durationOption" value="" >2개월</option>
									<option class="durationOption" value="" >3개월</option>
									<option class="durationOption" value="">4개월</option>
									<option class="durationOption" value="">5개월</option>
									<option class="durationOption" value="" selected>6개월</option>
								</c:when>
								
								
								<c:otherwise>
								<option value="">스터디 기간</option>
									<option class="durationOption"  value="">1개월</option>
									<option class="durationOption" value="" >2개월</option>
									<option class="durationOption" value="" >3개월</option>
									<option class="durationOption" value="">4개월</option>
									<option class="durationOption" value="">5개월</option>
									<option class="durationOption" value="">6개월</option>
								</c:otherwise>
								</c:choose>
									
								</select>
							</div></li>
					</ul>
					<ul class="Infolist" data-role="selectBox">
						<li class="InfoItems"><label class="FeildName">연락 방법</label>
							<div class="InputContainer person">
								<select name="kaka" form="myForm" class= "kaka" id="contact">
								
								<c:choose>
								<c:when test="${update.getStudyGroupContact() eq '카카오톡 오픈 채팅'}">
									<option value="">SNS</option>
									<option class="contactOption" value="" selected>카카오톡 오픈 채팅</option>
									<option class="contactOption" value="">이메일 주소</option>
									<option class="contactOption" value="">구글 폼</option>
								</c:when>
								
								<c:when test="${update.getStudyGroupContact() eq '이메일 주소'}">
									<option value="">SNS</option>
									<option class="contactOption" value="" >카카오톡 오픈 채팅</option>
									<option class="contactOption" value=""selected>이메일 주소</option>
									<option class="contactOption" value="">구글 폼</option>
								</c:when>
								
								<c:when test="${update.getStudyGroupContact() eq '구글 폼'}">
									<option value="">SNS</option>
									<option class="contactOption" value="" >카카오톡 오픈 채팅</option>
									<option class="contactOption" value="">이메일 주소</option>
									<option class="contactOption" value="" selected>구글 폼</option>
								</c:when>
								
								<c:otherwise>
								<option value="">SNS</option>
									<option class="contactOption" value="" >카카오톡 오픈 채팅</option>
									<option class="contactOption" value="">이메일 주소</option>
									<option class="contactOption" value="">구글 폼</option>
								</c:otherwise>
								
								</c:choose>
									
								</select>
							</div>
							<div class="SelfInput">
								<input name="selfText" class="self" placeholder="오픈 채팅 or 이메일 주소 or 구글 폼 주소"
									class="InputTitle" form="myForm" type="text" value="${update.getStudyGroupContactAddress()}" required /> 
							</div></li>

						<!-- 모집 인원 -->
						<li class="InfoItems"><label class="FeildName">모집 마감일</label>
							<div class="InputContainer endDate">
								<div class="selectText">
									<div class="TextFiled" form="myForm">
									
									<c:choose>
									<c:when test="${not empty update}">
										<div class="Text" id="endDateText">
										  <c:out value="${update.getStudyGroupEndDate()}"></c:out>
										</div>
									</c:when>
									<c:otherwise>
										<div class="Text" id="endDateText">모집 마감날짜를 선택하세요</div>
									</c:otherwise>
									</c:choose>
										
									</div>
									<div class="BtnFiled">
										<span></span>
										<div class="underImg">
											<%-- <img
												src="${pageContext.request.contextPath}/assets/css/img/77301412-달력-아이콘.webp"
												alt="아래 화살표"
												style="width: 34px; margin-right: 15px; height: 36px;" /> --%>
										</div>
									</div>
								</div>
								<!--메뉴창 -->
								<div class="selectMenu selectEnd none">
									<!-- 캘린더 넣기 -->
									<div class="selectList cal">
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
								<input type="hidden" id="Data-day" name="date" value="" />
							</div></li>
					</ul>
				</section>

				<!-- 소개글 제목 -->
				<section>
					<div class="InfoTitle">
						<span class="WriteNum">2</span>
						<h2 class="WriteText">스터디 그룹에 대해 소개해주세요</h2>
					</div>
					<!-- 제목 소개 입력 창 -->
					<section>
						<label class="TitleText" for="input">제목</label> <input
							class="InputTitle" name="titleInput"
              placeholder="글 제목을 입력해주세요" form="myForm"
							type="text" value="${update.getStudyGroupTitle()}" /> 
						<div class="summarnote">
							<textarea name="summernote" id="summernote" class="form-control"
								rows="5" maxlength="1000" required form="myForm">
								<c:out value="${update.getStudyGroupcontent()} "></c:out>
								</textarea>
						</div>
					</section>

					<!-- 글등록 취소 -->
					<section class="WriteBtn">
						<button class="cancelButton"  type= "button">취소</button>
						<button class="RegisterButton" type="button" >수정 완료</button>
					</section>
				</section>
			</form>
		</div>
	</main>
	<footer></footer>
	
	
	<script
	src="${pageContext.request.contextPath}/assets/js/summernote-lite.js"
	defer></script>
	<script
	src="${pageContext.request.contextPath}/assets/js/summernote/summernote-ko-KR.js"
	defer></script>
	<script src="https://code.jquery.com/jquery-3.6.3.js"
		integrity="sha256-nQLuAZGRRcILA+6dMBOvcRh5Pe310sBpanc6+QBmyVM="
		crossorigin="anonymous"></script>
	<script
		src="${pageContext.request.contextPath}/assets/js/groupWrite.js"></script>
</body>
</html>
