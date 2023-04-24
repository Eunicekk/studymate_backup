

let $li = $(".location");
let font = document.querySelector(".fontColor");

$li.click(() => {
	$(".locationList").toggleClass("none");
});

let $person = $(".personnel");

$person.click(() => {
	$(".locationList").toggleClass("person_none");
});

let $cal = $(".calendal");

$cal.click(() => {
	$(".locationList").toggleClass("none");
});

let $prev = $(".go-prev");

$prev.click(() => {
	$(".locationList").toggleClass("none");
});

let $next = $(".go-next");

$next.click(() => {
	$(".locationList").toggleClass("none");
});

let $onoff = $(".onoff");

$onoff.click(() => {
	$(".selectOnOff").toggleClass("none");
});

let $filed = $(".filed");

$filed.click(() => {
	$(".selectFiled").toggleClass("none");
});


// 켈린더
$(document).ready(function() {
	calendarInit();
});



// 글쓰기 페이지로 이동 
 $('.newWriteBtn').on('click', ()=> {
	   window.location.href = '/studyGroup/studyGroupWrite.sg';
});


let $latest = $('#latest');
let $viewCount = $('#viewCount');
let $interest = $('#interest');
let $commentCount = $('#commentCount');


var sort = 1;
var page = 1;

var total = $('.studygroup-count').val();
var rowCount = 20;
var pageCount = 5;
var startRow = (parseInt(page) - 1) * rowCount;
var endPage = parseInt(Math.ceil(parseInt(page) / parseFloat(pageCount)) * pageCount);
var startPage = endPage - (pageCount - 1);
var realEndPage = parseInt(Math.ceil(total / parseFloat(rowCount)));
var endPage = endPage > realEndPage ? realEndPage : endPage;
let $mainContain = $('.mainContainer2');



var a = $('#order').children();




// 최신순(기본정렬) 조회순 좋아요순 댓글순 정렬
var a = $('#order option');
/*console.log(a); */

$('#order').on('change', function () {
	var selectOption = $(this).val();
	
	console.log('=========== select option');
	console.log(selectOption);
	console.log('========== select option');
	/*console.log( $('#order option').eq(0));*/
		$.ajax({
			url: "/studyGroup/studyGroupOrderOk.sg",//호출 URL을 설정한다. GET방식일경우 뒤에 파라티터를 붙여서 사용해도된다.
			type: "GET", //전송방식을 지정한다 (POST,GET)
			dataType: "json",//호출한 페이지의 형식이다. xml,json,html,text등의 여러 방식을 사용할 수 있다.
			data : {order : selectOption },
			error: function() {
				alert("통신실패!!!!");
			},
			success: showOrder 
		});
		
		function showOrder (orderContents) {
			console.log(orderContents);
			let text= '';
			/* orderContents가 각각 VO 하나씩을 담고 있고, 
			자바스크립트 객체로 담고 있음. 그거 리스트이고 내가 gson 으로 가져왔잖아. 
			일단 list 형태임. 그걸 group이라는 이름으로 가져와서 forEach 로 뿌리겠다. 
			orderContent 하나하나가 group. 즉 studyGroupVO  
			그 안에서 변수를 가져오겠다. 자바 스크립트 문법으로 가져와야 함. 
			 */
			orderContents.forEach(group => {
				text +=`
				<a href="${location.origin}/studyGroup/studyGroupReadOk.sg?studyGroupNumber=${group.studyGroupNumber}" class="studyOpen">
				 <li>
                <div class="badge">
                  <div class="badgeFiled">
                    <!-- 모집 분야 받아와서 넣어주기 -->
                    <div class="onoffOptions">${group.studyGroupOnline}</div>
                    <div class="badgeFiledName">${group.studyGroupField}</div>
                  </div>
                </div>


                <!-- 마감일 -->
                <div class="endDate">
                  <p class="endDateText">모집 마감 |</p>
                  <!-- 날짜 받아오기 -->
                  <p>${group.studyGroupStartDate}</p>
                </div>

                <!-- 이름 -->
                <h1 class="groupTitle">${group.studyGroupTitle}</h1>
                <ul class="positionList">
                  <!-- 분야 넣어주기 -->
                  <li class="positionItem">백엔드</li>
                  <li class="positionItem">데이터베이스</li>
                </ul>

                <div class="studyBorder"></div>

                <section class="ReadReviewCnt">
                  <div class="userInfo">
                    <div class="userImg">
                      <img src="${location.origin}/assets/img/인공지능팩토리_2022-06-20_15-25-27.png" alt="유저 프로필사진">
                    </div>
                    <div>${group.memberNickname}</div>
                  </div>

                  <div class="ReadReview">
                    <div class="replyCnt">
                      <img src="${location.origin}/assets/img/icon-search-input.svg"
                       alt="조회수 이미지"
                       style="width: 10px;">
                       <p>${group.studyGroupReadCount}</p>
                    </div>
                    <div class="replyCnt">
                      <img src="${location.origin}/assets/img/icn-chat-filled-lightgray.d59bfd98.svg"
                       alt="댓글 이미지">
                       <p>${group.studyGroupCommentCount}</p>
                    </div>
                    
                    <!-- 좋아요 -->
                    <div class="groupLikeItems" > 
                    <input type="hidden" class= "like-study-group-number" >
                    <input type="hidden" class= "like-member-number" value= "${group.memberNumber}" >
          		     <button class= "groupLikeButton" data-study-group-number= "${group.studyGroupNumber}">
                   	<img alt="" src="https://cdn-icons-png.flaticon.com/512/1077/1077035.png" class="groupLikeImg" >
                   	<p>${group.studyGroupLikeCount}</p>
                    </button> 
                     </div>
                    
                  </div>
                  
                </section>
         
              
              </li>
				</a>
				 `
			
			});
		
				
				$('.spaceList').html(text);
				
			}
	
});


