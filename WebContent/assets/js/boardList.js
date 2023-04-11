/**
 * 상세페이지 눌렀을 때 boardNumber 비교해서 boardRead로 넘어가게끔 설정
 */
 
/*$(document).ready(function() {
  $('.content-subject').click(function(e) {
    e.preventDefault(); // a 태그 기본 동작(이동) 방지
    var boardNumber = $(this).attr('href').match(/boardNumber=(\d+)/)[1]; // boardNumber 추출
    if (boardNumber) { // boardNumber가 있는 경우
      window.location.href = '${pageContext.request.contextPath}/board/boardReadOk.bo?boardNumber=' + boardNumber;
    }
  });
});*/
/*$(document).ready(function() {
  $('.content-subject').on('click', function(e) {
    e.preventDefault();
    var url = $(this).attr('href');
    location.href = url;
  });
});*/

