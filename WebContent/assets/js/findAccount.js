function openModal() {
  document.getElementById('modal').style.display = 'block';
}

window.onload = function() {
  document.getElementById('findPasswordForm').addEventListener('submit', function(event) {
    event.preventDefault();

    const memberEmail = document.getElementById('email').value;
    const memberId = document.getElementById('Id').value;


    console.log("memberEmail: ", memberEmail);
    console.log("memberId: ", memberId);

    // Ajax를 사용하여 서버에 이메일과 아이디가 존재하는지 확인 요청
    $.ajax({
      url: '/member/findAccountOk.me',
      type: 'POST',
      data: {
        memberEmail: memberEmail,
        memberId: memberId
      },
	dataType: 'text',
      success: function(response) {
        console.log("Server response: "+ response);
        if (response == 'success') {
          // 모달 열기
          openModal();
        } else {
          alert('일치하는 회원 정보가 없습니다.');
        }
      }
    });
  });

  // 모달창 닫기 버튼 이벤트 처리
  document.querySelector('.close').addEventListener('click', function() {
    document.getElementById('modal').style.display = 'none';
  });

  // 모달창 외부 클릭 이벤트 처리
  window.addEventListener('click', function(event) {
    if (event.target == document.getElementById('modal')) {
      document.getElementById('modal').style.display = 'none';
    }
  });
}; // 여기서 중괄호와 소괄호의 위치를 수정했습니다.