// 페이징 처리 

/*$('.pageNumber').on('click', ".pageBtn", function() {
	page = $(this).text.trim();
	
			if(sort == 1){
		$.ajax({
			type: "GET", //전송방식을 지정한다 (POST,GET)
			url: "/studyGroup/studyGroupMainOk.sg?page=" + $(this).text().trim(), //호출 URL을 설정한다. GET방식일경우 뒤에 파라티터를 붙여서 사용해도된다.
			dataType: "json",//호출한 페이지의 형식이다. xml,json,html,text등의 여러 방식을 사용할 수 있다.
			error: function() {
				alert("통신실패!!!!");
			},
			success: function(Parse_data) {
				var e = $(Parse_data).find('.spaceList');
				$(".spaceList").html(e);
				 $('#order option').eq(0).prop("selected", true);
			}
		});
	} else if (sort == 2) {
		$.ajax({
			type: "GET", //전송방식을 지정한다 (POST,GET)
			url: "/studyGroup/studyGroupMainOk.sg?order=new&page=" + $(this).text().trim(),//호출 URL을 설정한다. GET방식일경우 뒤에 파라티터를 붙여서 사용해도된다.
			dataType: "text",//호출한 페이지의 형식이다. xml,json,html,text등의 여러 방식을 사용할 수 있다.
			error: function() {
				alert("통신실패!!!!");
			},
			success: function(Parse_data) {
				var e = $(Parse_data).find('.spaceList');
				$(".spaceList").html(e);
				 $('#order option').eq(1).prop("selected", true);
				page = 1;
			}
		});
	} else if (sort == 3) {
		$.ajax({
			type: "GET", //전송방식을 지정한다 (POST,GET)
			url: "/studyGroup/studyGroupMainOk.sg?order=like&page=" + $(this).text().trim(),//호출 URL을 설정한다. GET방식일경우 뒤에 파라티터를 붙여서 사용해도된다.
			dataType: "text",//호출한 페이지의 형식이다. xml,json,html,text등의 여러 방식을 사용할 수 있다.
			error: function() {
				alert("통신실패!!!!");
			},
			success: function(Parse_data) {
				var e = $(Parse_data).find('.spaceList');
				$(".spaceList").html(e);
				 $('#order option').eq(2).prop("selected", true);
			}
		});
	} else if (sort == 4) {
		$.ajax({
			type: "GET", //전송방식을 지정한다 (POST,GET)
			url: "/studyGroup/studyGroupMainOk.sg?order=read&page=" + $(this).text().trim(),//호출 URL을 설정한다. GET방식일경우 뒤에 파라티터를 붙여서 사용해도된다.
			dataType: "text",//호출한 페이지의 형식이다. xml,json,html,text등의 여러 방식을 사용할 수 있다.
			error: function() {
				alert("통신실패!!!!");
			},
			success: function(Parse_data) {
				var e = $(Parse_data).find('.spaceList');
				$(".spaceList").html(e);
				 $('#order option').eq(3).prop("selected", true);
			}
		});
	}
})

$('.pageNumber').on('click', ".prev", function() {
	page = $(this).text.trim(); 
	
	if(sort == 1) {
		$.ajax({
			type: "GET", //전송방식을 지정한다 (POST,GET)
			url: "/studyGroup/studyGroupMainOk.sg?page=" + (startPage), //호출 URL을 설정한다. GET방식일경우 뒤에 파라티터를 붙여서 사용해도된다.
			dataType: "json",//호출한 페이지의 형식이다. xml,json,html,text등의 여러 방식을 사용할 수 있다.
			error: function() {
				alert("통신실패!!!!");
			},
			success: function(Parse_data) {
					var e = $(Parse_data).find('.spaceList');
				$(".spaceList").html(e);
				 $('#order option').eq(0).prop("selected", true);
			}
			
		});
	} else if (sort == 2) {
		$.ajax({
			type: "GET", //전송방식을 지정한다 (POST,GET)
			url: "/studyGroup/studyGroupMainOk.sg?order=new&page=" + (startPage),//호출 URL을 설정한다. GET방식일경우 뒤에 파라티터를 붙여서 사용해도된다.
			dataType: "text",//호출한 페이지의 형식이다. xml,json,html,text등의 여러 방식을 사용할 수 있다.
			error: function() {
				alert("통신실패!!!!");
			},
			success: function(Parse_data) {
						var e = $(Parse_data).find('.spaceList');
				$(".spaceList").html(e);
				 $('#order option').eq(1).prop("selected", true);
			page = 1;
			}
		});
	} else if (sort == 3) {
		
	$.ajax({
			type: "GET", //전송방식을 지정한다 (POST,GET)
			url: "/studyGroup/studyGroupMainOk.sg?order=like&page=" + (startPage),//호출 URL을 설정한다. GET방식일경우 뒤에 파라티터를 붙여서 사용해도된다.
			dataType: "text",//호출한 페이지의 형식이다. xml,json,html,text등의 여러 방식을 사용할 수 있다.
			error: function() {
				alert("통신실패!!!!");
			},
			success: function(Parse_data) {
						var e = $(Parse_data).find('.spaceList');
				$(".spaceList").html(e);
				 $('#order option').eq(2).prop("selected", true);
			}
		});
	} else if (sort == 4) {
		$.ajax({
			type: "GET", //전송방식을 지정한다 (POST,GET)
			url: "/studyGroup/studyGroupMainOk.sg?order=read&page=" + (startPage),//호출 URL을 설정한다. GET방식일경우 뒤에 파라티터를 붙여서 사용해도된다.
			dataType: "text",//호출한 페이지의 형식이다. xml,json,html,text등의 여러 방식을 사용할 수 있다.
			error: function() {
				alert("통신실패!!!!");
			},
			success: function(Parse_data) {
				var e = $(Parse_data).find('.spaceList');
				$(".spaceList").html(e);
				 $('#order option').eq(2).prop("selected", true);
			}
		});
	}
})


$('.pageNumber').on('click', ".next", function(){
	page = $(this).text.trim();
	
	if(sort == 1){
		$.ajax({
			type: "GET", //전송방식을 지정한다 (POST,GET)
			url: "/studyGroup/studyGroupMainOk.sg?page=" + (endPage + 3), //호출 URL을 설정한다. GET방식일경우 뒤에 파라티터를 붙여서 사용해도된다.
			dataType: "json",//호출한 페이지의 형식이다. xml,json,html,text등의 여러 방식을 사용할 수 있다.
			error: function() {
				alert("통신실패!!!!");
			},
			success: function(Parse_data) {
			var e = $(Parse_data).find('.spaceList');
				$(".spaceList").html(e);
				 $('#order option').eq(0).prop("selected", true);
			}
		});
	} else if (sort == 2) {
		$.ajax({
			type: "GET", //전송방식을 지정한다 (POST,GET)
			url: "/studyGroup/studyGroupMainOk.sg?order=new&page=" + $(this).text().trim(),//호출 URL을 설정한다. GET방식일경우 뒤에 파라티터를 붙여서 사용해도된다.
			dataType: "text",//호출한 페이지의 형식이다. xml,json,html,text등의 여러 방식을 사용할 수 있다.
			error: function() {
				alert("통신실패!!!!");
			},
			success: function(Parse_data) {
				var e = $(Parse_data).find('.spaceList');
				$(".spaceList").html(e);
				 $('#order option').eq(1).prop("selected", true);
				page = 1;
			}
		});
	} else if (sort == 3) {
		$.ajax({
			type: "GET", //전송방식을 지정한다 (POST,GET)
			url:  "/studyGroup/studyGroupMainOk.sg?order=like&page=" + $(this).text().trim(),//호출 URL을 설정한다. GET방식일경우 뒤에 파라티터를 붙여서 사용해도된다.
			dataType: "text",//호출한 페이지의 형식이다. xml,json,html,text등의 여러 방식을 사용할 수 있다.
			error: function() {
				alert("통신실패!!!!");
			},
			success: function(Parse_data) {
				var e = $(Parse_data).find('.spaceList');
				$(".spaceList").html(e);
				 $('#order option').eq(2).prop("selected", true);
			}
		});
	}  else if (sort == 4) {
		$.ajax({
			type: "GET", //전송방식을 지정한다 (POST,GET)
			url: "/studyGroup/studyGroupMainOk.sg?order=read&page=" + $(this).text().trim(),//호출 URL을 설정한다. GET방식일경우 뒤에 파라티터를 붙여서 사용해도된다.
			dataType: "text",//호출한 페이지의 형식이다. xml,json,html,text등의 여러 방식을 사용할 수 있다.
			error: function() {
				alert("통신실패!!!!");
			},
			success: function(Parse_data) {
			var e = $(Parse_data).find('.spaceList');
				$(".spaceList").html(e);
				 $('#order option').eq(3).prop("selected", true);
			}
		});
	}
	
	
})
*/


