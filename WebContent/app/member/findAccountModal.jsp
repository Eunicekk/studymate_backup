<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>아이디 및 비밀번호</title>
	<style>
		.modal {
		  display: none;
		  position: fixed;
		  z-index: 1;
		  left: 0;
		  top: 0;
		  width: 100%;
		  height: 100%;
		  overflow: auto;
		  background-color: rgba(0,0,0,0.4);
		}

		.modal-content {
		  background-color: #fefefe;
		  margin: 15% auto;
		  padding: 20px;
		  border: 1px solid #888;
		  width: 30%;
		  box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
		}

		.close {
		  color: #aaa;
		  float: right;
		  font-size: 28px;
		  font-weight: bold;
		}

		.close:hover,
		.close:focus {
		  color: black;
		  text-decoration: none;
		  cursor: pointer;
		}

		.modal-header {
		  padding: 2px 16px;
		  background-color: #5cb85c;
		  color: white;
		}

		.modal-body {
		  padding: 2px 16px;
		}

		.modal-footer {
		  padding: 2px 16px;
		  background-color: #5cb85c;
		  color: white;
		}
	</style>
</head>
<body>
	<div class="modal">
		<div class="modal-content">
			<div class="modal-header">
				<span class="close">&times;</span>
				<h2>아이디 및 비밀번호</h2>
			</div>
			<div class="modal-body">
				<p>회원님의 아이디는 <strong>${memberId}</strong>이고, 비밀번호는 <strong>${memberPw}</strong>입니다.</p>
			</div>
			<div class="modal-footer">
				<button onclick="closeModal()">Close</button>
			</div>
		</div>
	</div>
	<script>
		var modal = document.getElementsByClassName('modal')[0];
		var span = document.getElementsByClassName("close")[0];

		span.onclick = function() {
		  closeModal();
		}

		window.onclick = function(event) {
		  if (event.target == modal) {
		    closeModal();
		  }
		}

		function openModal() {
			modal.style.display = "block";
		}

		function closeModal() {
			modal.style.display = "none";
		}
	</script>
</body>
</html>
