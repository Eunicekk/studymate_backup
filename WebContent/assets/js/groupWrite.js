let $endDate = $(".endDate");

$endDate.click(() => {
  $(".selectEnd").toggleClass("none");
});

let $prev = $(".go-prev");

$prev.click(() => {
  $(".selectEnd").toggleClass("none");
});

let $next = $(".go-next");

$next.click(() => {
  $(".selectEnd").toggleClass("none");
});

// $.endDate.addEventListener("foucus", function () {
//   $(".selectEnd").toggleClass("none");
// });
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

$(document).ready(function () {
  $("#summernote").summernote({
    height: 300,
    focus: false,
    lang: "ko-KR",
    cllbacks: {
      onlmageUpload: function (files, editor, welEditable) {
        for (let i = files.length - 1; i >= 0; i--) {
          summernotelmageUpload(files[i], this);
        }
      },
    },
  });
});

function selectOpt() {
  opts.forEach((opt) => {
    const innerValue = opt.innerHTML;
    function changeValue() {
      values.innerHTML = innerValue;
    }
    opt.addEventListener("click", changeValue);
  });
}

$(".dates").on("click", ".current", function (event) {
  event.preventDefault();
  let year = $(".year-month").text();
  let day = $(this).index() - 1;
  $(".Text").text(year + "-" + day);
  document.getElementById('Data-day').value = year + "-" + day;
});

// $(".cancelButton").on("click", () => {
//   window.location.href = "study_group_main.html";
// });
