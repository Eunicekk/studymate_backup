var $searchCafeInput = $('.cafe-search input');
var $cafeAlign01 = $('.align01');
var $cafeAlign02 = $('.align02');
var $cafeAlign03 = $('.align03');
var $cafeDelete = $('.delete');

// 검색창 클릭 시 css 변화
$searchCafeInput.on('focus', function() {
	$('.cafe-search .material-symbols-outlined').css('color', '#65619E')
	$(this).css('border', '1px solid #65619E');
});
$searchCafeInput.on('blur', function() {
	$('.cafe-search .material-symbols-outlined').css('color', '#bdbdbd')
	$(this).css('border', '1px solid #bdbdbd');
});

var tmp = 1;

// 정렬 버튼 클릭 시 css 변화
$cafeAlign01.on('click', function() {
	$(this).children().css('color', '#000000');
	$(this).children('material-symbols-outlined').css('color', '#65619E');
	$cafeAlign02.children().css('color', '#bdbdbd');
	$cafeAlign03.children().css('color', '#bdbdbd');

	$.ajax({
		type: "GET", //전송방식을 지정한다 (POST,GET)
		url: '/admin/adminCafeListOk.ad',//호출 URL을 설정한다. GET방식일경우 뒤에 파라티터를 붙여서 사용해도된다.
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
$cafeAlign02.on('click', function() {
	$(this).children().css('color', '#000000');
	$(this).children('material-symbols-outlined').css('color', '#65619E');
	$cafeAlign01.children().css('color', '#bdbdbd');
	$cafeAlign03.children().css('color', '#bdbdbd');
	$.ajax({
		type: "GET", //전송방식을 지정한다 (POST,GET)
		url: '/admin/adminCafeListOk.ad?order=comment',//호출 URL을 설정한다. GET방식일경우 뒤에 파라티터를 붙여서 사용해도된다.
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
$cafeAlign03.on('click', function() {
	$(this).children().css('color', '#000000');
	$(this).children('material-symbols-outlined').css('color', '#65619E');
	$cafeAlign01.children().css('color', '#bdbdbd');
	$cafeAlign02.children().css('color', '#bdbdbd');
	$.ajax({
		type: "GET", //전송방식을 지정한다 (POST,GET)
		url: '/admin/adminCafeListOk.ad?order=like',//호출 URL을 설정한다. GET방식일경우 뒤에 파라티터를 붙여서 사용해도된다.
		dataType: "text",// 호출한 페이지의 형식이다.xml, json, html, text등의 여러 방식을 사용할 수 있다.
		error: function() {
			alert("통신실패!!!!");
		},
		success: function(Parse_data) {
			$("#list-content").html(Parse_data); //div에 받아온 값을 넣는다.
			//alert("통신 데이터 값 : " + Parse_data);
		}

	});
	tmp = 3;

})


var page;

var total = $('.cafe-count').text();

var rowCount = 21;

var pageCount = 5;

var startRow = (parseInt(page) - 1) * rowCount;

var endPage = parseInt(Math.ceil(parseInt(page) / parseFloat(pageCount)) * pageCount);

var startPage = endPage - (pageCount - 1);

var realEndPage = parseInt(Math.ceil(total / parseFloat(rowCount)));

var endPage = endPage > realEndPage ? realEndPage : endPage;


//페이징
$('#paging').on('click', ".pageBtn", function() {
	//$('#list-content').load('${pageContext.request.contextPath}/admin/adminMemberCheckOk.ad?page='+$(this).text());
	//window.location.href='/admin/adminMemberCheckOk.ad?page='+$(this).text().trim();

	page = $(this).text().trim()

	console.log($(this).text());
	if (tmp == 1) {

		$.ajax({
			type: "GET", //전송방식을 지정한다 (POST,GET)
			url: '/admin/adminCafeListOk.ad?page=' + $(this).text().trim(),//호출 URL을 설정한다. GET방식일경우 뒤에 파라티터를 붙여서 사용해도된다.
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
			url: '/admin/adminCafeListOk.ad?order=comment&page=' + $(this).text().trim(),//호출 URL을 설정한다. GET방식일경우 뒤에 파라티터를 붙여서 사용해도된다.
			dataType: "text",//호출한 페이지의 형식이다. xml,json,html,text등의 여러 방식을 사용할 수 있다.
			error: function() {
				alert("통신실패!!!!");
			},
			success: function(Parse_data) {
				$("#list-content").html(Parse_data); //div에 받아온 값을 넣는다.
				//alert("통신 데이터 값 : " + Parse_data);
			}

		});
	} else {
		$.ajax({
			type: "GET", //전송방식을 지정한다 (POST,GET)
			url: '/admin/adminCafeListOk.ad?order=like&page=' + $(this).text().trim(),//호출 URL을 설정한다. GET방식일경우 뒤에 파라티터를 붙여서 사용해도된다.
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


console.log(startPage + "start 출력");
//prev 버튼
$('#paging').on('click', ".prev", function() {
	 
	if (tmp == 1) {

		$.ajax({
			type: "GET", //전송방식을 지정한다 (POST,GET)
			url: '/admin/adminCafeListOk.ad?page=' + (startPage-1),//호출 URL을 설정한다. GET방식일경우 뒤에 파라티터를 붙여서 사용해도된다.
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
			url: '/admin/adminCafeListOk.ad?order=comment&page=' + (startPage-1),//호출 URL을 설정한다. GET방식일경우 뒤에 파라티터를 붙여서 사용해도된다.
			dataType: "text",//호출한 페이지의 형식이다. xml,json,html,text등의 여러 방식을 사용할 수 있다.
			error: function() {
				alert("통신실패!!!!");
			},
			success: function(Parse_data) {
				$("#list-content").html(Parse_data); //div에 받아온 값을 넣는다.
				//alert("통신 데이터 값 : " + Parse_data);
			}

		});
	} else {
		$.ajax({
			type: "GET", //전송방식을 지정한다 (POST,GET)
			url: '/admin/adminCafeListOk.ad?order=like&page=' + (startPage-1),//호출 URL을 설정한다. GET방식일경우 뒤에 파라티터를 붙여서 사용해도된다.
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
console.log(endPage + " end출력");
//next
$('#paging').on('click', ".next", function() {
	
	if (tmp == 1) {

		$.ajax({
			type: "GET", //전송방식을 지정한다 (POST,GET)
			url: '/admin/adminCafeListOk.ad?page=' + (endPage + 1),//호출 URL을 설정한다. GET방식일경우 뒤에 파라티터를 붙여서 사용해도된다.
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
			url: '/admin/adminCafeListOk.ad?order=comment&page=' + (endPage + 1),//호출 URL을 설정한다. GET방식일경우 뒤에 파라티터를 붙여서 사용해도된다.
			dataType: "text",//호출한 페이지의 형식이다. xml,json,html,text등의 여러 방식을 사용할 수 있다.
			error: function() {
				alert("통신실패!!!!");
			},
			success: function(Parse_data) {
				$("#list-content").html(Parse_data); //div에 받아온 값을 넣는다.
				//alert("통신 데이터 값 : " + Parse_data);
			}

		});
	} else {
		$.ajax({
			type: "GET", //전송방식을 지정한다 (POST,GET)
			url: '/admin/adminCafeListOk.ad?order=like&page=' + (endPage + 1),//호출 URL을 설정한다. GET방식일경우 뒤에 파라티터를 붙여서 사용해도된다.
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


// 검색
/*$(document).ready(function() {
	$(".cafe-search > form > input").on("keyup", function() {
		var value = $(this).val().toLowerCase();
		console.log(value);
		// 클래스로 어디 검색 할지 정할수있다.
		$(".cafe-check > ul > li").filter(function(){
			$(this).toggle($(this).text().toLowerCase().indexOf(value) > -1);
		});
	});
});*/

$('.cafe-search > form > button').on('click', function() {
	var studyCafeName = $('.cafe-search > form > input').val();
	$.ajax({
		type: "GET",
		url: "/admin/adminCafeListOk.ad",
		data: { studyCafeName: studyCafeName },
		success: function(Parse_data) {
			$("#list-content").html(Parse_data); //div에 받아온 값을 넣는다.
			//alert("통신 데이터 값 : " + Parse_data);
		},
		error: function() {
			alert("통신 실패");
		}
	});
})

// 삭제 버튼 누를 시 경고창으로 삭제하시겠습니까? 알림 후 삭제
/*$cafeDelete.on('click', function() {
	var isDelete = confirm('해당 카페 데이터를 삭제하시겠습니까?');
	if (isDelete == true) {
		$(this).parent().parent().parent().hide();
	}
})*/


//삭제 새로고침 해야함
$(document).each(function() {
	$('.cafe-check > ul > li').on('click', '.delete', function() {
		console.log("출력");
		var studyCafenumber = $(this).parent().prev().val();
		//console.log(studyCafenumber);


		$.ajax({
			type: "GET",
			url: "/admin/adminCafeDeleteOk.ad",
			data: { studyCafeNumber: studyCafenumber },
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







