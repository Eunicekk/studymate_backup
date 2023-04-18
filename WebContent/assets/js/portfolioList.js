/*const portfolioInfoContainer = document.querySelector(
  ".portfolio-info-container"
);

portfolioInfoContainer.addEventListener("click", () => {
  window.location.href = "/mypage/MyPagePortfolioOk.my"; // 수정 사이트 URL에는 실제 URL을 입력하세요.
});

*/

var tmp = 1;

var page = 1;

var total = $('.list-total').text();

var rowCount = 10;

var pageCount = 5;

var startRow = (parseInt(page) - 1) * rowCount;

var endPage = parseInt(Math.ceil(parseInt(page) / parseFloat(pageCount)) * pageCount);

var startPage = endPage - (pageCount - 1);

var realEndPage = parseInt(Math.ceil(total / parseFloat(rowCount)));

var endPage = endPage > realEndPage ? realEndPage : endPage;

$('#paging').on('click', ".pageBtn", function() {
page = $(this).text().trim()
	console.log($(this).text().trim());
	if (tmp == 1) {
		$.ajax({
			type: "GET", //전송방식을 지정한다 (POST,GET)
			url: '/mypage/MyPagePortfolioOk.my?page=' + $(this).text().trim(),//호출 URL을 설정한다. GET방식일경우 뒤에 파라티터를 붙여서 사용해도된다.
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