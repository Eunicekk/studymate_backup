// // cancel-btn 누르면 삭제되는 이벤트
// $(document).ready(function () {
//   // 취소 버튼 클릭 이벤트 핸들러
//   $(".cancel-btn").click(function () {
//     // 경고창 띄우기
//     if (confirm("정말 삭제하시겠습니까?")) {
//       // 확인 버튼 눌렀을 경우, 부모 li 엘리먼트 삭제
//       $(this).parents().parents().remove();
//     }
//   });
// });

// $(document).ready(function () {
//   // side 클래스를 가진 li 요소 클릭 이벤트 핸들러
//   $(".side").click(function () {
//     // 현재 클릭한 요소의 active 클래스 추가
//     $(this).addClass("active");
//     // 다른 li 요소에서 active 클래스 제거
//     $(this).siblings().removeClass("active");
//   });
// });

$(".cancel-btn").on("click", function () {
  var isDelete = confirm("해당 회원 데이터를 삭제하시겠습니까?");
  if (isDelete == true) {
    $(this).parent().parent().hide();
  }
});
