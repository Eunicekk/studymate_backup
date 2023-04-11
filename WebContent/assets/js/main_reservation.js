// 지역 메뉴
let $li = $(".location");
let font = document.querySelector(".fontColor");

$li.click(() => {
	$(".locationList").toggleClass("none");
});

let $ReginCencle = $(".locationSubmit > button:first-child");

$ReginCencle.click(() => {
	$(".locationList").toggleClass("none");
});

$(".mainContainer").on("click", function() {
	$(".locationList").toggleClass("none");
});

// 인원 메뉴
let $person = $(".personnel");

$person.click(() => {
	$(".locationList").toggleClass("person_none");
});

$(".wrapper").on("click", function() {
	$(".locationList").toggleClass("person_none");
});

// 달력 메뉴
let $cal = $(".calendal");

$cal.click(() => {
	$(".locationList").toggleClass("cal_none");
});

$(".calMain").on("click", function() {
	$(".locationList").toggleClass("cal_none");
});

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
				calendar.innerHTML +
				'<div class="day current" data-day = "' +
				i +
				'">' +
				i +
				"</div>";
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
	let day = $(this).index() - 1;
	$(".cal").text(year + "-" + day);
	/*$.ajax({
		url : '요청보낼주소',
		type : 'get',
		data : $('.cal').text(),
		success : function(){
		  	
		  }
	 });*/

});

// $div.dataset.date;
// let $div = document.getElementById("days");
// $div.getAttribute("data-date");

// 클릭한 버튼만 색변경
const nonClick = document.querySelectorAll(".Region");

function handleClick(event) {
	// div에서 모든 "click" 클래스 제거
	nonClick.forEach((e) => {
		e.classList.remove("changeColor");
	});
	// 클릭한 div만 "click"클래스 추가
	event.target.classList.add("changeColor");
}

// 지역에서 동,구, 선택
const AreaClick = document.querySelectorAll(".locationArea");

function handleArea(event) {
	// div에서 모든 "click" 클래스 제거
	AreaClick.forEach((e) => {
		e.classList.add("none");
	});
	// 클릭한 div만 "click"클래스 추가
	let index = $(event.target).index();
	console.log($(".locationArea").eq(index));
	$(".locationArea").eq(index).removeClass("none");
}

nonClick.forEach((e) => {
	e.addEventListener("click", handleClick);
	e.addEventListener("click", handleArea);
});

// 지역필터 초기화 버튼
function initCheckbox() {
	// 초기화할 checkbox 선택

	const checkboxes = document.getElementsByName("area");

	// 체크박스 목록을 순회하며 checked 값을 초기화

	checkboxes.forEach((checkbox) => {
		checkbox.checked = false;
	});
}

//체크된 값 출력
function onClickFiled(temp) {
	document.querySelector(".fontColor").innerHTML = temp;
}

$(".ReginBtn").on("click", function() {
	console.log(
		document.querySelectorAll("input[type=checkbox][name=area]:checked").value
	);
	onClickFiled(clkBtn());
});

// 지역 필터로 검색
$(document).ready(function() {
	$(".ReginBtn").on("click", function() {
		var value = $(".fontColor").html();
		// 클래스로 어디 검색 할지 정할수있다.
		$(".spaceList > li").filter(function() {
			$(this).toggle($(this).text().toLowerCase().indexOf(value) > -1);
		});
	});
});

// 체크박스 값을 넘겨주기
function clkBtn() {
	var chkArray = new Array();

	$("input[type=checkbox][name=area]:checked").each(function() {
		var tmpVal = $(this).val();
		chkArray.push(tmpVal);
	});

	if (chkArray.length < 1) {
		alert("값을 선택해주시기 바랍니다.");
		return;
	}
	if (chkArray.length > 1) {
		return chkArray[0] + " " + "외" + String(chkArray.length - 1);
	}
	return chkArray;
}

// 체크 박스 전체 선택
$(document).ready(function() {
	$("#all").click(function() {
		if ($("#all").is(":checked")) $("input[name=area]").prop("checked", true);
		else $("input[name=area]").prop("checked", false);
	});

	$("input[name=area]").click(function() {
		var total = $("input[name=area]").length;
		var checked = $("input[name=area]:checked").length;

		if (total != checked) $("#all").prop("checked", false);
		else $("#all").prop("checked", true);
	});
});

