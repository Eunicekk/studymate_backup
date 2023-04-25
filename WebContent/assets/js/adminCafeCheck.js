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

if (cafeTmp == 1) {
	$cafeAlign01.children().css('color', '#000000');
	$cafeAlign01.children('material-symbols-outlined').css('color', '#65619E');
	$cafeAlign02.children().css('color', '#bdbdbd');
	$cafeAlign03.children().css('color', '#bdbdbd');
}

if (cafeTmp == 2) {
	$cafeAlign02.children().css('color', '#000000');
	$cafeAlign02.children('material-symbols-outlined').css('color', '#65619E');
	$cafeAlign01.children().css('color', '#bdbdbd');
	$cafeAlign03.children().css('color', '#bdbdbd');
}

if (cafeTmp == 3) {
	$cafeAlign03.children().css('color', '#000000');
	$cafeAlign03.children('material-symbols-outlined').css('color', '#65619E');
	$cafeAlign01.children().css('color', '#bdbdbd');
	$cafeAlign02.children().css('color', '#bdbdbd');
}


// 정렬 버튼 클릭 시 css 변화
$cafeAlign01.on('click', function() {
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
	cafeTmp = 1;

})
$cafeAlign02.on('click', function() {
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
	cafeTmp = 2;

})
$cafeAlign03.on('click', function() {
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
	cafeTmp = 3;

})

var cafeTmp;
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
	if (cafeTmp == 1 || cafeTmp == undefined) {

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
	} else if (cafeTmp == 2) {
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
	} else if (cafeTmp == 3) {
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
	} else {
		var CafeName = $('.cafe-search > form > input').val();
		$.ajax({
			type: "GET",
			url: "/admin/adminCafeSearchOk.ad?page=" + $(this).text().trim(),
			data: { CafeName: CafeName },
			success: function(Parse_data) {
				$("#list-content").html(Parse_data); //div에 받아온 값을 넣는다.
				//alert("통신 데이터 값 : " + Parse_data);
				$('.cafe-search > form > input').val(CafeName);
			},
			error: function() {
				alert("통신 실패");
			}
		});
	}

});


console.log(startPage + "start 출력");
//prev 버튼
$('#paging').on('click', ".prev", function() {

	if (cafeTmp == 1 || cafeTmp == undefined) {

		$.ajax({
			type: "GET", //전송방식을 지정한다 (POST,GET)
			url: '/admin/adminCafeListOk.ad?page=' + (startPage - 1),//호출 URL을 설정한다. GET방식일경우 뒤에 파라티터를 붙여서 사용해도된다.
			dataType: "text",//호출한 페이지의 형식이다. xml,json,html,text등의 여러 방식을 사용할 수 있다.
			error: function() {
				alert("통신실패!!!!");
			},
			success: function(Parse_data) {
				//alert("통신 데이터 값 : " + Parse_data);
				$("#list-content").html(Parse_data); //div에 받아온 값을 넣는다.
			}

		});
	} else if (cafeTmp == 2) {
		$.ajax({
			type: "GET", //전송방식을 지정한다 (POST,GET)
			url: '/admin/adminCafeListOk.ad?order=comment&page=' + (startPage - 1),//호출 URL을 설정한다. GET방식일경우 뒤에 파라티터를 붙여서 사용해도된다.
			dataType: "text",//호출한 페이지의 형식이다. xml,json,html,text등의 여러 방식을 사용할 수 있다.
			error: function() {
				alert("통신실패!!!!");
			},
			success: function(Parse_data) {
				$("#list-content").html(Parse_data); //div에 받아온 값을 넣는다.
				//alert("통신 데이터 값 : " + Parse_data);
			}

		});
	} else if(cafeTmp == 3) {
		$.ajax({
			type: "GET", //전송방식을 지정한다 (POST,GET)
			url: '/admin/adminCafeListOk.ad?order=like&page=' + (startPage - 1),//호출 URL을 설정한다. GET방식일경우 뒤에 파라티터를 붙여서 사용해도된다.
			dataType: "text",//호출한 페이지의 형식이다. xml,json,html,text등의 여러 방식을 사용할 수 있다.
			error: function() {
				alert("통신실패!!!!");
			},
			success: function(Parse_data) {
				$("#list-content").html(Parse_data); //div에 받아온 값을 넣는다.
				//alert("통신 데이터 값 : " + Parse_data);
			}

		});
	}else{
		var CafeName = $('.cafe-search > form > input').val();
		$.ajax({
			type: "GET",
			url: "/admin/adminCafeSearchOk.ad?page=" + (startPage - 1),
			data: { CafeName: CafeName },
			success: function(Parse_data) {
				$("#list-content").html(Parse_data); //div에 받아온 값을 넣는다.
				//alert("통신 데이터 값 : " + Parse_data);
				$('.cafe-search > form > input').val(CafeName);
			},
			error: function() {
				alert("통신 실패");
			}
		});
	}
});
console.log(endPage + " end출력");
//next
$('#paging').on('click', ".next", function() {

	if (cafeTmp == 1 || cafeTmp == undefined) {

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
	} else if (cafeTmp == 2) {
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
	} else if(cafeTmp ==3 ){
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
	}else {
		var CafeName = $('.cafe-search > form > input').val();
		$.ajax({
			type: "GET",
			url: "/admin/adminCafeSearchOk.ad?page=" + (endPage + 1),
			data: { CafeName: CafeName },
			success: function(Parse_data) {
				$("#list-content").html(Parse_data); //div에 받아온 값을 넣는다.
				//alert("통신 데이터 값 : " + Parse_data);
				$('.cafe-search > form > input').val(CafeName);
			},
			error: function() {
				alert("통신 실패");
			}
		});
	}
});


// 검색
$('.cafe-search > form > button').on('click', function() {
	var CafeName = $('.cafe-search > form > input').val();
	console.log(CafeName);
	$.ajax({
		type: "GET",
		url: "/admin/adminCafeSearchOk.ad",
		data: { CafeName: CafeName },
		success: function(Parse_data) {
			$("#list-content").html(Parse_data); //div에 받아온 값을 넣는다.
			//alert("통신 데이터 값 : " + Parse_data);
			$('.cafe-search > form > input').val(CafeName);
		},
		error: function() {
			alert("통신 실패");
		}
	});
	cafeTmp = 4;
})



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







