var $searchGroupInput = $('.group-search input');
var $groupaAlign01 = $('.align01');
var $groupAlign02 = $('.align02');
var $GroupDelete = $('.group-delete');
var $groupFilter = $('.filter');

// 검색창 클릭 시 css 변화
$searchGroupInput.on('focus', function(){
    $('.group-search .material-symbols-outlined').css('color', '#65619E')
    $(this).css('border', '1px solid #65619E');
});
$searchGroupInput.on('blur', function(){
    $('.group-search .material-symbols-outlined').css('color', '#bdbdbd')
    $(this).css('border', '1px solid #bdbdbd');
});

// 정렬 버튼 클릭 시 css 변화
$groupaAlign01.on('click', function(){
    $(this).children().css('color', '#000000');
    $(this).children('material-symbols-outlined').css('color', '#65619E');
    $groupAlign02.children().css('color', '#bdbdbd');
})
$groupAlign02.on('click', function(){
    $(this).children().css('color', '#000000');
    $(this).children('material-symbols-outlined').css('color', '#65619E');
    $groupaAlign01.children().css('color', '#bdbdbd');
})

// 삭제 버튼 누를 시 경고창으로 삭제하시겠습니까? 알림 후 삭제
$GroupDelete.on('click', function(){
    var isDelete = confirm('해당 회원 데이터를 삭제하시겠습니까?');
    if(isDelete == true){
        $(this).parent().parent().hide();
    }
})

// 필터 버튼 클릭 시 드롭다운 div 생성
$('html').click(function(e) {   
    if( $(e.target).hasClass('filter') || $(e.target).hasClass('filter-click')) {
        $('.filter-field').css('display', 'block');
	}else{
        $('.filter-field').css('display', 'none');
    }
});