// 좋아요 기능 
//$('.groupLikeImg').on('click', function(event) {
$('.spaceList').on('click', '.groupLikeImg', function(event) {
	event.preventDefault();
	let target = this;
	let studyGroupNumber = $(this).closest(".groupLikeItems").find('.groupLikeButton').data('study-group-number');
	console.log(target);

	/*	let memberNumber = $memberNumber ; 
		console.log(memberNumber);*/
console.log('===============');
console.log($(target).closest('.groupLikeItems').find('p'));

	$.ajax({
		url: '/memberLikeStudyGroup/memberLikeStudyGroupUpdateOk.mlsg',
		type: 'get',
		data: {
			studyGroupNumber: studyGroupNumber
		},
		dataType : 'text',
		success: function(resp) {
			updateGroupLikeCount (studyGroupNumber, target) ;
			console.log("=======================");
			console.log(resp);
			if (resp == 0) {
				$(target).attr('src', "https://cdn-icons-png.flaticon.com/512/1076/1076984.png");
			} else {
				$(target).attr('src', "https://cdn-icons-png.flaticon.com/512/1077/1077035.png");
				/*$(target).css('opacity', '0.2');*/
			}

		},
		error : function(a,b,c){
			console.log('error!!!');
			console.error(c);
		}

	});
});



