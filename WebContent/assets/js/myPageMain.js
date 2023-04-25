let $myModifying = $('#myModifying');
let $myFortfolio = $('#myFortfolio');
let $myInterestCafe = $('#myInterestCafe');
let $myReserve = $('#myReserve');
let $myUsaDetails = $('#myUsaDetails');
let $myGroup = $('#myGroup');
let $myInterestGroup = $('#myInterestGroup');
let $myJoinGroup = $('#myJoinGroup');
let $myEndGroup = $('#myEndGroup');

$(document).ready(function() {
	$myModifying.css('color', 'black');
	$('#content-title').text("개인 정보 수정");
	$('#list-content').load("/mypage/MyPageModifyingProfile.my");
});



$myModifying.on('click', function() {
	$(this).css('color', 'black');
	$('#content-title').text("개인 정보 수정");
	$('.sidebar li').not(this).css('color', '#bdbdbd');

	// ajax 삽입 필요
	$('#list-content').load("/app/mypage/ModifyingProfile.jsp");
	$('#list-content').load("/mypage/MyPageModifyingProfile.my");
});
$myFortfolio.on('click', function() {
	$(this).css('color', 'black');
	$('#content-title').text("내 포트폴리오");
	$('.sidebar li').not(this).css('color', '#bdbdbd');

	// ajax 삽입 필요
	/*$('#list-content').load("/app/mypage/portfolioList.jsp");*/
	$('#list-content').load("/mypage/MyPagePortfolioOk.my");


});

$myInterestCafe.on('click', function() {
	$(this).css('color', 'black');
	$('#content-title').text("관심 장소");
	$('.sidebar li').not(this).css('color', '#bdbdbd');

	// ajax 삽입 필요
	//$('#list-content').load("/app/mypage/interestPlace.jsp");
	$('#list-content').load("/mypage/MyPageInterestPlaceOk.my");
});
$myReserve.on('click', function() {
	$(this).css('color', 'black');
	$('#content-title').text("예약 정보");
	$('.sidebar li').not(this).css('color', '#bdbdbd');

	// ajax 삽입 필요
	//$('#list-content').load("/app/mypage/reserve.jsp");
	$('#list-content').load("/mypage/MyPageReserveOk.my");
});
$myUsaDetails.on('click', function() {
	$(this).css('color', 'black');
	$('#content-title').text("이용 내역");
	$('sidebar li').not(this).css('color', '#bdbdbd');

	// ajax 삽입 필요
	$('#list-content').load("/app/mypage/UsageDetails.jsp");
	$('#list-content').load("/mypage/MyPageUsaDetailsOk.my");
});

$myGroup.on('click', function() {
	$(this).css('color', 'black');
	$('#content-title').text("내가 만든 그룹");
	$('.sidebar li').not(this).css('color', '#bdbdbd');

	// ajax 삽입 필요
	//$('#list-content').load("/app/mypage/leaderGroup.jsp");
	$('#list-content').load("/mypage/MyPageLeaderGroupOk.my");
});
$myInterestGroup.on('click', function() {
	$(this).css('color', 'black');
	$('#content-title').text("관심 그룹");
	$('.sidebar li').not(this).css('color', '#bdbdbd');

	// ajax 삽입 필요
	//$('#list-content').load("/app/mypage/interestGroup.jsp");
	$('#list-content').load("/mypage/MyPageInterestGroupOk.my");
});

$myJoinGroup.on('click', function() {
	$(this).css('color', 'black');
	$('#content-title').text("참여 그룹");
	$('.sidebar li').not(this).css('color', '#bdbdbd');

	// ajax 삽입 필요
	//$('#list-content').load("/app/mypage/participatingGroup.jsp");
	$('#list-content').load("/mypage/MyPageParticipatingGroupOk.my");
});

