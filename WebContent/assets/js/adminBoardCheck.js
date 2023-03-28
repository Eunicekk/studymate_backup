var $boardSearchInput = $('.board-search input');
var $boardAlign01 = $('.align01');
var $boardAlign02 = $('.align02');
var $boardDelete = $('.delete');

// 검색창 클릭 시 css 변화
$boardSearchInput.on('focus', function(){
    $('.board-search .material-symbols-outlined').css('color', '#65619E')
    $(this).css('border', '1px solid #65619E');
});
$boardSearchInput.on('blur', function(){
    $('.board-search .material-symbols-outlined').css('color', '#bdbdbd')
    $(this).css('border', '1px solid #bdbdbd');
});

// 정렬 버튼 클릭 시 css 변화
$boardAlign01.on('click', function(){
    $(this).children().css('color', '#000000');
    $(this).children('material-symbols-outlined').css('color', '#65619E');
    $boardAlign02.children().css('color', '#bdbdbd');
})
$boardAlign02.on('click', function(){
    $(this).children().css('color', '#000000');
    $(this).children('material-symbols-outlined').css('color', '#65619E');
    $boardAlign01.children().css('color', '#bdbdbd');
})

// 삭제 버튼 누를 시 경고창으로 삭제하시겠습니까? 알림 후 삭제
$boardDelete.on('click', function(){
    var isDelete = confirm('해당 회원 데이터를 삭제하시겠습니까?');
    if(isDelete == true){
        $(this).parent().parent().hide();
    }
})

