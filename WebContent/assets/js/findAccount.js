// 모달창 띄우기
function openModal(event) {
  event.preventDefault();
  var modal = document.getElementById("myModal");
  var span = document.getElementsByClassName("close")[0];
  var submitBtn = document.getElementById("submit-btn");
  var cancelBtn = document.getElementById("cancel-btn");
  var memberId = document.getElementById("member-id").value;
  var memberPassword = document.getElementById("member-password").value;

  document.getElementById("member-id").value = memberId;
  document.getElementById("member-password").value = memberPassword;

  modal.style.display = "block";
  span.onclick = function() {
    modal.style.display = "none";
  }
  submitBtn.onclick = function() {
    modal.style.display = "none";
  }
  cancelBtn.onclick = function() {
    modal.style.display = "none";
  }
}

// 모달창 닫기
function closeModal() {
  var modal = document.getElementById("myModal");
  modal.style.display = "none";
}

// 모달창 바깥 영역 클릭 시 닫기
window.onclick = function(event) {
  var modal = document.getElementById("myModal");
  if (event.target == modal) {
    modal.style.display = "none";
  }
}
