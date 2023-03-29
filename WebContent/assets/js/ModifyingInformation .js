$(document).ready(function () {
  // side 클래스를 가진 li 요소 클릭 이벤트 핸들러
  $(".side").click(function () {
    // 현재 클릭한 요소의 active 클래스 추가
    $(this).addClass("active");
    // 다른 li 요소에서 active 클래스 제거
    $(this).siblings().removeClass("active");
  });
});

// 사용자 정보 수정 버튼 클릭 시 호출되는 함수
function updateUser() {
  const name = $("#user-name-input").val();
  const password = $("#user-password-input").val();
  const profileImage = $("#user-profile-input").val();

  $.ajax({
    url: "주소입력",
    type: "PUT",
    dataType: "json",
    data: {
      name: name,
      password: password,
      profileImage: profileImage,
    },
    success: function (data) {
      // 사용자 정보를 업데이트하는 데 성공한 경우
      alert("사용자 정보가 업데이트되었습니다.");
    },
    error: function (error) {
      // 사용자 정보를 업데이트하는 데 실패한 경우
      console.log(error);
    },
  });
}
// 사용자 정보 수정 버튼 클릭 시 호출되는 함수
function updateUser() {
  const name = $("#user-name-input").val();
  const password = $("#user-password-input").val();
  const profileImage = $("#user-profile-input").val();

  $.ajax({
    url: "주소입력",
    type: "PUT",
    dataType: "json",
    data: {
      name: name,
      password: password,
      profileImage: profileImage,
    },
    success: function (data) {
      // 사용자 정보를 업데이트하는 데 성공한 경우
      alert("사용자 정보가 업데이트되었습니다.");
    },
    error: function (error) {
      // 사용자 정보를 업데이트하는 데 실패한 경우
      console.log(error);
    },
  });
}
