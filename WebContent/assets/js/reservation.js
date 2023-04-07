$(document).ready(function () {
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
  $(".go-prev").on("click", function () {
    thisMonth = new Date(currentYear, currentMonth - 1, 1);
    renderCalender(thisMonth);
  });

  // 다음달로 이동
  $(".go-next").on("click", function () {
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

$(".dates").on("click", ".current", function (event) {
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

$(".calMain").on("click", function () {
  $(".calMain").toggleClass("cal_none");
});

//예약 시간

let $time = $(".timeContainer");

$time.click(() => {
  $(".TimeContainer").toggleClass("time_none");
});

$(".TimeContainer").on("click", function () {
  $(".TimeContainer").toggleClass("time_none");
});

timer = document.querySelector("#time");
timer.innerHTML = "";

// 시간 칸 출력
for (let i = 0; i <= 24; i++) {
  timer.innerHTML =
    timer.innerHTML +
    '<div class="swiper-slider time-swiper-slide time-swiper-group-buying">' +
    "<span>10000</span>" +
    '<span class="time-swiper-time">' +
    i +
    ":00</span>" +
    "</div>";
}

// 슬라이드
let $swiperBox = $(".Timeslider > .swiper .swiper-wrapper");

let currentIdx = 0;

let slideWidth = 65;

checkEnd();

$(".slider-next").on("click", function () {
  currentIdx++;
  $swiperBox.css("left", -(currentIdx * slideWidth));
  $swiperBox.css("transition", "0.5s ease");
  checkEnd();
});

$(".slider-prev").on("click", function () {
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
$("#time").on("click", ".swiper-slider", function (event) {
  // event.preventDefault();
  arr.push($(this).index());

  console.log(arr);

  if (arr[arr.length - 2] < arr[arr.length - 1]) {
    if ($(this).text().length == 9) {
      $(".timeText").text(
        $("#time > .swiper-slider ")
          .eq(arr[arr.length - 2])
          .text()
          .slice(-4)
      );
      $(".timeInput").text(
        $("#time > .swiper-slider ")
          .eq(arr[arr.length - 2])
          .text()
          .slice(-4)
      );
      // 종료시간
      $(".endText").text(
        $("#time > .swiper-slider ")
          .eq(arr[arr.length - 1])
          .text()
          .slice(-4)
      );
      $(".endTimeInput").text(
        $("#time > .swiper-slider ")
          .eq(arr[arr.length - 1])
          .text()
          .slice(-4)
      );

      $(".tal").text(
        Number(
          $("#time > .swiper-slider ")
            .eq(arr[arr.length - 1])
            .text()
            .slice(0, -4)
        ) *
          (arr[arr.length - 1] - arr[arr.length - 2]) +
          "원"
      );
      $(".talInput").text(
        Number(
          $("#time > .swiper-slider ")
            .eq(arr[arr.length - 1])
            .text()
            .slice(0, -4)
        ) *
          (arr[arr.length - 1] - arr[arr.length - 2])
      );
      $(".PriceBtn").text(
        Number(
          $("#time > .swiper-slider ")
            .eq(arr[arr.length - 1])
            .text()
            .slice(0, -4)
        ) *
          (arr[arr.length - 1] - arr[arr.length - 2])
      );
    } else if ($(this).text().length == 10) {
      $(".timeText").text(
        $("#time > .swiper-slider ")
          .eq(arr[arr.length - 2])
          .text()
          .slice(-5)
      );
      $(".timeInput").text(
        $("#time > .swiper-slider ")
          .eq(arr[arr.length - 2])
          .text()
          .slice(-5)
      );
      // 종료시간
      $(".endText").text(
        $("#time > .swiper-slider ")
          .eq(arr[arr.length - 1])
          .text()
          .slice(-5)
      );
      $(".endTimeInput").text(
        $("#time > .swiper-slider ")
          .eq(arr[arr.length - 1])
          .text()
          .slice(-5)
      );

      $(".tal").text(
        Number(
          $("#time > .swiper-slider ")
            .eq(arr[arr.length - 1])
            .text()
            .slice(0, -5)
        ) *
          (arr[arr.length - 1] - arr[arr.length - 2]) +
          "원"
      );
      $(".talInput").text(
        Number(
          $("#time > .swiper-slider ")
            .eq(arr[arr.length - 1])
            .text()
            .slice(0, -5)
        ) *
          (arr[arr.length - 1] - arr[arr.length - 2])
      );
      $(".PriceBtn").text(
        Number(
          $("#time > .swiper-slider ")
            .eq(arr[arr.length - 1])
            .text()
            .slice(0, -5)
        ) *
          (arr[arr.length - 1] - arr[arr.length - 2])
      );
    }
  } else if (arr[arr.length - 2] > arr[arr.length - 1]) {
    if ($(this).text().length == 9) {
      $(".timeText").text(
        $("#time > .swiper-slider ")
          .eq(arr[arr.length - 1])
          .text()
          .slice(-4)
      );
      $(".timeInput").text(
        $("#time > .swiper-slider ")
          .eq(arr[arr.length - 1])
          .text()
          .slice(-4)
      );
      // 종료시간
      $(".endText").text(
        $("#time > .swiper-slider ")
          .eq(arr[arr.length - 2])
          .text()
          .slice(-4)
      );
      $(".endTimeInput").text(
        $("#time > .swiper-slider ")
          .eq(arr[arr.length - 2])
          .text()
          .slice(-4)
      );

      $(".tal").text(
        Number(
          $("#time > .swiper-slider ")
            .eq(arr[arr.length - 1])
            .text()
            .slice(0, -4)
        ) *
          (arr[arr.length - 2] - arr[arr.length - 1]) +
          "원"
      );
      $(".talInput").text(
        Number(
          $("#time > .swiper-slider ")
            .eq(arr[arr.length - 1])
            .text()
            .slice(0, -4)
        ) *
          (arr[arr.length - 2] - arr[arr.length - 1])
      );
      $(".PriceBtn").text(
        Number(
          $("#time > .swiper-slider ")
            .eq(arr[arr.length - 1])
            .text()
            .slice(0, -4)
        ) *
          (arr[arr.length - 2] - arr[arr.length - 1])
      );
    } else if ($(this).text().length == 10) {
      $(".timeText").text(
        $("#time > .swiper-slider ")
          .eq(arr[arr.length - 1])
          .text()
          .slice(-5)
      );
      $(".timeInput").text(
        $("#time > .swiper-slider ")
          .eq(arr[arr.length - 1])
          .text()
          .slice(-5)
      );
      // 종료시간
      $(".endText").text(
        $("#time > .swiper-slider ")
          .eq(arr[arr.length - 2])
          .text()
          .slice(-5)
      );
      $(".endTimeInput").text(
        $("#time > .swiper-slider ")
          .eq(arr[arr.length - 2])
          .text()
          .slice(-5)
      );

      $(".tal").text(
        Number(
          $("#time > .swiper-slider ")
            .eq(arr[arr.length - 1])
            .text()
            .slice(0, -5)
        ) *
          (arr[arr.length - 2] - arr[arr.length - 1]) +
          "원"
      );
      $(".talInput").text(
        Number(
          $("#time > .swiper-slider ")
            .eq(arr[arr.length - 1])
            .text()
            .slice(0, -5)
        ) *
          (arr[arr.length - 2] - arr[arr.length - 1])
      );
      $(".PriceBtn").text(
        Number(
          $("#time > .swiper-slider ")
            .eq(arr[arr.length - 1])
            .text()
            .slice(0, -5)
        ) *
          (arr[arr.length - 2] - arr[arr.length - 1])
      );
    }
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

$(".blurTab").on("click", function () {
  window.scrollTo(0, 775);
});

$(".review").on("click", function () {
  window.scrollTo(0, 1882);
});

$(".caution").on("click", function () {
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
geocoder.addressSearch($("#cafe-address").text(), function (result, status) {
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

// 댓글 별점 주기 디자인
let $star = $(".star-score label");

$star.on("click", function(){
    $(this).children().css("text-shadow", "0 0 0 #6567AB");
    $(this).prevAll('label').children().css("text-shadow", "0 0 0 #6567AB");
	$(this).nextAll('label').children().css("text-shadow", "0 0 0 rgb(203, 203, 203)");
})

// 댓글 목록 조회
let studyCafeNumber = $("#hidden-number").data("studycafenumber");
console.log(studyCafeNumber);

commentAjax();

function commentAjax(){
	$.ajax({
		url: '/cafecomment/cafeCommentListOk.scc',
		type: 'get',
		data: {studyCafeNumber: studyCafeNumber},
		dataType: "json",
		success: showComment
	});
}

function showComment(comments){
	let text = '';
	
	comments.forEach(comment => {
		text += `
			<ul class="replyList">
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
            </li>
          </ul>
		`
	})
	
	$('.replyList').html(text);
}

// 댓글 작성
$('.submit-btn').on('click', function(){
	$.ajax({
		url: '/cafecomment/cafeCommentWriteOk.scc',
		type: 'post',
		data : {
			studyCafeNumber : studyCafeNumber,
			memberNumber : memberNumber,
			cafeCommentScore : $("input[type=radio][name=star]:checked").val(),
			cafeCommentContent : $('#content').val()
		},
		success : function(){
			commentAjax();
			$('#content').val('');
		}
	});
})



