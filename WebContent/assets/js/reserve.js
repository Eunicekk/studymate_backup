$(document).ready(function () {
  // side 클래스를 가진 li 요소 클릭 이벤트 핸들러
  $(".side").click(function () {
    // 현재 클릭한 요소의 active 클래스 추가
    $(this).addClass("active");
    // 다른 li 요소에서 active 클래스 제거
    $(this).siblings().removeClass("active");
  });
});

/*// 예약 취소 버튼
$(".cancel-button").click(function () {
  // 예약 정보를 담고 있는 li 태그를 찾아서 삭제
  $(this).closest(".reserve-item").remove();
});*/
