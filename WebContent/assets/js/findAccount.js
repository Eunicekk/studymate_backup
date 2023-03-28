/**
 * 
 */

// 모달창 열기
function openModal() {
  const modal = document.getElementById("myModal");
  modal.style.display = "block";

  // setTimeout(function () {
  //   modal.style.display = "none";
  // }, 3000); // 3초 뒤 모달 창 닫기
}

// 모달창 닫기
const closeBtn = document.getElementsByClassName("close")[0];

closeBtn.onclick = function () {
  const modal = document.getElementById("myModal");
  modal.style.display = "none";
};

/*  이 코드는 JavaScript로 작성된 모달창을 제어하는 코드입니다. 간단히 설명하면 다음과 같습니다.

openModal() 함수: 이 함수는 모달창을 열 때 실행됩니다. 
var modal = document.getElementById("myModal"); 코드를 통해 
HTML에서 id가 "myModal"인 요소를 찾아서 modal 변수에 할당합니다. 
그리고 modal.style.display = "block"; 코드를 통해 모달창의 display 속성을 "block"으로 설정합니다.
 이렇게 하면 모달창이 화면에 보이게 됩니다.

closeBtn.onclick 이벤트 핸들러: var closeBtn = document.getElementsByClassName("close")[0]; 
코드를 통해 HTML에서 class가 "close"인 요소 중 첫 번째 요소를 찾아서 closeBtn 변수에 할당합니다.
 그리고 closeBtn.onclick 이벤트 핸들러를 등록합니다. 이 핸들러는 클릭 이벤트가 발생했을 때 실행됩니다.
  실행되면 var modal = document.getElementById("myModal"); 코드를 통해 모달창 요소를 찾아서 
  modal 변수에 할당합니다. 그리고 modal.style.display = "none"; 코드를 통해 모달창의 display 속성을
   "none"으로 설정합니다. 이렇게 하면 모달창이 화면에서 사라지게 됩니다. */

// function openModal() {
//   // 여기에 모달 관련 코드를 유지하고 페이지 이동을 추가합니다.
//   location.href = "login.jsp";
// }

const submitBtn = document.getElementById("submit-btn");
const cancelBtn = document.getElementById("cancel-btn");

submitBtn.onclick = function () {
  const newPassword = document.getElementById("new-password").value;
  const confirmPassword = document.getElementById("confirm-password").value;

  if (newPassword === confirmPassword) {
    // 여기에 비밀번호 변경 로직을 추가하세요.
    alert("비밀번호가 변경되었습니다.");
    closeModal();
  } else {
    alert("비밀번호가 일치하지 않습니다. 다시 시도하세요.");
  }
};

cancelBtn.onclick = function () {
  closeModal();
};