function updateGroupLikeCount (studyGroupNumber, target) {
	  $.ajax({
	  url: '/memberLikeStudyGroup/memberLikeStudyGroupOk.mlsg',
	  type: "POST",
	  data: {
		 studyGroupNumber: studyGroupNumber
	  },
	  success : function (count) {
		 console.log($(target).closest('.groupLikeItems').find('p'));
	$(target).closest('.groupLikeItems').find('p').html(count);
	  }
});

}


var searchInput = $("#searchInput").val();





// 검색 기능 
$('#search').submit(function(event){
	event.preventDefault();
	var searchInput = $("#searchInput").val();
	console.log(searchInput);
	
	$.ajax({
		type: "GET",
		url: "/studyGroup/studyGroupSearchOk.sg",
		data: { searchInput : searchInput
				},
		error: function() {
				alert("통신실패!!!!");
			},
		success: searchShow
	})


		function searchShow (searchContents) {
				let text= '';
				console.log(searchContents);
			searchContents.forEach(search => {
				text +=`
				<a href="${location.origin}/studyGroup/studyGroupReadOk.sg?studyGroupNumber=${search.studyGroupNumber}" class="studyOpen">
				 <li>
                <div class="badge">
                  <div class="badgeFiled">
                    <!-- 모집 분야 받아와서 넣어주기 -->
                    <div class="onoffOptions">${search.studyGroupOnline}</div>
                    <div class="badgeFiledName">${search.studyGroupField}</div>
                  </div>
                </div>


                <!-- 마감일 -->
                <div class="endDate">
                  <p class="endDateText">모집 마감 |</p>
                  <!-- 날짜 받아오기 -->
                  <p>${search.studyGroupStartDate}</p>
                </div>

                <!-- 이름 -->
                <h1 class="groupTitle">${search.studyGroupTitle}</h1>
                <ul class="positionList">
                  <!-- 분야 넣어주기 -->
                  <li class="positionItem">백엔드</li>
                  <li class="positionItem">데이터베이스</li>
                </ul>

                <div class="studyBorder"></div>

                <section class="ReadReviewCnt">
                  <div class="userInfo">
                    <div class="userImg">
                      <img src="${location.origin}/assets/img/인공지능팩토리_2022-06-20_15-25-27.png" alt="유저 프로필사진">
                    </div>
                    <div>${search.memberNickname}</div>
                  </div>

                  <div class="ReadReview">
                    <div class="replyCnt">
                      <img src="${location.origin}/assets/img/icon-search-input.svg"
                       alt="조회수 이미지"
                       style="width: 10px;">
                       <p>${search.studyGroupReadCount}</p>
                    </div>
                    <div class="replyCnt">
                      <img src="${location.origin}/assets/img/icn-chat-filled-lightgray.d59bfd98.svg"
                       alt="댓글 이미지">
                       <p>${search.studyGroupCommentCount}</p>
                    </div>
                    
                    <!-- 좋아요 -->
                    <div class="groupLikeItems" > 
                    <input type="hidden" class= "like-study-group-number" >
                    <input type="hidden" class= "like-member-number" value= "${search.memberNumber}" >
          		     <button class= "groupLikeButton" data-study-group-number= "${search.studyGroupNumber}">
                   	<img alt="" src="https://cdn-icons-png.flaticon.com/512/1077/1077035.png" class="groupLikeImg" >
                   	<p>${search.studyGroupLikeCount}</p>
                    </button> 
                     </div>
                    
                  </div>
                  
                </section>
         
              
              </li>
				</a>
				 `
			});
			
		$('.spaceList').html(text);
			
		}
})




