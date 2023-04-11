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
$(document).ready(function () {
  calendarInit();
});



let $memberNumber = $('#likeMemberNumber').value;
let $studyGroupNumber =$('#likeStudyGroupNumber').value;

console.log($studyGroupNumber);

likeAjax();



// 좋아요 하트를 먼저 ajax로 띄운다. 
function likeAjax(){
  if ($memberNumber != 257){
    $('.groupLikeImg').attr('src', "https://cdn-icons-png.flaticon.com/512/833/833472.png");
	
 } else {
    $('.groupLikeImg').attr('src', "https://cdn-icons-png.flaticon.com/512/833/833386.png");
	$('.groupLikeImg').css('opacity', '0.2'); // 투명도 조정  
 }
}


// 클릭하면 좋아요 추가하는 ajax를 추가한다. 
$('.groupLikeItems').on('click', function () {
	$.ajax({
		url: '/memberLikeStudyGroup/memberLikeStudyGroupOk.mlsg',
      type: 'get',
      data: { studyGroupNumber: studyGroupNumber,
				memberNumer : memberNumber },	
	succeess: function() {
		
		
	}
	
	});
});








// 클릭 버튼 에 이벤트 주고, ajax를 거기에만 걸어주면 된다 텍스트 안불러와도 됨. 이미 화면에 있으니까 그냥 클릭 이벤트만 주고, 
// 전송하고 설공하면, 화면에 전체 개수를 뿌려주면 됨. 그게 다임 ㅋㅋㅋ ㄹㅇ,,, 암것도 아님 진심.. 
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

$(".dates").on("click", ".current", function (event) {
  event.preventDefault();
  let year = $(".year-month").text();
  let day = $(this).index() - 1;
  $(".cal").text(year + "-" + day);
});

// 검색 기능
$(document).ready(function () {
  $("#searchInput").on("keyup", function () {
    var value = $(this).val().toLowerCase();
    // 클래스로 어디 검색 할지 정할수있다.
    $(".studyOpen").filter(function () {
      $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1);
    });
  });
});

// 셀렉트 선택된 값으로 검색
$(document).ready(function () {
  $(".selectOption").on("click", function () {
    var value = $(this).html();
    console.log(value);
    // 클래스로 어디 검색 할지 정할수있다.
    $(".studyOpen").filter(function () {
      $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1);
    });
  });
});

$(document).ready(function () {
  $(".Option").on("click", function () {
    var value = $(this).html();
    console.log(value);
    // 클래스로 어디 검색 할지 정할수있다.
    $(".studyOpen").filter(function () {
      $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1);
    });
  });
});

// /////////////////////////////////////////
// 셀렉트 기능
function onClickOption(e) {
  const selectedValue = e.currentTarget.innerHTML;
  document.querySelector(".Text").innerHTML = selectedValue;
}

let optionList = document.querySelectorAll(".selectOption");
for (let i = 0; i < optionList.length; i++) {
  let option = optionList[i];
  option.addEventListener("click", onClickOption);
}

function onClickFiled(e) {
  const OptionValue = e.target.innerHTML;
  document.querySelector(".Text_filed").innerHTML = OptionValue;
}

$(".filed").on("click", function () {
  let filedList = document.querySelectorAll(".Option");
  for (let i = 0; i < filedList.length; i++) {
    let filed = filedList[i];
    console.log(filed);
    filed.addEventListener("click", onClickFiled);
  }
});
