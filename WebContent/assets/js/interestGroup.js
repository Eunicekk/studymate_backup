
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
		url: '/mypage/MyPageInterestGroupOk.my?page=' + $(this).text().trim(),
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
		url: '/mypage/MyPageInterestGroupOk.my?'+(startPage-1),
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
		url: '/mypage/MyPageInterestGroupOk.my?page=' + (endPage + 1),
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

$('.fas').on('click', function() {
	if (confirm("삭제 하시겠습니까?")) {
    var studyGroupNumber = $(this).data('studygroupnumber'); // 클릭한 예약의 아이디를 가져옵니다.
    console.log(studyGroupNumber);
    $.ajax({
        url: '/mypage/MyPageInterestGroupDeleteOk.my', // 예약 삭제 처리를 담당하는 서버의 URL입니다.
        type: 'POST', // 예약 삭제는 POST 방식으로 처리합니다.
        data: { // 삭제할 예약의 아이디를 전달합니다.
            studyGroupNumber: studyGroupNumber
        },
        success: function(response) {
			location.reload();
        },
        error: function(xhr, status, error) {
			alert("실패하였습니다.")
        }
    });
}
});

	