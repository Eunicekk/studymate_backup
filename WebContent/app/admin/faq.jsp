<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="../css/FAQ.css">
    <link rel="stylesheet" href="../resource/reset.css">
</head>
<body>
    <header></header>


    <!-- 메인  -->
    <main>
        <!-- 배너 -->
        <section class="topBanner-container">
            <div class="topBanner-textBox">
                <p>자주하는 질문 FAQ</p>
                <p>자주 찾으시는 질문을 모아 보았어요. </p>
                <div class="boardContent-editButtons">
                    <!-- 현재 로그인한 아이디or멤버넘버, 현재 게시글 아이디or멤버넘버 비교하기 c:if-->
                    <button type="button" class="boardContent-delete">등록</button>
                    <button type="button" class="boardContent-edit">수정</button>
                    <button type="button" class="boardContent-delete">삭제</button>
                </div>
            </div>
        </section>

        <!-- 자주하는 질문 리스트  -->
        <section class="NoticeContent-container">
            <div class="NoticeContent-titleBox">
                <h2> 어떤 것이 궁금하신가요? 언제나 더 나은 서비스를 위해 노력하겠습니다 ! </h2>
            </div>


            <ul>
                <!-- 1/6 -->
                <li>
                    <button type="button" class="NoticeContent-serviceItemButton" >
                        <p>1</p>
                        <div class="serviceItem-titleDate">
                            <p>계정 문의</p>
                            <div>
                                <img src="https://cdn-icons-png.flaticon.com/512/892/892498.png" class="serviceItem-ExtraButton" width="20px" height="20px">
                            </div>
                        </div>
                    </button>
                    <!-- 팝업 창 -->
                    <div class="serviceItem-contentBox">
                        
                            <h2> Q. 아이디/비밀번호가 기억나지 않아요.</h2>
                            <br>
                            <p>
                                쉐어잇의 ID/PW는 고객님께서 직접 확인하실 수 있습니다.
                            </p> 
                            <p>
                                로그인 화면 하단의 아이디/비밀번호 찾기를 이용해주세요.
                            </p> 
                            <br>
                            <br>
                            <br>
                            <h2>  Q. 아이디를 바꾸고 싶어요.</h2>
                            <p>
                                가입 시 입력해 주시는 이메일 형식의 아이디는 추후 변경이 불가한 점 양해 부탁드립니다.
                            </p> 
                            <br>
                            <br>
                            <br>
                            <h2>  Q. 회원 탈퇴를 하고 싶어요.</h2>
                            <p>
                                마이페이지 → 개인정보 수정에서 탈퇴가 가능합니다.
                            </p> 
                            <p>
                                불만 및 건의사항이 있으시다면,
                            </p> 
                            <p>
                                스터디메이트 1:1 문의(maybe.studymate.channel)를 이용하면 빠른 처리 도와 드리겠습니다. :)
                            </p> 
                            <br>
                            <br>
                            <br>
                            <h2>  Q. 탈퇴 후 재가입이 되나요?</h2>
                            <p>
                                네. 탈퇴하셔도 언제든지 재가입이 가능합니다.
                            </p> 

                        
                    </div> 
                </li>

                <!-- 2/6 -->
                <li>
                    <button type="button" class="NoticeContent-serviceItemButton">
                        <p>2</p>
                        <div class="serviceItem-titleDate">
                            <p>예약 문의</p>
                            <div>
                                <img src="https://cdn-icons-png.flaticon.com/512/892/892498.png" alt="" width="20px" height="20px">
                            </div>
                        </div>
                    </button>
                    <!-- 팝업 창 -->
                    <div class="serviceItem-contentBox">
                        
                        <h2> Q. 당일 예약을 하고 싶어요.</h2>
                        <br>
                        <p>
                            상품에 따라 당일예약 가능 여부가 다르게 설정되어 있습니다.
                        </p> 
                        <p>
                            실제 예약 진행을 통해 당일 예약 가능 여부를 확인할 수 있습니다.
                        </p> 
                        <br>
                        <br>
                        <br>
                        <h2>  Q. 예약을 접수했는데, 진행 및 확정 여부는 어디서 볼 수 있나요?</h2>
                        <p>
                            쉐어잇 관리 상품(별도문의 포함 일부 상품)의 경우,
                        </p> 
                        <p>
                            예약 문의 내용이 마이페이지에 노출되지 않습니다.
                        </p> 
                        <p>
                            담당자가 문의 확인 후 순차적으로 유선을 통해 답변 드립니다.
                        </p> 
                        <br>
                        <br>
                        <br>
                        <h2>  Q. 예약 일정, 시간 등을 변경하고 싶어요.</h2>
                        <p>
                            예약 접수 및 확정 후에는 예약 일정 및 시간 변동이 어렵습니다.
                        </p> 
                        <p>
                            예약 취소 후 다시 접수 부탁드립니다.
                        </p> 
                        <br>
                        <br>
                        <br>
                    

                    
                </div> 
                </li>
                <!-- 3/6 -->
                        <li>
                    <button type="button" class="NoticeContent-serviceItemButton">
                        <p>3</p>
                        <div class="serviceItem-titleDate">
                            <p>결제 문의</p>
                            <div>
                                <img src="https://cdn-icons-png.flaticon.com/512/892/892498.png" alt="" width="20px" height="20px">
                            </div>
                        </div>
                    </button>
                    <!-- 팝업 창 -->
                    <div class="serviceItem-contentBox">
                        
                        <h2> Q. 결제창이 안 보여요.</h2>
                        <br>
                        <p>
                            결제창은 마이페이지 → 예약 내역에서 확인할 수 있습니다.
                        </p> 
                        <p>
                            승인 상품은 예약 접수 후 호스트의 승인이 필요하며,
                        </p> 
                        <p>
                            호스트 승인이 완료되면 결제창이 활성화 됩니다.
                        </p> 
                        <br>
                        <br>
                        <br>
                        <h2>  Q. 결제 수단에는 어떤 것들이 있나요?</h2>
                        <p>
                            결제 수단은 계좌이체 또는 신용카드 결제가 가능합니다.
                        </p> 
                        <br>
                        <br>
                        <br>
                        <h2>  Q. 결제수단을 변경하고 싶어요.</h2>
                        <p>
                            결제수단은 결제 후 변경할 수 없습니다.
                        </p> 
                        <p>
                            변경이 필요하시다면 예약 취소 후 다시 접수해 주세요.
                        </p> 
                        <br>
                        <br>
                        <br>
                        <h2>  Q. 예약 확정 후 인원이 추가 되었어요.</h2>
                        <p>
                            인원이 추가되어 추가금이 발생하게 된다면,
                        </p> 
                        <p>
                            스터디메이트 1:1 문의(maybe.studymate.channel)로 남겨주세요.
                        </p> 

                    
                </div> 
                </li>

                <!-- 4/6 -->
                <li>
                    <button type="button" class="NoticeContent-serviceItemButton">
                        <p>4</p>
                        <div class="serviceItem-titleDate">
                            <p>영수증 문의</p>
                            <div>
                                <img src="https://cdn-icons-png.flaticon.com/512/892/892498.png" alt="" width="20px" height="20px">
                            </div>
                        </div>
                    </button>
                    <!-- 팝업 창 -->
                    <div class="serviceItem-contentBox">
                        
                        <h2> Q. 영수증/명세서를 발급받고 싶어요.</h2>
                        <br>
                        <p>
                            영수증과 거래명세서는 직접 발급이 가능합니다.
                        </p> 
                        <p>
                            마이페이지 → 예약 내역 → 예약 상세 화면 하단에서 각 버튼을 클릭해 보세요.
                        </p> 
                        <p>
                            단, PC에서만 확인 가능한 점 참고 부탁드립니다.
                        </p> 
                        <br>
                        <br>
                        <br>
                        <h2>  Q. 현금 영수증을 발급받고 싶어요.</h2>
                        <p>
                            스터디메이트 1:1 문의(maybe.studymate.channel)로 연락주시면
                        </p> 
                        <p>
                            발급 도와드리고 있습니다.
                        </p> 
                        <br>
                        <br>
                        <br>
                        <h2>  Q. 세금 계산서를 발급받고 싶어요.</h2>
                        <p>
                            스터디메이트 1:1 문의(maybe.studymate.channel)로 연락주시면
                        </p> 
                        <p>
                            발급 도와드리고 있습니다.
                        </p> 
                        <br>
                        <br>
                        <br>
              

                    
                </div> 
                </li>
            
                <!-- 5/6 -->
                <li>
                    <button type="button" class="NoticeContent-serviceItemButton">
                        <p>5</p>
                        <div class="serviceItem-titleDate">
                            <p>취소 및 환불 문의</p>
                            <div>
                                <img src="https://cdn-icons-png.flaticon.com/512/892/892498.png" alt="" width="20px" height="20px">
                            </div>
                        </div>
                    </button>
                    <!-- 팝업 창 -->
                    <div class="serviceItem-contentBox">
                        
                        <h2> Q. 예약 취소는 어떻게 하나요? </h2>
                        <br>
                        <p>
                            마이페이지 → 예약 내역 에서 직접 신청하실 수 있습니다.
                        </p> 
                        <p>
                            입금이 완료된 상태라면 호스트 측에서 정해진 환불 규정에 맞춰 환불이 진행됩니다.
                        </p> 
                        <br>
                        <br>
                        <br>
                        <h2>  Q. 환불이 필요해요.</h2>
                        <p>
                            마이페이지 → 예약 내역 에서 직접 신청하실 수 있습니다.
                        </p> 
                        <p>
                            환불은 공간 상세 페이지 하단 환불 규정에 따라 진행됩니다.
                        </p> 
                        <br>
                        <br>
                        <br>
                        <h2>  Q. 코로나로 인해 이용이 어려울 것 같습니다. 환불이 가능한가요?</h2>
                        <p>
                            스터디메이트는 코로나로 인한 환불 규정이 따로 없습니다.
                        </p> 
                        <p>
                            불만 및 건의사항이 있으시다면,
                        </p> 
                        <p>
                            스터디메이트 1:1 문의(maybe.studymate.channel)를 이용하면 빠른 처리 도와 드리겠습니다. :)
                        </p> 
                        <br>
                        <br>
                        <br>
                        <h2>  Q. 탈퇴 후 재가입이 되나요?</h2>
                        <p>
                            네. 탈퇴하셔도 언제든지 재가입이 가능합니다.
                        </p> 

                    
                </div> 
                </li>

                <!-- 6/6 -->
                <li>
                    <button type="button" class="NoticeContent-serviceItemButton">
                        <p>6</p>
                        <div class="serviceItem-titleDate">
                            <p>공간 및 이용 문의</p>
                            <div>
                                <img src="https://cdn-icons-png.flaticon.com/512/892/892498.png" alt="" width="20px" height="20px">
                            </div>
                        </div>
                    </button>
                    <!-- 팝업 창 -->
                    <div class="serviceItem-contentBox">
                        
                        <h2> Q. 아이디/비밀번호가 기억나지 않아요.</h2>
                        <br>
                        <p>
                            쉐어잇의 ID/PW는 고객님께서 직접 확인하실 수 있습니다.
                        </p> 
                        <p>
                            로그인 화면 하단의 아이디/비밀번호 찾기를 이용해주세요.
                        </p> 
                        <br>
                        <br>
                        <br>
                        <h2>  Q. 아이디를 바꾸고 싶어요.</h2>
                        <p>
                            가입 시 입력해 주시는 이메일 형식의 아이디는 추후 변경이 불가한 점 양해 부탁드립니다.
                        </p> 
                        <br>
                        <br>
                        <br>
                        <h2>  Q. 회원 탈퇴를 하고 싶어요.</h2>
                        <p>
                            마이페이지 → 개인정보 수정에서 탈퇴가 가능합니다.
                        </p> 
                        <p>
                            불만 및 건의사항이 있으시다면,
                        </p> 
                        <p>
                            스터디메이트 1:1 문의(maybe.studymate.channel)를 이용하면 빠른 처리 도와 드리겠습니다. :)
                        </p> 
                        <br>
                        <br>
                        <br>
                        <h2>  Q. 탈퇴 후 재가입이 되나요?</h2>
                        <p>
                            네. 탈퇴하셔도 언제든지 재가입이 가능합니다.
                        </p> 

                    
                </div> 
                </li>
            </ul>
        </section>
    </main>

    <!-- footer -->
    <footer></footer>

    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="../js/FAQ.js"></script>

</body>
</html>