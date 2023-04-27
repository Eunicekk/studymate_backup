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

// 글 등록 취소 버튼 

$(document).ready(function() {
 $(".cancelButton").on("click", () => {
   window.location.href = "/studyGroup/studyGroupMainOk.sg";
 });
 });


// 게시글 작성 
$(".registerOkButton").on("click", function () { 
	
	//모집분야 
	var studyGroupField = $("#feild option:selected").text();
	console.log(studyGroupField);
	
	//모집 인원
	var studyGroupCapacity = $("#person option:selected").text();
	console.log(studyGroupCapacity);
	
	//진행방식
	var studyGroupOnline = $("#online option:selected").text();
	console.log(studyGroupOnline);
	
	//예상기간
	var studyGroupDuration =  $("#duration option:selected").text();
	console.log(studyGroupDuration);
	
	// 연락방법 
	var studyGroupContact = $("#contact option:selected").text();
	console.log(studyGroupContact);
	
	// 연락 주소 
	var studyGroupContactAddress =  $('input[name="selfText"]').val();
	console.log (studyGroupContactAddress);
	
	// 모집 마감일 (달력)
	var studyGroupEndDate = $('#endDateText').trim();
	console.log(studyGroupEndDate);
	
	// 글제목 
	var studyGroupTitle = $('input[name="titleInput"]').val().trim();
	console.log(studyGroupTitle);
	
// 썸머노트 	
	var studyGroupcontent = $(".note-editable").text().trim();
	console.log(studyGroupcontent);
	

	
//	멤버넘버. 
	
insertAjax(studyGroupField, studyGroupCapacity, studyGroupOnline, studyGroupDuration, studyGroupContact, studyGroupContactAddress
, studyGroupEndDate, studyGroupTitle, studyGroupcontent );
	
	});



function insertAjax (studyGroupField, studyGroupCapacity, studyGroupOnline, studyGroupDuration, studyGroupContact, studyGroupContactAddress
, studyGroupEndDate, studyGroupTitle, studyGroupcontent ) {
	if (studyGroupField == "모집분야") {
	alert ("모집 분야를 선택해주세요 !");
	} else if (studyGroupCapacity == "희망인원") {
	alert ("희망인원 선택해주세요 !");
	}else if (studyGroupOnline == "온라인/오프라인") {
		alert ("진행 방식을 선택해주세요 !");
	}else if (studyGroupDuration == "스터디 기간") {
		alert ("스터디 기간을 선택해주세요 !");
	}else if (studyGroupContact == "SNS") { 
		alert ("연락 방법을 선택해주세요 !");
	}else if (studyGroupEndDate == "모집 마감날짜를 선택하세요") {
		alert ("모집 마감날짜를 선택해주세요 !");
	}else if (studyGroupTitle == null) {
		alert ("제목을 입력해주세요 !");
	}else if (studyGroupcontent == null) {
		alert ("스터디 그룹 홍보 게시글을 입력하지 않으셨어요 !");
		} 

		let data = {
		studyGroupField : studyGroupField,
		studyGroupCapacity : studyGroupCapacity, 
		studyGroupOnline : studyGroupOnline, 
		studyGroupDuration : studyGroupDuration,
		studyGroupContact : studyGroupContact,
		studyGroupContactAddress : studyGroupContactAddress , 
		studyGroupEndDate : studyGroupEndDate, 
		studyGroupTitle : studyGroupTitle,
		studyGroupcontent : studyGroupcontent 
	};
	
	$.ajax({
		url : '/studyGroup/studyGroupWriteOk.sg',
		type : 'get',
		data : data,
		error : function() {
			alert("통신실패!!!!")
		}, success : function(){
			 window.location.href = "/studyGroup/studyGroupMainOk.sg"; 
			}
		})
	}

var studyGroupNumber = $('input[name="studyGroupNumber"]').val();
console.log("==== studyGroupNumber ");
console.log(studyGroupNumber);

// 게시글 수정 =====================================================

$(".RegisterButton").on("click", function () { 
	
	var studyGroupNumber = $('input[name="studyGroupNumber"]').val();
	
	//모집분야 
	var studyGroupField = $("#feild option:selected").text();
	console.log(studyGroupField);
	
	//모집 인원
	var studyGroupCapacity = $("#person option:selected").text();
	console.log(studyGroupCapacity);
	
	//진행방식
	var studyGroupOnline = $("#online option:selected").text();
	console.log(studyGroupOnline);
	
	//예상기간
	var studyGroupDuration =  $("#duration option:selected").text();
	console.log(studyGroupDuration);
	
	// 연락방법 
	var studyGroupContact = $("#contact option:selected").text();
	console.log(studyGroupContact);
	
	// 연락 주소 
	var studyGroupContactAddress =  $('input[name="selfText"]').val();
	console.log (studyGroupContactAddress);
	
	// 모집 마감일 (달력)
	var studyGroupEndDate = $('#endDateText').text().trim();
	console.log(studyGroupEndDate);
	
	// 글제목 
	var studyGroupTitle = $('input[name="titleInput"]').val().trim();
	console.log(studyGroupTitle);
	
// 썸머노트 	
	var studyGroupcontent = $(".note-editable").text().trim();
	console.log(studyGroupcontent);
	

	
//	멤버넘버. 
	
insertAjax(studyGroupNumber, studyGroupField, studyGroupCapacity, studyGroupOnline, studyGroupDuration, studyGroupContact, studyGroupContactAddress
, studyGroupEndDate, studyGroupTitle, studyGroupcontent );
	
	});



function insertAjax (studyGroupNumber, studyGroupField, studyGroupCapacity, studyGroupOnline, studyGroupDuration, studyGroupContact, studyGroupContactAddress
, studyGroupEndDate, studyGroupTitle, studyGroupcontent ) {
	if (studyGroupField == "모집분야") {
	alert ("모집 분야를 선택해주세요 !");
	} else if (studyGroupCapacity == "희망인원") {
	alert ("희망인원 선택해주세요 !");
	}else if (studyGroupOnline == "온라인/오프라인") {
		alert ("진행 방식을 선택해주세요 !");
	}else if (studyGroupDuration == "스터디 기간") {
		alert ("스터디 기간을 선택해주세요 !");
	}else if (studyGroupContact == "SNS") { 
		alert ("연락 방법을 선택해주세요 !");
	}else if (studyGroupEndDate == "모집 마감날짜를 선택하세요") {
		alert ("모집 마감날짜를 선택해주세요 !");
	}else if (studyGroupTitle == null) {
		alert ("제목을 입력해주세요 !");
	}else if (studyGroupcontent == null) {
		alert ("스터디 그룹 홍보 게시글을 입력하지 않으셨어요 !");
		} 

		let data = {
		studyGroupNumber : studyGroupNumber,
		studyGroupField : studyGroupField,
		studyGroupCapacity : studyGroupCapacity, 
		studyGroupOnline : studyGroupOnline, 
		studyGroupDuration : studyGroupDuration,
		studyGroupContact : studyGroupContact,
		studyGroupContactAddress : studyGroupContactAddress , 
		studyGroupEndDate : studyGroupEndDate, 
		studyGroupTitle : studyGroupTitle,
		studyGroupcontent : studyGroupcontent 
	};
	
	$.ajax({
		url : '/studyGroup/studyGroupUpdateOk.sg',
		type : 'get',
		data : data,
		error : function() {
			alert("통신실패!!!!")
		}, success : function(){
			 window.location.href = "/studyGroup/studyGroupMainOk.sg"; 
			}
		})
	}