// 클릭 버튼 에 이벤트 주고, ajax를 거기에만 걸어주면 된다 텍스트 안불러와도 됨. 이미 화면에 있으니까 그냥 클릭 이벤트만 주고, 
// 전송하고 설공하면, 화면에 전체 개수를 뿌려주면 됨. 그게 다입니다ㅏㅏㅏㅏ
// 매개 변수 받고 반환을 받아서 텍스트 꽂아주는게 success 에 들어갈 내용. 




/*
	달력 렌더링 할 때 필요한 정보 목록 

	현재 월(초기값 : 현재 시간)
	금월 마지막일 날짜와 요일
	전월 마지막일 날짜와 요일
*/

function calendarInit() {
	// 날짜 정보 가져오기
	var date = new Date(); // 현재 날짜(로컬 기준) 가져오기
	var utc = date.getTime() + date.getTimezoneOffset() * 60 * 1000; // uct 표준시 도출
	var kstGap = 9 * 60 * 60 * 1000; // 한국 kst 기준시간 더하기
	var today = new Date(utc + kstGap); // 한국 시간으로 date 객체 만들기(오늘)

	var thisMonth = new Date(
		today.getFullYear(),
		today.getMonth(),
		today.getDate()
	);
	// 달력에서 표기하는 날짜 객체

	var currentYear = thisMonth.getFullYear(); // 달력에서 표기하는 연
	var currentMonth = thisMonth.getMonth(); // 달력에서 표기하는 월
	var currentDate = thisMonth.getDate(); // 달력에서 표기하는 일

	// kst 기준 현재시간
	// console.log(thisMonth);

	// 캘린더 렌더링
	renderCalender(thisMonth);

	function renderCalender(thisMonth) {
		// 렌더링을 위한 데이터 정리
		currentYear = thisMonth.getFullYear();
		currentMonth = thisMonth.getMonth();
		currentDate = thisMonth.getDate();

		// 이전 달의 마지막 날 날짜와 요일 구하기
		var startDay = new Date(currentYear, currentMonth, 0);
		var prevDate = startDay.getDate();
		var prevDay = startDay.getDay();

		// 이번 달의 마지막날 날짜와 요일 구하기
		var endDay = new Date(currentYear, currentMonth + 1, 0);
		var nextDate = endDay.getDate();
		var nextDay = endDay.getDay();

		// console.log(prevDate, prevDay, nextDate, nextDay);

		// 현재 월 표기
		$(".year-month").text(currentYear + "-" + (currentMonth + 1));

		// 렌더링 html 요소 생성
		calendar = document.querySelector(".dates");
		calendar.innerHTML = "";

		// 지난달
		for (var i = prevDate - prevDay + 1; i <= prevDate; i++) {
			calendar.innerHTML =
				calendar.innerHTML + '<div class="day prev disable">' + i + "</div>";
		}
		// 이번달
		for (var i = 1; i <= nextDate; i++) {
			calendar.innerHTML =
				calendar.innerHTML + '<div class="day current">' + i + "</div>";
		}
		// 다음달
		for (var i = 1; i <= (7 - nextDay == 7 ? 0 : 7 - nextDay); i++) {
			calendar.innerHTML =
				calendar.innerHTML + '<div class="day next disable">' + i + "</div>";
		}

		// 오늘 날짜 표기
		if (today.getMonth() == currentMonth) {
			todayDate = today.getDate();
			var currentMonthDate = document.querySelectorAll(".dates .current");
			currentMonthDate[todayDate - 1].classList.add("today");
		}
	}

	// 이전달로 이동
	$(".go-prev").on("click", function() {
		thisMonth = new Date(currentYear, currentMonth - 1, 1);
		renderCalender(thisMonth);
	});

	// 다음달로 이동
	$(".go-next").on("click", function() {
		thisMonth = new Date(currentYear, currentMonth + 1, 1);
		renderCalender(thisMonth);
	});
}

