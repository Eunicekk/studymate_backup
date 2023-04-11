var $searchInput = $('.member-search input');
var $align01 = $('.align01');
var $align02 = $('.align02');
var $delete = $('.delete');

// 검색창 클릭 시 css 변화
$searchInput.on('focus', function() {
	$('.member-search .material-symbols-outlined').css('color', '#65619E')
	$(this).css('border', '1px solid #65619E');
});
$searchInput.on('blur', function() {
	$('.member-search .material-symbols-outlined').css('color', '#bdbdbd')
	$(this).css('border', '1px solid #bdbdbd');
});

var tmp;

var page = 1;

var total = $('.cafe-count').text();

var rowCount = 10;

var pageCount = 5;

var startRow = (parseInt(page) - 1) * rowCount;

var endPage = parseInt(Math.ceil(parseInt(page) / parseFloat(pageCount)) * pageCount);

var startPage = endPage - (pageCount - 1);

var realEndPage = parseInt(Math.ceil(total / parseFloat(rowCount)));

var endPage = endPage > realEndPage ? realEndPage : endPage;


// 정렬 버튼 클릭 시 css 변화
$align01.on('click', function() {
	$(this).children().css('color', '#000000');
	$(this).children('material-symbols-outlined').css('color', '#65619E');
	$align02.children().css('color', '#bdbdbd');
	$.ajax({
		type: "GET", //전송방식을 지정한다 (POST,GET)
		url: '/admin/adminMemberCheckOk.ad',//호출 URL을 설정한다. GET방식일경우 뒤에 파라티터를 붙여서 사용해도된다.
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

$align02.on('click', function() {
	$(this).children().css('color', '#000000');
	$(this).children('material-symbols-outlined').css('color', '#65619E');
	$align01.children().css('color', '#bdbdbd');
	$.ajax({
		type: "GET", //전송방식을 지정한다 (POST,GET)
		url: '/admin/adminMemberCheckOk.ad?order=desc',//호출 URL을 설정한다. GET방식일경우 뒤에 파라티터를 붙여서 사용해도된다.
		dataType: "text",// 호출한 페이지의 형식이다.xml, json, html, text등의 여러 방식을 사용할 수 있다.
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

// 검색

$('.member-search > form > button').on('click', function() {
	var memberId = $('.member-search > form > input').val();
	$.ajax({
		type: "GET",
		//url: "/admin/adminMemberCheckOk.ad",
		url: "/admin/adminMemberSearchOk.ad",
		data: { memberId: memberId },
		success: function(Parse_data) {
			$("#list-content").html(Parse_data); //div에 받아온 값을 넣는다.
			//alert("통신 데이터 값 : " + Parse_data);
		},
		error: function() {
			alert("통신 실패");
		}
	});
	tmp = 3;
})

console.log(tmp);
/*페이지 버튼 눌렀을때 주소 보내주기*/
$('#paging').on('click', ".pageBtn", function() {
	//$('#list-content').load('${pageContext.request.contextPath}/admin/adminMemberCheckOk.ad?page='+$(this).text());
	//window.location.href='/admin/adminMemberCheckOk.ad?page='+$(this).text().trim();

	page = $(this).text().trim()


	console.log($(this).text().trim());
	if (tmp == 1) {

		$.ajax({
			type: "GET", //전송방식을 지정한다 (POST,GET)
			url: '/admin/adminMemberCheckOk.ad?page=' + $(this).text().trim(),//호출 URL을 설정한다. GET방식일경우 뒤에 파라티터를 붙여서 사용해도된다.
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
			url: '/admin/adminMemberCheckOk.ad?order=desc&page=' + $(this).text().trim(),//호출 URL을 설정한다. GET방식일경우 뒤에 파라티터를 붙여서 사용해도된다.
			dataType: "text",//호출한 페이지의 형식이다. xml,json,html,text등의 여러 방식을 사용할 수 있다.
			error: function() {
				alert("통신실패!!!!");
			},
			success: function(Parse_data) {
				$("#list-content").html(Parse_data); //div에 받아온 값을 넣는다.
				//alert("통신 데이터 값 : " + Parse_data);
			}

		});
	}else if (tmp == 3) {
		var memberId = $('.member-search > form > input').val();
		$.ajax({
			type: "GET",
			//url: "/admin/adminMemberCheckOk.ad",
			url: "/admin/adminMemberSearchOk.ad?page=" + $(this).text().trim(),
			data: { memberId: memberId },
			success: function(Parse_data) {
				$("#list-content").html(Parse_data); //div에 받아온 값을 넣는다.
				//alert("통신 데이터 값 : " + Parse_data);
			},
			error: function() {
				alert("통신 실패");
			}
		});
	}
});


//prev버튼
$('#paging').on('click', ".prev", function() {
	if (tmp == 1) {

		$.ajax({
			type: "GET", //전송방식을 지정한다 (POST,GET)
			url: '/admin/adminMemberCheckOk.ad?page=' + (startPage),//호출 URL을 설정한다. GET방식일경우 뒤에 파라티터를 붙여서 사용해도된다.
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
			url: '/admin/adminMemberCheckOk.ad?order=desc&page=' + (startPage),//호출 URL을 설정한다. GET방식일경우 뒤에 파라티터를 붙여서 사용해도된다.
			dataType: "text",//호출한 페이지의 형식이다. xml,json,html,text등의 여러 방식을 사용할 수 있다.
			error: function() {
				alert("통신실패!!!!");
			},
			success: function(Parse_data) {
				$("#list-content").html(Parse_data); //div에 받아온 값을 넣는다.
				//alert("통신 데이터 값 : " + Parse_data);
			}

		});
	}else if (tmp == 3) {
		var memberId = $('.member-search > form > input').val();
		$.ajax({
			type: "GET",
			//url: "/admin/adminMemberCheckOk.ad",
			url: "/admin/adminMemberSearchOk.ad?page=" +(startPage),
			data: { memberId: memberId },
			success: function(Parse_data) {
				$("#list-content").html(Parse_data); //div에 받아온 값을 넣는다.
				//alert("통신 데이터 값 : " + Parse_data);
			},
			error: function() {
				alert("통신 실패");
			}
		});
	}
});


//next
$('#paging').on('click', ".next", function() {
	if (tmp == 1) {

		$.ajax({
			type: "GET", //전송방식을 지정한다 (POST,GET)
			url: '/admin/adminMemberCheckOk.ad?page=' + (endPage + 3),//호출 URL을 설정한다. GET방식일경우 뒤에 파라티터를 붙여서 사용해도된다.
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
			url: '/admin/adminMemberCheckOk.ad?order=desc&page=' + (endPage + 3),//호출 URL을 설정한다. GET방식일경우 뒤에 파라티터를 붙여서 사용해도된다.
			dataType: "text",//호출한 페이지의 형식이다. xml,json,html,text등의 여러 방식을 사용할 수 있다.
			error: function() {
				alert("통신실패!!!!");
			},
			success: function(Parse_data) {
				$("#list-content").html(Parse_data); //div에 받아온 값을 넣는다.
				//alert("통신 데이터 값 : " + Parse_data);
			}

		});
	} else if (tmp == 3) {
		var memberId = $('.member-search > form > input').val();
		$.ajax({
			type: "GET",
			//url: "/admin/adminMemberCheckOk.ad",
			url: "/admin/adminMemberSearchOk.ad?page=" +(endPage + 3),
			data: { memberId: memberId },
			success: function(Parse_data) {
				$("#list-content").html(Parse_data); //div에 받아온 값을 넣는다.
				//alert("통신 데이터 값 : " + Parse_data);
			},
			error: function() {
				alert("통신 실패");
			}
		});
	}
});

// 삭제 버튼 누를 시 경고창으로 삭제하시겠습니까? 알림 후 삭제
/*$delete.on('click', function(){
	var isDelete = confirm('해당 회원 데이터를 삭제하시겠습니까?');
	console.log(document.querySelector("#test1").value);
	if(isDelete == true){
		$(this).parent().parent().hide();
	}
})*/

$(document).each(function() {
	$('.member-table > tbody').on('click', '.delete', function() {
		/*var isDelete = confirm('해당 회원 데이터를 삭제하시겠습니까?');
		console.log($(this).prop("id"));
		if (isDelete == true) {
			$(this).parent().parent().hide();
		}*/
		let memberNumber = $(this).prop("id");
		//console.log(typeof memberNumber);
		$.ajax({
			type: "GET",
			url: "/admin/adminMemberDeleteOk.ad",
			data: { memberNumber: memberNumber },
			success: function() {
				//alert("통신성공");
				location.reload();
			},
			error: function() {
				alert("통신 실패");
			}
		});
	})
});




/*$(document).ready(function() {
	$(".member-search > form > input").on("keyup", function() {
		var value = $(this).val().toLowerCase();
		console.log(value);
		// 클래스로 어디 검색 할지 정할수있다.
		$(".member-table > tbody > tr").filter(function() {
			$(this).toggle($(this).text().toLowerCase().indexOf(value) > -1);
		});
	});
});*/
