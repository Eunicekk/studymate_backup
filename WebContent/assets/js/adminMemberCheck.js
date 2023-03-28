var $searchInput = $('.member-search input');
var $align01 = $('.align01');
var $align02 = $('.align02');
var $delete = $('.delete');

// 검색창 클릭 시 css 변화
$searchInput.on('focus', function(){
    $('.member-search .material-symbols-outlined').css('color', '#65619E')
    $(this).css('border', '1px solid #65619E');
});
$searchInput.on('blur', function(){
    $('.member-search .material-symbols-outlined').css('color', '#bdbdbd')
    $(this).css('border', '1px solid #bdbdbd');
});

// 정렬 버튼 클릭 시 css 변화
$align01.on('click', function(){
    $(this).children().css('color', '#000000');
    $(this).children('material-symbols-outlined').css('color', '#65619E');
    $align02.children().css('color', '#bdbdbd');
})
$align02.on('click', function(){
    $(this).children().css('color', '#000000');
    $(this).children('material-symbols-outlined').css('color', '#65619E');
    $align01.children().css('color', '#bdbdbd');
})

// 삭제 버튼 누를 시 경고창으로 삭제하시겠습니까? 알림 후 삭제
$delete.on('click', function(){
    var isDelete = confirm('해당 회원 데이터를 삭제하시겠습니까?');
    if(isDelete == true){
        $(this).parent().parent().hide();
    }
})