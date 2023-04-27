/**
 * 상세페이지 눌렀을 때 boardNumber 비교해서 boardRead로 넘어가게끔 설정
 */
 
/*$(document).ready(function() {
  $('.content-subject').click(function(e) {
    e.preventDefault(); // a 태그 기본 동작(이동) 방지
    var boardNumber = $(this).attr('href').match(/boardNumber=(\d+)/)[1]; // boardNumber 추출
    if (boardNumber) { // boardNumber가 있는 경우
      window.location.href = '${pageContext.request.contextPath}/board/boardReadOk.bo?boardNumber=' + boardNumber;
    }
  });
});*/
/*$(document).ready(function() {
  $('.content-subject').on('click', function(e) {
    e.preventDefault();
    var url = $(this).attr('href');
    location.href = url;
  });
});*/

// 댓글 많은 순으로 정렬하는 함수
/*function sortByCommentCount() {
  const posts = document.querySelectorAll('.post');
  posts.forEach(post => {
    const commentCount = post.querySelectorAll('.comment').length;
    post.setAttribute('data-comment-count', commentCount);
  });
  const sortedPosts = Array.from(posts)
    .sort((a, b) => b.getAttribute('data-comment-count') - a.getAttribute('data-comment-count'));
  const postList = document.querySelector('.post-list');
  postList.innerHTML = '';
  sortedPosts.forEach(post => postList.appendChild(post));

  // UI 업데이트
  const commentsLabel = document.querySelector('#sortByComments');
  const recentLabel = document.querySelector('#sortByRecent');
  commentsLabel.classList.add('active');
  recentLabel.classList.remove('active');
}

// 최신 순으로 정렬하는 함수
function sortByRecent() {
  const posts = document.querySelectorAll('.post');
  const sortedPosts = Array.from(posts)
    .sort((a, b) => new Date(b.querySelector('.date').innerText) - new Date(a.querySelector('.date').innerText));
  const postList = document.querySelector('.post-list');
  postList.innerHTML = '';
  sortedPosts.forEach(post => postList.appendChild(post));

  // UI 업데이트
  const commentsLabel = document.querySelector('#sortByComments');
  const recentLabel = document.querySelector('#sortByRecent');
  commentsLabel.classList.remove('active');
  recentLabel.classList.add('active');
}


// 클릭 이벤트 핸들러 등록
const commentsLabel = document.querySelector('#sortByComments');
const recentLabel = document.querySelector('#sortByRecent');
commentsLabel.addEventListener('click', sortByCommentCount);
recentLabel.addEventListener('click', sortByRecent);

// 초기 로드 시 댓글 많은 순으로 정렬
sortByCommentCount(); */



/* let $commentListBtn = $('.content-subject');



$commentListBtn.on('click', ()=>{
    window.location.href ='/boardComment/boardCommentListOk.bc?boardNumber=' + boardNumber;
}); */ 

//let $searchTitle = $('.input-keyword input');

/*$searchInput.on('focus', function() {
	$('.input-keyword').css('color', '#65619E')
	$(this).css('border', '1px solid #65619E');
});
$searchInput.on('blur', function() {
	$('.search-icon').css('color', '#bdbdbd')
	$(this).css('border', '1px solid #bdbdbd');
});*/

$('.input-keyword > form > button').on('click' ,function(){
	let boardTitle = $('.input-keyword > form > input').val();
	console.log("sssss")
	console.log(boardTitle)
	$.ajax({
    type: "GET",
    url: "/board/boardSearchOk.bo",
    data: { boardTitle : boardTitle },
    success: function() {
        $(".content-list").html();
    },
    error: function(jqXHR, textStatus, errorThrown) {
        alert("통신 실패: " + textStatus + ", " + errorThrown);
    }
}); 

})




