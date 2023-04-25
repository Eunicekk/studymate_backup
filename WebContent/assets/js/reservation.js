$(document).ready(function() {
	calendarInit();
});
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

let $reservaion = $(".ReserBtn");
let $close = $(".CloseBox > Button");

$reservaion.click(() => {
	$(".ReserveFormContent").toggleClass("none");
});

$close.click(() => {
	$(".ReserveFormContent").toggleClass("none");
});

let $list = $(".replyFilter > Button");

$list.click(() => {
	$(".menuList").toggleClass("none");
});

$(".dates").on("click", ".current", function(event) {
	event.preventDefault();
	let year = $(".year-month").text();
	let day = $(this).index() - 1;
	$(".cal").text(year + "-" + day);
	$(".calInput").text(year + "-" + day);
	$('.calInput').val(year + "-" + day);
});

// 예약 모달창
let $cal = $(".calendal");

$cal.click(() => {
	$(".calMain").toggleClass("cal_none");
});

$(".calMain").on("click", function() {
	$(".calMain").toggleClass("cal_none");
});

//예약 시간

let $time = $(".timeContainer");

$time.click(() => {
	$(".TimeContainer").toggleClass("time_none");
});

$(".TimeContainer").on("click", function() {
	$(".TimeContainer").toggleClass("time_none");
});

timer = document.querySelector("#time");
timer.innerHTML = "";

// 시간 칸 출력
for (let i = 0; i <= 24; i++) {
	timer.innerHTML =
		timer.innerHTML +
		'<div class="swiper-slider time-swiper-slide time-swiper-group-buying" data-number="'+i+':00">' +
		"<span>" + hourPrice + "</span>" +
		'<span class="time-swiper-time">' +
		i +
		":00</span>" +
		"</div>";
}

// 슬라이드
let $swiperBox = $(".Timeslider > .swiper .swiper-wrapper");

let currentIdx = 0;

let slideWidth = 71;

checkEnd();

$(".slider-next").on("click", function() {
	currentIdx++;
	$swiperBox.css("left", -(currentIdx * slideWidth));
	$swiperBox.css("transition", "0.5s ease");
	checkEnd();
});

$(".slider-prev").on("click", function() {
	currentIdx--;
	$swiperBox.css("left", -(currentIdx * slideWidth));
	$swiperBox.css("transition", "0.5s ease");
	checkEnd();
});

function checkEnd() {
	if (currentIdx <= 0) {
		$(".sliderPrev").css("display", "none");
	} else {
		$(".sliderPrev").css("display", "block");
	}

	if (currentIdx >= 18) {
		$(".sliderNext").css("display", "none");
	} else {
		$(".sliderNext").css("display", "block");
	}
}

let arr = [];
//시간 보내주기
let clickCount = 0;
$("#time").on("click", ".swiper-slider", function(event) {
	// event.preventDefault();
	//arr.push($(this).index());
	console.log('------------------------------------------');
	console.log($(this).data('number'));
	console.log('------------------------------------------');
	clickCount++;
	console.log(clickCount);
	if(clickCount==1){
		$(".timeText").text(
			$(this).data('number')
		)
		$(".timeInput").text(
			$(this).data('number')
		)
	}else{
		$(".endText").text(
			$(this).data('number')
		)
		$(".endInput").text(
			$(this).data('number')
		)
	}
});

// 상세설명
const nonClick = document.querySelectorAll(".TabPanelList > li");

function PanelClick(event) {
	// div에서 모든 "click" 클래스 제거
	nonClick.forEach((e) => {
		e.classList.remove("changeColor");
	});
	// 클릭한 div만 "click"클래스 추가
	event.target.classList.add("changeColor");
}

nonClick.forEach((e) => {
	e.addEventListener("click", PanelClick);
});

let scrollY = window.scrollY;
console.log(scrollY);

$(".blurTab").on("click", function() {
	window.scrollTo(0, 775);
});

$(".review").on("click", function() {
	window.scrollTo(0, 1882);
});

