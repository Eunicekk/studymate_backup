var $searchCafeInput = $('.cafe-search input');
var $cafeAlign01 = $('.align01');
var $cafeAlign02 = $('.align02');
var $cafeAlign03 = $('.align03');
var $cafeDelete = $('.delete');

// 검색창 클릭 시 css 변화
$searchCafeInput.on('focus', function(){
    $('.cafe-search .material-symbols-outlined').css('color', '#65619E')
    $(this).css('border', '1px solid #65619E');
});
$searchCafeInput.on('blur', function(){
    $('.cafe-search .material-symbols-outlined').css('color', '#bdbdbd')
    $(this).css('border', '1px solid #bdbdbd');
});

// 정렬 버튼 클릭 시 css 변화
$cafeAlign01.on('click', function(){
    $(this).children().css('color', '#000000');
    $(this).children('material-symbols-outlined').css('color', '#65619E');
    $cafeAlign02.children().css('color', '#bdbdbd');
    $cafeAlign03.children().css('color', '#bdbdbd');
})
$cafeAlign02.on('click', function(){
    $(this).children().css('color', '#000000');
    $(this).children('material-symbols-outlined').css('color', '#65619E');
    $cafeAlign01.children().css('color', '#bdbdbd');
    $cafeAlign03.children().css('color', '#bdbdbd');
})
$cafeAlign03.on('click', function(){
    $(this).children().css('color', '#000000');
    $(this).children('material-symbols-outlined').css('color', '#65619E');
    $cafeAlign01.children().css('color', '#bdbdbd');
    $cafeAlign02.children().css('color', '#bdbdbd');
})

// 삭제 버튼 누를 시 경고창으로 삭제하시겠습니까? 알림 후 삭제
$cafeDelete.on('click', function(){
    var isDelete = confirm('해당 카페 데이터를 삭제하시겠습니까?');
    if(isDelete == true){
        $(this).parent().parent().parent().hide();
    }
})