//검색기능
$(document).ready(function() {
	$("#searchInput").on("keyup", function() {
		var value = $(this).val().toLowerCase();
		console.log(value);
		// 클래스로 어디 검색 할지 정할수있다.
		$(".spaceList > li").filter(function() {
			$(this).toggle($(this).text().toLowerCase().indexOf(value) > -1);
		});
	});
});

// 가격 설정하기
const rangeInput = document.querySelectorAll(".range-input input"),
	priceInput = document.querySelectorAll(".price-input input"),
	range = document.querySelector(".slider .progress");
let priceGap = 1000;

priceInput.forEach((input) => {
	input.addEventListener("input", (e) => {
		let minPrice = parseInt(priceInput[0].value),
			maxPrice = parseInt(priceInput[1].value);

		if (maxPrice - minPrice >= priceGap && maxPrice <= rangeInput[1].max) {
			if (e.target.className === "input-min") {
				rangeInput[0].value = minPrice;
				range.style.left = (minPrice / rangeInput[0].max) * 100 + "%";
			} else {
				rangeInput[1].value = maxPrice;
				range.style.right = 100 - (maxPrice / rangeInput[1].max) * 100 + "%";
			}
		}
	});
});

rangeInput.forEach((input) => {
	input.addEventListener("input", (e) => {
		let minVal = parseInt(rangeInput[0].value),
			maxVal = parseInt(rangeInput[1].value);

		if (maxVal - minVal < priceGap) {
			if (e.target.className === "range-min") {
				rangeInput[0].value = maxVal - priceGap;
			} else {
				rangeInput[1].value = minVal + priceGap;
			}
		} else {
			priceInput[0].value = minVal;
			priceInput[1].value = maxVal;
			range.style.left = (minVal / rangeInput[0].max) * 100 + "%";
			range.style.right = 100 - (maxVal / rangeInput[1].max) * 100 + "%";
		}
		document.querySelector(".price").innerHTML =
			minVal + "원" + "~" + maxVal + "원";
		document.querySelector(".min").innerHTML = minVal;
		document.querySelector(".max").innerHTML = maxVal;
	});
});

// price 가격 초기화
$(document).ready(function() {
	//btn_reset 을 클릭했을때의 함수
	$("#btn_reset").click(function() {
		$("#reset_test_form").each(function() {
			$(".progress").css("left", "25%").css("right", " 25%");
			this.reset();
		});
	});
});

// let min = priceInput[0].value;
// let max = priceInput[1].value;

// console.log(min);

// function PriceClick(e) {
//   document.querySelector(".price").innerHTML =
//     min + "만원" + "~" + max + "만원";
// }

// $("#priceBtn").on("click", function () {
//   PriceClick();
// });

// $(document).ready(function () {
//   $(".price").on("click", function () {
//     for (let i = min; i <= max; i++) {
//       var value = i;
//       console.log(value);
//       // 클래스로 어디 검색 할지 정할수있다.
//       $(".spaceList > li").filter(function () {
//         $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1);
//       });
//     }
//   });
// });


// 정렬 기능
let $new = $('#new');
let $score = $('#score');
let $like = $('#like');
let $read = $('#read');
var sort = 1;

var page = 1;
var total = $('.cafe-count').val();
var rowCount = 20;
var pageCount = 5;
var startRow = (parseInt(page) - 1) * rowCount;
var endPage = parseInt(Math.ceil(parseInt(page) / parseFloat(pageCount)) * pageCount);
var startPage = endPage - (pageCount - 1);
var realEndPage = parseInt(Math.ceil(total / parseFloat(rowCount)));
var endPage = endPage > realEndPage ? realEndPage : endPage;