$(".caution").on("click", function() {
	window.scrollTo(0, 2320);
});

var mapContainer = document.getElementById("map"), // 지도를 표시할 div
	mapOption = {
		center: new kakao.maps.LatLng(33.450701, 126.570667), // 지도의 중심좌표
		level: 3, // 지도의 확대 레벨
	};

// 지도를 생성합니다
var map = new kakao.maps.Map(mapContainer, mapOption);

// 주소-좌표 변환 객체를 생성합니다
var geocoder = new kakao.maps.services.Geocoder();

// 주소로 좌표를 검색합니다
// $(".address > p").text()
console.log($("#cafe-address").text());
geocoder.addressSearch($("#cafe-address").text(), function(result, status) {
	// 정상적으로 검색이 완료됐으면
	if (status === kakao.maps.services.Status.OK) {
		var coords = new kakao.maps.LatLng(result[0].y, result[0].x);

		// 결과값으로 받은 위치를 마커로 표시합니다
		var marker = new kakao.maps.Marker({
			map: map,
			position: coords,
		});

		// infowindow 장소에 대한 설명을 표시합니다
		var infowindow = new kakao.maps.InfoWindow({
			content:
				'<div style="width:150px; text-align:center; padding:6px 0; font-weight: 700;">' + $('.studyCafeTitle').text() + '</div>',
		});
		infowindow.open(map, marker);

		// 지도의 중심을 결과값으로 받은 위치로 이동시킵니다
		map.setCenter(coords);
	}
});

// 이미지 넘기기 버튼 클릭 시 이미지 슬라이드
var count = 0;
let $width = 683;
let $swipeContainer = $('.swiper-container ul');
$swipeContainer.css("left", "0px");
checkSwipeEnd();
console.log("count = " + count);

$('.swiper_prev').on('click', function() {
	count--;
	$swipeContainer.css("left", -(count * $width));
	$swipeContainer.css("transition", "0.5s ease");
	checkSwipeEnd();
})

$('.swiper_next').on('click', function() {
	count++;
	$swipeContainer.css("left", -(count * $width));
	$swipeContainer.css("transition", "0.5s ease");
	checkSwipeEnd();
})

function checkSwipeEnd() {
	if (count <= 0) {
		$(".swiper_prev").css("display", "none");
	} else {
		$(".swiper_prev").css("display", "block");
	}

	if (count >= 4) {
		$(".swiper_next").css("display", "none");
	} else {
		$(".swiper_next").css("display", "block");
	}
}

// 시간 구역 클릭 시 토글 적용 및 가격 변동
let realCafePrice = 0;
let basicPrice = $('.cafe-price').text();
$('.modify-price').text(realCafePrice);

$('.swiper-slider').click(function() {
	$(this).toggleClass('toggle-date');

	let clickTime = $('.toggle-date').length;
	realCafePrice = basicPrice * clickTime;
	$('.modify-price').text(realCafePrice);
});

$('.color-reset').click(function(){
	$('.swiper-slider').removeClass('toggle-date');
	$('.timeText').text("시작 시간");
	$('.timeInput').text("");
	$('.endText').text("종료 시간");
	$('.endInput').text("");
	clickCount = 0;
	realCafePrice = 0;
});

// 댓글 별점 주기 디자인
let $star = $(".star-score label");

$star.on("click", function() {
	$(this).children().css("text-shadow", "0 0 0 #6567AB");
	$(this).prevAll('label').children().css("text-shadow", "0 0 0 #6567AB");
	$(this).nextAll('label').children().css("text-shadow", "0 0 0 rgb(203, 203, 203)");
})

// 댓글 목록 조회
let studyCafeNumber = $("#hidden-number").data("studycafenumber");
console.log(studyCafeNumber);

commentAjax();

function commentAjax() {
	$.ajax({
		url: '/cafecomment/cafeCommentListOk.scc',
		type: 'get',
		data: { studyCafeNumber: studyCafeNumber },
		dataType: "json",
		success: showComment
	});
}

