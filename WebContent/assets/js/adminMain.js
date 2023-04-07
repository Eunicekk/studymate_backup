let $memberProgress = $('#adminMemberProgress');
let $memberCheck = $('#adminMemberCheck');
let $cafeProgress = $('#adminCafeProgress');
let $cafeCheck = $('#adminCafeCheck');
let $cafeAdd = $('#adminCafeAdd');
let $groupProgress = $('#adminGroupProgress');
let $groupCheck = $('#adminGroupCheck');
let $boardProgress = $('#adminBoardProgress');
let $boardCheck = $('#adminBoardCheck');

// 진입 화면 시 memberProgress가 선택되어 있어 노출되어야 함!
$(document).ready(function() {
	$memberProgress.css('color', 'black');
	$('#content-title').text("회원 가입 추이");
	$('#list-content').load("/app/admin/adminMemberProgress.jsp");
});

// 일단 load 메소드를 통해 서브 메뉴 클릭 시 화면이 변경되게 설정을 해놓긴 했습니다.
// 다만 정석(?) 방법은 아니다 보니 화면 전환 딜레이가 조금 있다는 단점이 있긴 합니다.
// 그래도 일단은 되니까 다른 데이터 연결 먼저 하신 뒤에 시간이 남는다면 나중에 ajax 처리를 해도 될 것 같습니다!
// ajax 처리까지 하실거라면 'ajax 삽입 필요' 주석 다음의 문구를 지운 후 수정하시면 됩니다.

$memberProgress.on('click', function() {
	$(this).css('color', 'black');
	$('#content-title').text("회원 가입 추이");
	$('.admin-list li').not(this).css('color', '#bdbdbd');

	// ajax 삽입 필요
	$('#list-content').load("/app/admin/adminMemberProgress.jsp");
});
$memberCheck.on('click', function() {
	$(this).css('color', 'black');
	$('#content-title').text("회원 목록 조회");
	$('.admin-list li').not(this).css('color', '#bdbdbd');

	// ajax 삽입 필요
	$('#list-content').load("/app/admin/adminMemberCheck.jsp");
	$('#list-content').load("/admin/adminMemberCheckOk.ad");


});

$cafeProgress.on('click', function() {
	$(this).css('color', 'black');
	$('#content-title').text("카페 이용 추이");
	$('.admin-list li').not(this).css('color', '#bdbdbd');

	// ajax 삽입 필요
	$('#list-content').load("/app/admin/adminCafeProgress.jsp");
});
$cafeCheck.on('click', function() {
	$(this).css('color', 'black');
	$('#content-title').text("카페 목록 조회");
	$('.admin-list li').not(this).css('color', '#bdbdbd');

	// ajax 삽입 필요
	$('#list-content').load("/app/admin/adminCafeCheck.jsp");
	$('#list-content').load("/admin/adminCafeListOk.ad");
});
$cafeAdd.on('click', function() {
	$(this).css('color', 'black');
	$('#content-title').text("카페 등록");
	$('.admin-list li').not(this).css('color', '#bdbdbd');

	// ajax 삽입 필요
	$('#list-content').load("/app/admin/adminCafeAdd.jsp");
});

$groupProgress.on('click', function() {
	$(this).css('color', 'black');
	$('#content-title').text("그룹 등록 추이");
	$('.admin-list li').not(this).css('color', '#bdbdbd');

	// ajax 삽입 필요
	$('#list-content').load("/app/admin/adminGroupProgress.jsp");
});
$groupCheck.on('click', function() {
	$(this).css('color', 'black');
	$('#content-title').text("그룹 목록 조회");
	$('.admin-list li').not(this).css('color', '#bdbdbd');

	// ajax 삽입 필요
	$('#list-content').load("/app/admin/adminGroupCheck.jsp");
	$('#list-content').load("/admin/adminGroupListOk.ad");
});

$boardProgress.on('click', function() {
	$(this).css('color', 'black');
	$('#content-title').text("게시물 등록 추이");
	$('.admin-list li').not(this).css('color', '#bdbdbd');

	// ajax 삽입 필요
	$('#list-content').load("/app/admin/adminBoardProgress.jsp");
});
$boardCheck.on('click', function() {
	$(this).css('color', 'black');
	$('#content-title').text("게시물 목록 조회");
	$('.admin-list li').not(this).css('color', '#bdbdbd');

	// ajax 삽입 필요
	$('#list-content').load("/app/admin/adminBoardCheck.jsp");
	$('#list-content').load("/admin/adminBoardListOk.ad");
});