$('#order').on('change',function(){
	var a = $('#order').val();
	if(a == "new"){
		console.log($(this));
		$.ajax({
			type: "GET", //전송방식을 지정한다 (POST,GET)
			url: "/cafe/cafeListOk.sc",//호출 URL을 설정한다. GET방식일경우 뒤에 파라티터를 붙여서 사용해도된다.
			dataType: "text",//호출한 페이지의 형식이다. xml,json,html,text등의 여러 방식을 사용할 수 있다.
			error: function() {
				alert("통신실패!!!!");
			},
			success: function(Parse_data) {
				var e = $(Parse_data).find('#ajax-list');
				$("#ajax-list").html(e);
				$('#order').val("new").prop("selected", true);
			}
		});
		var sort = 1;
	} else if(a == "score") {
		console.log($(this));
		$.ajax({
			type: "GET", //전송방식을 지정한다 (POST,GET)
			url: "/cafe/cafeListOk.sc?order=new",//호출 URL을 설정한다. GET방식일경우 뒤에 파라티터를 붙여서 사용해도된다.
			dataType: "text",//호출한 페이지의 형식이다. xml,json,html,text등의 여러 방식을 사용할 수 있다.
			error: function() {
				alert("통신실패!!!!");
			},
			success: function(Parse_data) {
				var e = $(Parse_data).find('#ajax-list');
				$("#ajax-list").html(e);
				$('#order').val("score").prop("selected", true);
			}
		});
		var sort = 2;
	} else if(a == "like") {
		console.log($(this));
		$.ajax({
			type: "GET", //전송방식을 지정한다 (POST,GET)
			url: "/cafe/cafeListOk.sc?order=like",//호출 URL을 설정한다. GET방식일경우 뒤에 파라티터를 붙여서 사용해도된다.
			dataType: "text",//호출한 페이지의 형식이다. xml,json,html,text등의 여러 방식을 사용할 수 있다.
			error: function() {
				alert("통신실패!!!!");
			},
			success: function(Parse_data) {
				var e = $(Parse_data).find('#ajax-list');
				$("#ajax-list").html(e);
				$('#order').val("like").prop("selected", true);
			}
		});
		var sort = 3;
	} else if(a == "read") {
		console.log($(this));
		$.ajax({
			type: "GET", //전송방식을 지정한다 (POST,GET)
			url: "/cafe/cafeListOk.sc?order=read",//호출 URL을 설정한다. GET방식일경우 뒤에 파라티터를 붙여서 사용해도된다.
			dataType: "text",//호출한 페이지의 형식이다. xml,json,html,text등의 여러 방식을 사용할 수 있다.
			error: function() {
				alert("통신실패!!!!");
			},
			success: function(Parse_data) {
				var e = $(Parse_data).find('#ajax-list');
				$("#ajax-list").html(e);
				$('#order').val("read").prop("selected", true);
			}
		});
		var sort = 4;
	}
})

// 페이징 처리
$('.pageNumber').on('click', ".pageBtn", function(){
	page = $(this).text.trim();
	
	if(sort == 1){
		$.ajax({
			type: "GET", //전송방식을 지정한다 (POST,GET)
			url: "/cafe/cafeListOk.sc?page=" + $(this).text().trim(), //호출 URL을 설정한다. GET방식일경우 뒤에 파라티터를 붙여서 사용해도된다.
			dataType: "json",//호출한 페이지의 형식이다. xml,json,html,text등의 여러 방식을 사용할 수 있다.
			error: function() {
				alert("통신실패!!!!");
			},
			success: function(Parse_data) {
				var e = $(Parse_data).find('#ajax-list');
				$("#ajax-list").html(e);
				$('#order').val("new").prop("selected", true);
			}
		});
	} else if (sort == 2) {
		$.ajax({
			type: "GET", //전송방식을 지정한다 (POST,GET)
			url: "/cafe/cafeListOk.sc?order=new&page=" + $(this).text().trim(),//호출 URL을 설정한다. GET방식일경우 뒤에 파라티터를 붙여서 사용해도된다.
			dataType: "text",//호출한 페이지의 형식이다. xml,json,html,text등의 여러 방식을 사용할 수 있다.
			error: function() {
				alert("통신실패!!!!");
			},
			success: function(Parse_data) {
				var e = $(Parse_data).find('#ajax-list');
				$("#ajax-list").html(e);
				$('#order').val("score").prop("selected", true);
				page = 1;
			}
		});
	} else if (sort == 3) {
		$.ajax({
			type: "GET", //전송방식을 지정한다 (POST,GET)
			url: "/cafe/cafeListOk.sc?order=like&page=" + $(this).text().trim(),//호출 URL을 설정한다. GET방식일경우 뒤에 파라티터를 붙여서 사용해도된다.
			dataType: "text",//호출한 페이지의 형식이다. xml,json,html,text등의 여러 방식을 사용할 수 있다.
			error: function() {
				alert("통신실패!!!!");
			},
			success: function(Parse_data) {
				var e = $(Parse_data).find('#ajax-list');
				$("#ajax-list").html(e);
				$('#order').val("like").prop("selected", true);
			}
		});
	} else if (sort == 4) {
		$.ajax({
			type: "GET", //전송방식을 지정한다 (POST,GET)
			url: "/cafe/cafeListOk.sc?order=read&page=" + $(this).text().trim(),//호출 URL을 설정한다. GET방식일경우 뒤에 파라티터를 붙여서 사용해도된다.
			dataType: "text",//호출한 페이지의 형식이다. xml,json,html,text등의 여러 방식을 사용할 수 있다.
			error: function() {
				alert("통신실패!!!!");
			},
			success: function(Parse_data) {
				var e = $(Parse_data).find('#ajax-list');
				$("#ajax-list").html(e);
				$('#order').val("read").prop("selected", true);
			}
		});
	}
})