$(".dates").on("click", ".current", function(event) {
	event.preventDefault();
	let year = $(".year-month").text();
	//let day = $(this).index() - 4;
	let day = $(this).text();
	console.log(day);
	console.log("=======날짜ㅏㅏㅏㅏ");
	$(".cal").text(year + "-" + day);
});

// 검색 기능
/*$(document).ready(function() {
	$("#searchInput").on("keyup", function() {
		var value = $(this).val().toLowerCase();
		// 클래스로 어디 검색 할지 정할수있다.
//		$(".studyOpen").filter(function() {
			$(this).toggle($(this).text().toLowerCase().indexOf(value) > -1);
		});
	});
});*/

// 셀렉트 기능
function onClickOption(e) {
	const selectedValue = e.currentTarget.innerHTML;
	document.querySelector(".Text").innerHTML = selectedValue;
}

function onClickFiled(e) {
	const OptionValue = e.target.innerHTML;
	document.querySelector(".Text_filed").innerHTML = OptionValue;
}

// 온오프라인 
let optionList = document.querySelectorAll(".selectOption");
for (let i = 0; i < optionList.length; i++) {
	let option = optionList[i];
	option.addEventListener("click", onClickOption);
}
$(".filed").on("click", function() {
	let filedList = document.querySelectorAll(".Option");
	for (let i = 0; i < filedList.length; i++) {
		let filed = filedList[i];
		console.log(filed);
		filed.addEventListener("click", onClickFiled);
}
});


// 셀렉트 선택된 값으로 검색

// 세개를 한번에 넘겨서 


$(document).ready(function() {
	$(".selectOption").on("click", function() {
	event.preventDefault();
		var studyGroupOnline = $(this).text();
		var studyGroupField = $(".Text_filed").text().trim();
		var studyGroupStartDate =$(".cal").text().trim();
	console.log(studyGroupOnline);
	console.log(studyGroupField);
	console.log(studyGroupStartDate);
		searchAjax(studyGroupOnline, studyGroupField, studyGroupStartDate);
	
	});
});

$(document).ready(function() {
	$(".Option").on("click", function() {
	event.preventDefault();
		var studyGroupOnline = $(".Text").text().trim();
		var studyGroupField = $(this).text();
		var studyGroupStartDate =$(".cal").text().trim();
	console.log(studyGroupOnline);
	console.log(studyGroupField);
	console.log(studyGroupStartDate);
		searchAjax(studyGroupOnline, studyGroupField, studyGroupStartDate);
		
		// 클래스로 어디 검색 할지 정할수있다.
		/*$(".studyOpen").filter(function() {
			$(this).toggle($(this).text().toLowerCase().indexOf(selectField) > -1);
		});*/
	});

});

