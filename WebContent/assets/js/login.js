var naverLogin = new naver.LoginWithNaverId(
   {
      clientId: "X99B0v1qTl2Qfyuakscx", //내 애플리케이션 정보에 cliendId를 입력해줍니다.
      callbackUrl: "http://localhost:8085/member/login.me", // 내 애플리케이션 API설정의 Callback URL 을 입력해줍니다.
      isPopup: false,
   }
);

naverLogin.init();

window.addEventListener('load', function() {
   naverLogin.getLoginStatus(function(status) {
      console.log('안녕');
      if (status) {

         console.log(naverLogin.user); //사용자 정보를 받을수 있습니다.
         //console.log(naverLogin.accessToken.accessToken);
         var email = naverLogin.user.getEmail(); // 필수로 설정할것을 받아와 아래처럼 조건문을 줍니다.
         var Nickname = naverLogin.user.getNickName();
         var Id = naverLogin.user.getId();
         console.log(email);
         console.log(Nickname);
         console.log(Id);

         if (email == undefined || email == null) {
            alert("이메일은 필수정보입니다. 정보제공을 동의해주세요.");
            /* (5-1) 사용자 정보 재동의를 위하여 다시 네아로 동의페이지로 이동함 */
            naverLogin.reprompt();
            return;
         } else if (Nickname == undefined || Nickname == null) {
            alert("회원이름은 필수정보입니다. 정보제공을 동의해주세요.");
            naverLogin.reprompt();
            return;
         } else {
            // 성공|
            sessionStorage.setItem("Nemail", email);
            sessionStorage.setItem("Nnickname", Nickname);
            sessionStorage.setItem("NId", Id);
            console.log(sessionStorage.getItem("Nemail"));
            console.log(sessionStorage.getItem("Nnickname"));
            console.log(sessionStorage.getItem("NId"));

            $.ajax({
               url: "/member/NcallbackOk.me",
               type: "get",
               data: { Nemail: email, Nnickname: Nickname ,NId:Id},
               success: function(response) {
                  console.log("값이 들어갈까 1  ?");
                  console.log("Server response: " + response);
                  
                  if (response === "success") {
                     console.log("값이 들어갈까  2?");
                     window.location.href = "http://localhost:8085/Main.ma";
                  }
               }
            });


         }
      } else {
         console.log("callback 처리에 실패하였습니다.");
      }
   });
});

var testPopUp;

function openPopUp() {
   testPopUp = window.open(
      "https://nid.naver.com/nidlogin.logout",
      "_blank",
      "toolbar=yes,scrollbars=yes,resizable=yes,width=1,height=1"
   );
}

function closePopUp() {
   testPopUp.close();
}

function naverLogout() {
   openPopUp();
   setTimeout(function() {
      closePopUp();
   }, 1000);
}