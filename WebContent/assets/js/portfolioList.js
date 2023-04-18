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