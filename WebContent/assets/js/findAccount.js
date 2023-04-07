var modal = document.getElementById("myModal");
var span = document.getElementsByClassName("close")[0];

function openModal() {
    var email = document.getElementById("email").value;
    var id = document.getElementById("Id").value;
    if (email && id) {
        document.getElementById("modalEmail").value = email;
        document.getElementById("modalId").value = id;
        modal.style.display = "block";
    } else {
        alert("이메일과 아이디를 입력해주세요.");
    }
}

span.onclick = function () {
    modal.style.display = "none";
}

window.onclick = function (event) {
    if (event.target === modal) {
        modal.style.display = "none";
    }
}