function showComment(comments) {
	let text = '';
	comments.forEach(comment => {
		text += `
            <li class="ReplyItemRow">
              <div class="rowContainer">
                <div class="rowbtn">
                  <div class="startReply">
                    <img src="/assets/img/Star_1.svg" alt="" />
                    <p class="avg">${comment.cafeCommentScore}</p>
                    <p class="nameDate">
                    	<span class="nickname">${comment.memberNickname}</span> |
						<span>${comment.cafeCommentDate}</span>
                    </p>
                  </div>
                </div>
                <p class="repleyContent">${comment.cafeCommentContent}</p>
              </div>
            </li>`
	})

	$('.replyList').html(text);
}

// 댓글 정렬
$('#order').on('change', function() {
	var a = $('#order').val();
	if (a == "new") {
		console.log($(this));
		$.ajax({
			type: "GET", //전송방식을 지정한다 (POST,GET)
			url: "/cafecomment/cafeCommentListOk.scc?order=new",//호출 URL을 설정한다. GET방식일경우 뒤에 파라티터를 붙여서 사용해도된다.
			data: { studyCafeNumber: studyCafeNumber },
			dataType: "json",//호출한 페이지의 형식이다. xml,json,html,text등의 여러 방식을 사용할 수 있다.
			error: function() {
				alert("통신실패!!!!");
			},
			success: showComment
		});
	} else if (a == "scoreAsc") {
		console.log($(this));
		$.ajax({
			type: "GET", //전송방식을 지정한다 (POST,GET)
			url: "/cafecomment/cafeCommentListOk.scc?order=scoreAsc",//호출 URL을 설정한다. GET방식일경우 뒤에 파라티터를 붙여서 사용해도된다.
			data: { studyCafeNumber: studyCafeNumber },
			dataType: "json",//호출한 페이지의 형식이다. xml,json,html,text등의 여러 방식을 사용할 수 있다.
			error: function() {
				alert("통신실패!!!!");
			},
			success: showComment
		});
	} else if (a == "scoreDesc") {
		console.log($(this));
		$.ajax({
			type: "GET", //전송방식을 지정한다 (POST,GET)
			url: "/cafecomment/cafeCommentListOk.scc?order=scoreDesc",//호출 URL을 설정한다. GET방식일경우 뒤에 파라티터를 붙여서 사용해도된다.
			data: { studyCafeNumber: studyCafeNumber },
			dataType: "json",//호출한 페이지의 형식이다. xml,json,html,text등의 여러 방식을 사용할 수 있다.
			error: function() {
				alert("통신실패!!!!");
			},
			success: showComment
		});
	}
})

// 댓글 작성
$('.submit-btn').on('click', function() {
	$.ajax({
		url: '/cafecomment/cafeCommentWriteOk.scc',
		type: 'post',
		data: {
			studyCafeNumber: studyCafeNumber,
			memberNumber: memberNumber,
			cafeCommentScore: $("input[type=radio][name=star]:checked").val(),
			cafeCommentContent: $('#content').val()
		},
		success: function() {
			commentAjax();
			$('#content').val('');
		}
	});
})

// 좋아요 기능
$(document).ready(like);

function like() {
	$.ajax({
		url: "/cafelike/cafeLikeCheckOk.mlc",
		type: "get",
		data: {
			memberNumber: memberNumber
		},
		dataType: "json",
		success: function(cafelike) {
			console.log(cafelike);
			var arr = cafelike;
			console.log(arr.length);
			for (var j = 0; j < arr.length; j++) {
				console.log(arr[j]);
				$('input[value=' + arr[j] + '].cafe-num').closest('main').find('#favor').css('font-variation-settings', "'FILL' 100, 'wght' 400, 'GRAD' 0, 'opsz' 48");
			}
		}
	});
};

