
var tmp = 1;

var page = 1;

var total = $('.list-total').text();

var rowCount = 6;

var pageCount = 5;

var startRow = (parseInt(page) - 1) * rowCount;

var endPage = parseInt(Math.ceil(parseInt(page) / parseFloat(pageCount)) * pageCount);

var startPage = endPage - (pageCount - 1);

var realEndPage = parseInt(Math.ceil(total / parseFloat(rowCount)));

var endPage = endPage > realEndPage ? realEndPage : endPage;

$('#paging').on('click', ".pageBtn", function() {
	page = $(this).text().trim()
	console.log($(this).text().trim());
	$.ajax({
		type: "GET", 
		url: '/mypage/MyPageInterestPlaceOk.my?page=' + $(this).text().trim(),
		dataType: "text",
		error: function() {
			alert("통신실패!!!!");
		},
		success: function(Parse_data) {
			$("#list-content").html(Parse_data); 
		}
	});
}
);

$('#paging').on('click', ".prev", function() {
	console.log("prev");
	$.ajax({
		type: "GET", 
		url: '/mypage/MyPageInterestPlaceOk.my?'+(startPage-1),
		dataType: "text",
		error: function() {
			alert("통신실패!!!!");
		},
		success: function(Parse_data) {
			$("#list-content").html(Parse_data); 
		}
	});
}
);

$('#paging').on('click', ".next", function() {
	console.log("next");
	$.ajax({
		type: "GET",
		url: '/mypage/MyPageInterestPlaceOk.my?page=' + (endPage + 1),
		dataType: "text",
		error: function() {
			alert("통신실패!!!!");
		},
		success: function(Parse_data) {
			$("#list-content").html(Parse_data);
		}
	});
}
);