$('.pageNumber').on('click', ".prev", function(){
	page = $(this).text.trim();
	
	if(sort == 1){
		$.ajax({
			type: "GET", //전송방식을 지정한다 (POST,GET)
			url: "/cafe/cafeListOk.sc?page=" + (startPage), //호출 URL을 설정한다. GET방식일경우 뒤에 파라티터를 붙여서 사용해도된다.
			dataType: "json",//호출한 페이지의 형식이다. xml,json,html,text등의 여러 방식을 사용할 수 있다.
			error: function() {
				alert("통신실패!!!!");
			},
			success: function(Parse_data) {
				var e = $(Parse_data).find('#ajax-list');
				$("#ajax-list").html(e);
				$('#order').val("new").prop("selected", true);
			}
		});
	} else if (sort == 2) {
		$.ajax({
			type: "GET", //전송방식을 지정한다 (POST,GET)
			url: "/cafe/cafeListOk.sc?order=new&page=" + (startPage),//호출 URL을 설정한다. GET방식일경우 뒤에 파라티터를 붙여서 사용해도된다.
			dataType: "text",//호출한 페이지의 형식이다. xml,json,html,text등의 여러 방식을 사용할 수 있다.
			error: function() {
				alert("통신실패!!!!");
			},
			success: function(Parse_data) {
				var e = $(Parse_data).find('#ajax-list');
				$("#ajax-list").html(e);
				$('#order').val("score").prop("selected", true);
				page = 1;
			}
		});
	} else if (sort == 3) {
		$.ajax({
			type: "GET", //전송방식을 지정한다 (POST,GET)
			url: "/cafe/cafeListOk.sc?order=like&page=" + (startPage),//호출 URL을 설정한다. GET방식일경우 뒤에 파라티터를 붙여서 사용해도된다.
			dataType: "text",//호출한 페이지의 형식이다. xml,json,html,text등의 여러 방식을 사용할 수 있다.
			error: function() {
				alert("통신실패!!!!");
			},
			success: function(Parse_data) {
				var e = $(Parse_data).find('#ajax-list');
				$("#ajax-list").html(e);
				$('#order').val("like").prop("selected", true);
			}
		});
	} else if (sort == 4) {
		$.ajax({
			type: "GET", //전송방식을 지정한다 (POST,GET)
			url: "/cafe/cafeListOk.sc?order=read&page=" + (startPage),//호출 URL을 설정한다. GET방식일경우 뒤에 파라티터를 붙여서 사용해도된다.
			dataType: "text",//호출한 페이지의 형식이다. xml,json,html,text등의 여러 방식을 사용할 수 있다.
			error: function() {
				alert("통신실패!!!!");
			},
			success: function(Parse_data) {
				var e = $(Parse_data).find('#ajax-list');
				$("#ajax-list").html(e);
				$('#order').val("read").prop("selected", true);
			}
		});
	}
})

