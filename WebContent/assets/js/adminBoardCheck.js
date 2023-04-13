var $boardSearchInput = $('.board-search input');
var $boardAlign01 = $('.align01');
var $boardAlign02 = $('.align02');
var $boardDelete = $('.delete');

// 검색창 클릭 시 css 변화
$boardSearchInput.on('focus', function() {
	$('.board-search .material-symbols-outlined').css('color', '#65619E')
	$(this).css('border', '1px solid #65619E');
});
$boardSearchInput.on('blur', function() {
	$('.board-search .material-symbols-outlined').css('color', '#bdbdbd')
	$(this).css('border', '1px solid #bdbdbd');
});

var tmp = 1;

var page;

var total = $('.cafe-count').text();


var rowCount = 10;

var pageCount = 5;

var startRow = (parseInt(page) - 1) * rowCount;

var endPage = parseInt(Math.ceil(parseInt(page) / parseFloat(pageCount)) * pageCount);

var startPage = endPage - (pageCount - 1);

var realEndPage = parseInt(Math.ceil(total / parseFloat(rowCount)));

var endPage = endPage > realEndPage ? realEndPage : endPage;


// 정렬 버튼 클릭 시 css 변화
$boardAlign01.on('click', function() {
	$(this).children().css('color', '#000000');
	$(this).children('material-symbols-outlined').css('color', '#65619E');
	$boardAlign02.children().css('color', '#bdbdbd');

	$.ajax({
		type: "GET", //전송방식을 지정한다 (POST,GET)
		url: '/admin/adminBoardListOk.ad',//호출 URL을 설정한다. GET방식일경우 뒤에 파라티터를 붙여서 사용해도된다.
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
$boardAlign02.on('click', function() {
	$(this).children().css('color', '#000000');
	$(this).children('material-symbols-outlined').css('color', '#65619E');
	$boardAlign01.children().css('color', '#bdbdbd');
	$.ajax({
		type: "GET", //전송방식을 지정한다 (POST,GET)
		url: '/admin/adminBoardListOk.ad?order=desc',//호출 URL을 설정한다. GET방식일경우 뒤에 파라티터를 붙여서 사용해도된다.
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

//삭제
$(document).each(function() {
	$('.board-table > tbody').on('click', '.delete', function() {
		/*var isDelete = confirm('해당 회원 데이터를 삭제하시겠습니까?');
		console.log($(this).prop("id"));
		if (isDelete == true) {
			$(this).parent().parent().hide();
		}*/
		let boardNumber = $(this).prop("id");
		console.log(boardNumber);
		$.ajax({
			type: "GET",
			url: "/admin/adminBoardDeleteOk.ad",
			data: { boardNumber: boardNumber },
			success: function() {
				//alert("삭제되었습니다.");
				location.reload();
			},
			error: function() {
				//alert("통신 실패");
			}
		});
	})
});

//검색
$('.board-search > form > button').on('click' ,function(){
	var memberId = $('.board-search > form > input').val();
	$.ajax({
			type: "GET",
			url: "/admin/adminBoardListOk.ad",
			data: { memberId : memberId },
			success: function(Parse_data) {
				$("#list-content").html(Parse_data); //div에 받아온 값을 넣는다.
				//alert("통신 데이터 값 : " + Parse_data);
			},
			error: function() {
				alert("통신 실패");
			}
		});
})



//페이징
$('#paging').on('click', ".pageBtn", function() {
	//$('#list-content').load('${pageContext.request.contextPath}/admin/adminMemberCheckOk.ad?page='+$(this).text());
	//window.location.href='/admin/adminMemberCheckOk.ad?page='+$(this).text().trim();

	page = $(this).text().trim()


	console.log($(this).text().trim());
	if (tmp == 1) {

		$.ajax({
			type: "GET", //전송방식을 지정한다 (POST,GET)
			url: '/admin/adminBoardListOk.ad?page=' + $(this).text().trim(),//호출 URL을 설정한다. GET방식일경우 뒤에 파라티터를 붙여서 사용해도된다.
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
			url: '/admin/adminBoardListOk.ad?order=desc&page=' + $(this).text().trim(),//호출 URL을 설정한다. GET방식일경우 뒤에 파라티터를 붙여서 사용해도된다.
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


//prev버튼
$('#paging').on('click', ".prev", function() {
	if (tmp == 1) {

		$.ajax({
			type: "GET", //전송방식을 지정한다 (POST,GET)
			url: '/admin/adminBoardListOk.ad?page=' + (startPage -1),//호출 URL을 설정한다. GET방식일경우 뒤에 파라티터를 붙여서 사용해도된다.
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
			url: '/admin/adminBoardListOk.ad?order=desc&page=' + (startPage -1),//호출 URL을 설정한다. GET방식일경우 뒤에 파라티터를 붙여서 사용해도된다.
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
			url: '/admin/adminBoardListOk.ad?page=' + (endPage + 1),//호출 URL을 설정한다. GET방식일경우 뒤에 파라티터를 붙여서 사용해도된다.
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
			url: '/admin/adminBoardListOk.ad?order=desc&page=' + (endPage + 1),//호출 URL을 설정한다. GET방식일경우 뒤에 파라티터를 붙여서 사용해도된다.
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