$('.likeBtn').on('click', function() {
	let target = $(this);
	let studyCafeNumber = target.closest('main').find('.cafe-num').val();

	$.ajax({
		url: "/cafelike/cafeLikeUpadateOk.mlc",
		type: "get",
		data: {
			studyCafeNumber: studyCafeNumber,
			memberNumber: memberNumber
		},
		success: function(result) {
			console.log(result);
			updateLikeCount(studyCafeNumber, target);
			if (result == 0) {
				target.find('#favor').css('font-variation-settings', "'FILL' 100, 'wght' 400, 'GRAD' 0, 'opsz' 48");
			} else {
				target.find('#favor').css('font-variation-settings', "'FILL' 0, 'wght' 400, 'GRAD' 0, 'opsz' 48");
			}
		}
	})
});

function updateLikeCount(studyCafeNumber, target) {
	$.ajax({
		url: "/cafelike/cafeLikeCountOk.mlc",
		type: "get",
		data: {
			studyCafeNumber: studyCafeNumber
		},
		success: function(count) {
			console.log(target.closest('.main').find('.likeCnt').children('p'));
			target.closest('main').find('.likeCnt').children('p').html(count);
		}
	})
}



// 결제 api연동

var IMP = window.IMP;
IMP.init("imp80646252"); // 가맹점 식별코드

var today = new Date();
var hours = today.getHours(); // 시
var minutes = today.getMinutes();  // 분
var seconds = today.getSeconds();  // 초
var milliseconds = today.getMilliseconds();
var makeMerchantUid = hours + minutes + seconds + milliseconds;

var reservationStart = $('.calInput').val() + $('.timeInput').val();
var reservationEnd = $('.calInput').val() + $('.endTimeInput').val();
var reservationCost = $('.talInput').val();
var reservationCapacity = $('.capacity-count').text();

function requestPay() {
	IMP.request_pay({
		pg: 'html5_inicis', // PG사 코드표에서 선택
		pay_method: 'card', // 결제 방식
		merchant_uid: "IMP" + makeMerchantUid, // 결제 고유 번호
		name: $('#cafe-name').text(), // 카페명
		/*amount : realCafePrice, // 사용할 가격*/
		amount: 1, // 연결 확인을 위해 사용한 가격 확인 후 지우기
		
		buyer_email: memberEmail,
		buyer_name: memberName,
		buyer_tel: memberPhoneNumber
	}, function(rsp) { // callback
		if (rsp.success) {
			console.log(rsp);
			let buyInfo = {};
			buyInfo = {
				memberNumber : memberNumber,
				studyCafeNumber : studyCafeNumber,
				reservationStart : reservationStart,
				reservationEnd : reservationEnd,
				reservationCost : reservationCost,
				reservationCapacity : reservationCapacity
				
				/*storeSystemFile: $('.board-table').find('.basket-img img').eq(i).attr('src'),
				storeNumber: $('.board-table').find('.store-number').eq(i).val(),
				storeTitle: $('.board-table tbody .title').eq(i).text(),
				storePrice: $('.board-table tbody .price').eq(i).text(),
				buyCnt: $('.board-table tbody .count').eq(i).text(),
				buyName: $('.who-is-put').val(),
				buyZoneCode: $('.mail-address').val(),
				buyAddress: $('.main-address').val(),
				buyAddressDetail: $('.sub-address').val(),
				buyPhoneNumber: $('.cell-phone-put').val(),
				memberEmail: $('.front-email-address').val() + '@' + $('.back-email-address').val(),
				buyMsg: $('.delivery-message-area').val()*/
			};

			$.ajax({
				url: '/reservation/reservationOk.rv',
				data: { buyInfo: JSON.stringify(buyInfo) },
				contentType: 'text',
				type: 'get',
				traditional: true,
				success: function(result) {
					//페이지 이동                           
					window.location.href = "http://localhost:8085/mypage/MyPageReserveOk.my";
				}
			});
			// console.log(rsp)로 결과 값 출력해봐야함
			console.log('연결에 성공했습니다.');
			// ajax 이용해서 페이지 이동처리하기
		} else {
			console.log(rsp);
		}
	});
}