$('.pageNumber').on('click', ".next", function(){
	page = $(this).text.trim();
	
	if(sort == 1){
		$.ajax({
			type: "GET", //전송방식을 지정한다 (POST,GET)
			url: "/cafe/cafeListOk.sc?page=" + (endPage + 3), //호출 URL을 설정한다. GET방식일경우 뒤에 파라티터를 붙여서 사용해도된다.
			dataType: "json",//호출한 페이지의 형식이다. xml,json,html,text등의 여러 방식을 사용할 수 있다.
			error: function() {
				alert("통신실패!!!!");
			},
			success: function(Parse_data) {
				var e = $(Parse_data).find('#ajax-list');
				$("#ajax-list").html(e);
				$('#order').val("new").prop("selected", true);
			}
		});
	} else if (sort == 2) {
		$.ajax({
			type: "GET", //전송방식을 지정한다 (POST,GET)
			url: "/cafe/cafeListOk.sc?order=new&page=" + $(this).text().trim(),//호출 URL을 설정한다. GET방식일경우 뒤에 파라티터를 붙여서 사용해도된다.
			dataType: "text",//호출한 페이지의 형식이다. xml,json,html,text등의 여러 방식을 사용할 수 있다.
			error: function() {
				alert("통신실패!!!!");
			},
			success: function(Parse_data) {
				var e = $(Parse_data).find('#ajax-list');
				$("#ajax-list").html(e);
				$('#order').val("score").prop("selected", true);
				page = 1;
			}
		});
	} else if (sort == 3) {
		$.ajax({
			type: "GET", //전송방식을 지정한다 (POST,GET)
			url: "/cafe/cafeListOk.sc?order=like&page=" + $(this).text().trim(),//호출 URL을 설정한다. GET방식일경우 뒤에 파라티터를 붙여서 사용해도된다.
			dataType: "text",//호출한 페이지의 형식이다. xml,json,html,text등의 여러 방식을 사용할 수 있다.
			error: function() {
				alert("통신실패!!!!");
			},
			success: function(Parse_data) {
				var e = $(Parse_data).find('#ajax-list');
				$("#ajax-list").html(e);
				$('#order').val("like").prop("selected", true);
			}
		});
	} else if (sort == 4) {
		$.ajax({
			type: "GET", //전송방식을 지정한다 (POST,GET)
			url: "/cafe/cafeListOk.sc?order=read&page=" + $(this).text().trim(),//호출 URL을 설정한다. GET방식일경우 뒤에 파라티터를 붙여서 사용해도된다.
			dataType: "text",//호출한 페이지의 형식이다. xml,json,html,text등의 여러 방식을 사용할 수 있다.
			error: function() {
				alert("통신실패!!!!");
			},
			success: function(Parse_data) {
				var e = $(Parse_data).find('#ajax-list');
				$("#ajax-list").html(e);
				$('#order').val("read").prop("selected", true);
			}
		});
	}
})


// 검색 기능 넣기
/*$('#search-btn').click(function() {
	var $searchValue = $('#search-input').val();
	$.ajax({
		url: '/cafe/cafeSearchOk.sc?search=' + $searchValue,
		type: 'get',
		dataType: 'json',
		success: function(response) {
			searchResult();
		}
	});
});

function showSearchResults(results) {
	var $results = $('#search-results');
	$results.empty();
	$.each(results, function(index, result) {
		var $title = $('<h3>').text(result.title);
		$results.append($title);
	});
}*/


// 좋아요 기능...


$('a .favoritButton').on('click', function(event){
	event.preventDefault();
	let target = this;
	let  cafeNumber = $(this).closest('a').find('.cafe-number-count').val();
	
	
	$.ajax({
		url: "/cafelike/cafeLikeUpadateOk.mlc",
		type: "get",
		data: {
			studyCafeNumber: cafeNumber,
			memberNumber: $memberNumber
		},
		success: function(resp){
			console.log(resp);
			updateLikeCount(cafeNumber, target);
			if(resp == 0){
			$(event.target).css("background-image", "url(https://shareit.kr/image/btn-large-heart-filled-white.svg)");
			}else{
			$(event.target).css("background-image", "url(https://shareit.kr/image/btn-large-heart-white.svg)");								
			}
		}
	})
});

function updateLikeCount(number, target){
	$.ajax({
		url: "/cafelike/cafeLikeCountOk.mlc",
		type: "POST",
		data: {
			studyCafeNumber: number
		},
		success: function(count){
			console.log($(target).closest('a').find('#like-count'));
			$(target).closest('a').find('#like-count').html(count);
		}
	})
}

let cafeNumber = $(".cafe-number-count")