//let calButton = $(".current").closest(".filterlist").find(".cal");
let calButton = $(".cal").text();
console.log(calButton);
console.log("=== cal butoton");

$(document).ready(function() {
	$(".dates").on("click",'.current' ,function () {
		event.preventDefault();
		var studyGroupOnline = $(".Text").text().trim();
		var studyGroupField = $(".Text_filed").text().trim();
		var studyGroupStartDate = ($(".year-month").text() + '-' +$(this).html());
		//var studyGroupStartDate = $(this).text();
		
//		var studyGroupStartDate = $(".cal").html();
	console.log(studyGroupOnline);
	console.log(studyGroupField);
	console.log(studyGroupStartDate);
		searchAjax(studyGroupOnline, studyGroupField, studyGroupStartDate);
	})
})

function searchAjax(studyGroupOnline, studyGroupField, studyGroupStartDate){
	if (studyGroupOnline == "진행 방식") {
	studyGroupOnline ="";	
	}
		if (studyGroupField == "모집 분야") {
	studyGroupField ="";	
	}
		if (studyGroupStartDate == "모집기간") {
	studyGroupStartDate ="";	
	}
	
	
	let data = {
		studyGroupOnline : studyGroupOnline,
		studyGroupField : studyGroupField, 
		studyGroupStartDate : studyGroupStartDate
	};
	
	$.ajax({
		url : '/studyGroup/studyGroupOptionSearchOk.sg',
		type : 'get',
		data : data,
		error: function() {
				alert("통신실패!!!!");
			}, success : showResult
	});
}
			 function showResult (result) {
				alert("통신가능");
				console.log(result);
				let text = '';
				
				result.forEach(search => {
					text +=`
					<a href="${location.origin}/studyGroup/studyGroupReadOk.sg?studyGroupNumber=${search.studyGroupNumber}" class="studyOpen"> 
              <li>
                <div class="badge">
                  <div class="badgeFiled">
                    <!-- 모집 분야 받아와서 넣어주기 -->
                    <div class="onoffOptions">${search.studyGroupOnline}</div>
                    <div class="badgeFiledName">${search.studyGroupField}</div>
                  </div>
                </div>

                <!-- 마감일 -->
                <div class="endDate">
                  <p class="endDateText">모집 마감 |</p>
                  <!-- 날짜 받아오기 -->
                  <p>${search.studyGroupStartDate}</p>
                </div>

                <!-- 이름 -->
                <h1 class="groupTitle">${search.studyGroupTitle}</h1>
                <ul class="positionList">
                  <!-- 분야 넣어주기 -->
                  <li class="positionItem">백엔드</li>
                  <li class="positionItem">데이터베이스</li>
                </ul>

                <div class="studyBorder"></div>

                <section class="ReadReviewCnt">
                  <div class="userInfo">
                    <div class="userImg">
                      <img src="${location.origin}/assets/img/인공지능팩토리_2022-06-20_15-25-27.png" alt="유저 프로필사진">
                    </div>
                    <!-- ${search.memberId} -->
                    <div>${search.memberNickname}</div>
                  </div>

                  <div class="ReadReview">
                    <div class="replyCnt">
                      <img src="${location.origin}/assets/img/icon-search-input.svg"
                       alt="조회수 이미지"
                       style="width: 10px;">
                       <p>${search.studyGroupReadCount}</p>
                    </div>
                    <div class="replyCnt">
                      <img src="${location.origin}/assets/img/icn-chat-filled-lightgray.d59bfd98.svg"
                       alt="댓글 이미지">
                       <p>${search.studyGroupCommentCount}</p>
                    </div>
                    
                    <!-- 좋아요 -->
                    <div class="groupLikeItems" > 
                    <input type="hidden" class= "like-study-group-number" >
                    <input type="hidden" class= "like-member-number" value= "${search.memberNumber}" >
          		     <button class= "groupLikeButton" data-study-group-number= "${search.getStudyGroupNumber}">
                   	<img alt="" src="https://cdn-icons-png.flaticon.com/512/1077/1077035.png" class="groupLikeImg" >
                   	<p>${search.studyGroupLikeCount}</p>
                    </button> 
                     </div>
                  </div>
                </section>   
              </li>
            </a>
					`
					
				})
					$('.spaceList').html(text);
			}

// /////////////////////////////////////////


