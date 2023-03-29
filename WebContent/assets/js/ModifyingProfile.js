$(document).ready(function () {
  // cancel-btn 클릭 시
  $(".cancel-btn").click(function () {
    // 클릭된 버튼의 부모 li 태그를 삭제
    $(this).closest("li").remove();
  });
});

$(document).ready(function () {
  // side 클래스를 가진 li 요소 클릭 이벤트 핸들러
  $(".side").click(function () {
    // 현재 클릭한 요소의 active 클래스 추가
    $(this).addClass("active");
    // 다른 li 요소에서 active 클래스 제거
    $(this).siblings().removeClass("active");
  });
});

// 회원 탈퇴 처리
$(document).ready(function () {
  $(".withdrawal").click(function () {
    if (confirm("회원 탈퇴 하시겠습니까?")) {
      if (confirm("한번 더 확인하시겠습니까?")) {
        $.ajax({
          url: "회원탈퇴처리URL", // 회원탈퇴 처리를 위한 URL
          method: "POST", // POST 방식으로 요청
          success: function (response) {
            alert("탈퇴가 완료되었습니다.");
            // 여기에 회원 탈퇴 처리 이후의 코드를 추가할 수 있습니다.
          },
          error: function (xhr, status, error) {
            alert("회원 탈퇴 처리 중 오류가 발생했습니다.");
            console.error(error);
          },
        });
      }
    }
  });
});

//회원 정보 수정 처리
$(document).ready(function () {
  $(".modificationCompleted").click(function () {
    var nickname = $("#nickname").val();
    var phonenumber = $("#phonenumber").val();
    var pw = $("#pw").val();
    var chkPw = $("#chkPw").val();
    var email = $("#email").val();

    // 필요한 폼 데이터를 가져와서 변수에 저장합니다.

    if (
      nickname == "" ||
      phonenumber == "" ||
      pw == "" ||
      chkPw == "" ||
      email == ""
    ) {
      alert("필수 항목을 모두 입력해주세요.");
      return false;
    }

    // 필수 항목이 입력되었는지 확인합니다.

    if (pw != chkPw) {
      alert("새 비밀번호와 확인 비밀번호가 일치하지 않습니다.");
      return false;
    }

    // 새 비밀번호와 확인 비밀번호가 일치하는지 확인합니다.

    $.ajax({
      url: "회원정보수정처리URL", // 회원정보 수정 처리를 위한 URL
      method: "POST", // POST 방식으로 요청
      data: {
        nickname: nickname,
        phonenumber: phonenumber,
        pw: pw,
        email: email,
      },
      success: function (response) {
        alert("수정이 완료되었습니다.");
        // 여기에 수정 이후의 코드를 추가할 수 있습니다.
      },
      error: function (xhr, status, error) {
        alert("회원정보 수정 중 오류가 발생했습니다.");
        console.error(error);
      },
    });
  });
});
