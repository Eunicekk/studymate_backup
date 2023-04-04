var $searchGroupInput = $('.group-search input');
var $groupaAlign01 = $('.align01');
var $groupAlign02 = $('.align02');
var $GroupDelete = $('.group-delete');
var $groupFilter = $('.filter');
var tmp = 1;

var page = 1;

var total = $('.cafe-count').text();


var rowCount = 20;

var pageCount = 5;

var startRow = (parseInt(page) - 1) * rowCount;

var endPage = parseInt(Math.ceil(parseInt(page) / parseFloat(pageCount)) * pageCount);

var startPage = endPage - (pageCount - 1);

var realEndPage = parseInt(Math.ceil(total / parseFloat(rowCount)));

var endPage = endPage > realEndPage ? realEndPage : endPage;


// 검색창 클릭 시 css 변화
$searchGroupInput.on('focus', function() {
	$('.group-search .material-symbols-outlined').css('color', '#65619E')
	$(this).css('border', '1px solid #65619E');
});
$searchGroupInput.on('blur', function() {
	$('.group-search .material-symbols-outlined').css('color', '#bdbdbd')
	$(this).css('border', '1px solid #bdbdbd');
});

// 정렬 버튼 클릭 시 css 변화
$groupaAlign01.on('click', function() {
	$(this).children().css('color', '#000000');
	$(this).children('material-symbols-outlined').css('color', '#65619E');
	$groupAlign02.children().css('color', '#bdbdbd');
	$.ajax({
		type: "GET", //전송방식을 지정한다 (POST,GET)
		url: '/admin/adminGroupListOk.ad',//호출 URL을 설정한다. GET방식일경우 뒤에 파라티터를 붙여서 사용해도된다.
		dataType: "text",//호출한 페이지의 형식이다. xml,json,html,text등의 여러 방식을 사용할 수 있다.
		error: function() {
			alert("통신실패!!!!");
		},
		success: function(Parse_data) {
			$("#list-content").html(Parse_data); //div에 받아온 값을 넣는다.
			//alert("통신 데이터 값 : " + Parse_data);
		}

	});
	tmp = 1;
})

$groupAlign02.on('click', function() {
	$(this).children().css('color', '#000000');
	$(this).children('material-symbols-outlined').css('color', '#65619E');
	$groupaAlign01.children().css('color', '#bdbdbd');
	$.ajax({
		type: "GET", //전송방식을 지정한다 (POST,GET)
		url: '/admin/adminGroupListOk.ad?order=desc',//호출 URL을 설정한다. GET방식일경우 뒤에 파라티터를 붙여서 사용해도된다.
		dataType: "text",//호출한 페이지의 형식이다. xml,json,html,text등의 여러 방식을 사용할 수 있다.
		error: function() {
			alert("통신실패!!!!");
		},
		success: function(Parse_data) {
			$("#list-content").html(Parse_data); //div에 받아온 값을 넣는다.
			//alert("통신 데이터 값 : " + Parse_data);
		}

	});
	tmp = 2;
})

// 삭제 버튼 누를 시 경고창으로 삭제하시겠습니까? 알림 후 삭제
$GroupDelete.on('click', function() {
	var isDelete = confirm('해당 회원 데이터를 삭제하시겠습니까?');
	if (isDelete == true) {
		$(this).parent().parent().hide();
	}
})

// 필터 버튼 클릭 시 드롭다운 div 생성
$('html').click(function(e) {
	if ($(e.target).hasClass('filter') || $(e.target).hasClass('filter-click')) {
		$('.filter-field').css('display', 'block');
	} else {
		$('.filter-field').css('display', 'none');
	}
});



//페이징 버튼
$('#paging').on('click', ".prev", function() {
	if (tmp == 1) {

		$.ajax({
			type: "GET", //전송방식을 지정한다 (POST,GET)
			url: '/admin/adminGroupListOk.ad?page=' + (startPage),//호출 URL을 설정한다. GET방식일경우 뒤에 파라티터를 붙여서 사용해도된다.
			dataType: "text",//호출한 페이지의 형식이다. xml,json,html,text등의 여러 방식을 사용할 수 있다.
			error: function() {
				alert("통신실패!!!!");
			},
			success: function(Parse_data) {
				//alert("통신 데이터 값 : " + Parse_data);
				$("#list-content").html(Parse_data); //div에 받아온 값을 넣는다.
			}

		});
	} else if (tmp == 2) {
		$.ajax({
			type: "GET", //전송방식을 지정한다 (POST,GET)
			url: '/admin/adminGroupListOk.ad?order=desc&page=' + (startPage),//호출 URL을 설정한다. GET방식일경우 뒤에 파라티터를 붙여서 사용해도된다.
			dataType: "text",//호출한 페이지의 형식이다. xml,json,html,text등의 여러 방식을 사용할 수 있다.
			error: function() {
				alert("통신실패!!!!");
			},
			success: function(Parse_data) {
				$("#list-content").html(Parse_data); //div에 받아온 값을 넣는다.
				//alert("통신 데이터 값 : " + Parse_data);
			}

		});
	}
});


//next
$('#paging').on('click', ".next", function() {
	if (tmp == 1) {

		$.ajax({
			type: "GET", //전송방식을 지정한다 (POST,GET)
			url: '/admin/adminGroupListOk.ad?page=' + (endPage + 3),//호출 URL을 설정한다. GET방식일경우 뒤에 파라티터를 붙여서 사용해도된다.
			dataType: "text",//호출한 페이지의 형식이다. xml,json,html,text등의 여러 방식을 사용할 수 있다.
			error: function() {
				alert("통신실패!!!!");
			},
			success: function(Parse_data) {
				$("#list-content").html(Parse_data); //div에 받아온 값을 넣는다.
				//alert("통신 데이터 값 : " + Parse_data);
			}

		});
	} else if (tmp == 2) {
		$.ajax({
			type: "GET", //전송방식을 지정한다 (POST,GET)
			url: '/admin/adminGroupListOk.ad?order=desc&page=' + (endPage + 3),//호출 URL을 설정한다. GET방식일경우 뒤에 파라티터를 붙여서 사용해도된다.
			dataType: "text",//호출한 페이지의 형식이다. xml,json,html,text등의 여러 방식을 사용할 수 있다.
			error: function() {
				alert("통신실패!!!!");
			},
			success: function(Parse_data) {
				$("#list-content").html(Parse_data); //div에 받아온 값을 넣는다.
				//alert("통신 데이터 값 : " + Parse_data);
			}

		});
	}
});


