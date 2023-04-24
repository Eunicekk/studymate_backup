


let $prevBtn = $('.prev-to-list'); 
let $modifyBtn = $('.boardContent-edit');
let $deleteBtn = $('.boardContent-delete'); 
let $uploadReplyBtn = $('.commentInput-buttonComplete');

let $replyModifyBtn = $('.boardReply-editor-buttons-modi');
let $replyDeleteBtn = $('.boardReply-editor-buttons-dele'); 


let studyGroupNumber = $prevBtn.data("studygroupnumber");
console.log(studyGroupNumber);
console.log("댓글 작성용 그룹넘버");



let memberNumber = $uploadReplyBtn.data("membernumber");
console.log(memberNumber);
console.log("댓글 작성용 멤버 넘버");




// 뒤로가기 boardList로 이동 
$prevBtn.on('click', ()=>{
    window.location.href = '/studyGroup/studyGroupMainOk.sg';
});



//  게시글 삭제 boardList로 이동




$deleteBtn.on('click', ()=>{
	// 삭제 버튼 누르면 밑에꺼 아니고 delete ok 로 가야함 
   /* window.location.href ='/studyGroup/studyGroupMainOk.sg';*/
console.log(studyGroupNumber);
console.log("클릭 이벤트는먹음.");
$.ajax({
	type:"GET",
	url: "/studyGroup/studyGroupDeleteOk.sg",
	data: {studyGroupNumber : studyGroupNumber},
	success: function() {
				alert("삭제되었습니다.");
				 window.location.href = '/studyGroup/studyGroupMainOk.sg';
			},
	error : function () {
		alert("통신 실패");
	}
})


});




commentAjax();
function commentAjax() {
	$.ajax({
	url: '/studyGroupComment/studyGroupCommentOk.sgc',
      type: 'get',
      data: { studyGroupNumber: studyGroupNumber },
      dataType: "json",
      success: showComment
	});
}

function showComment (comments) {
	let text= '';
	comments.forEach(comment => {
		text +=`
              <li class="commentItem-commentContainer">
                <section class="commentItem-CommentHeader">
                  <div class="commentItem-writerWrapper">
                    <img
                      class="commentItem-writerImg"
                      src="https://mblogthumb-phinf.pstatic.net/20120713_47/wnfhd6545_1342157203202y8kjd_JPEG/%C4%C4%C7%BB%C5%CD1.jpg?type=w2"
                      alt=""
                    />
                    <div class="commentItem-commentInfo">
                      <div class="commentItem-title">
                        <div class="commentItem-userNickname">
						${comment.memberNickname}
						</div>
                        <div class="commentItem-registerDate">
                         ${comment.studyGroupCommentDate}
                        </div>
                      </div>
                    </div>
                  </div>
                  <div class="boardReply-editDelete"> 
                    <button type="button" class="boardReply-editor-buttons-modi" data-comment-number = "${comment.studyGroupCommentNumber}">수정</button>
                	<button type="button" class="boardReply-editor-buttons-dele" data-number = "${comment.studyGroupCommentNumber}">삭제</button>
				</div>
				 <button type="button" class="boardReply-editor-buttons-done"  data-number = "${comment.studyGroupCommentNumber}">
			수정완료</button>
				
				
                </section>
                <section class="commentItem-CommentContent">
                  <p class="commentItem-CommentContent">
                    ${comment.studyGroupCommentContent}
                  </p>
                </section>
              </li>
		`
	});
	
	
	console.log('comment가 뽑히는지');
	$('.commentList-CommentList').html(text);
	let length = $('.commentItem-commentContainer').length;
	
	$('.cnt').text(length);
	
	/*inner text 하면 기존 지움 */
}

	
/*console.log('======');
*/

// 댓글 등록 Ajax 처리
$uploadReplyBtn.on('click', ()=>{
	
	console.log($('#commentContent').val());
	
  $.ajax({
	url: '/studyGroupComment/studyGroupCommentWriteOk.sgc',
	  type : 'post',
      data : {
         studyGroupNumber : studyGroupNumber,
         memberNumber : memberNumber,
         studyGroupCommentContent : $('#commentContent').val()
      },
      success : function(){
	console.log('댓글 ');
          $('#commentContent').val('');
         commentAjax();
      }
});
});



// 댓글 삭제 Ajax 처리

$('.commentList-CommentList').on('click','.boardReply-editor-buttons-dele', function(){
	  console.log('delete!');
	let commentNumber = $(this).data('number');
	 console.log(commentNumber);
	$.ajax({
		  url : "/studyGroupComment/studyGroupCommentDeleteOk.sgc",
      type : "get",
      data : {studyGroupCommentNumber : commentNumber},
      success : function(){
         commentAjax();
	

      }
	});
});


// 댓글 수정 Ajax 처리 (수정 삭제 버튼 , 수정완료 버튼 뜨게 한 후에 list 통째로 없애고 수정 데이터 채워주기. )

$('.commentList-CommentList').on('click','.boardReply-editor-buttons-modi', function(){


	let commentNumber = $(this).data('comment-number');

/* closest = 부모 조상 모두 포함하여 그 안에서 요소 가져옴*/
	let $parent = $(this).closest('.boardReply-editDelete');
	 /*console.log($parent);*/

/* find = closest와 반대. 자식 중에서 찾아옴*/
	let $children = $parent.next();
	 console.log('=======');
	 console.log($children);
	 console.log('======');
 

	$parent.eq(0).hide();
	$children.eq(0).show();
	
	let $content = $(this).parent().parent().next().children();
	console.log($content);
	
	
	// 기존 요소를 가져옴. 교체한다. 
	$content.replaceWith(`<textarea class = 'modify-content' data-comment-number ='${commentNumber}'> ${$content.text().trim()}</textarea>`);
});


	$('.commentList-CommentList').on('click','.boardReply-editor-buttons-done', function(){
	let commentNumber = $('.modify-content').data('comment-number');
	console.log(commentNumber);
	   $.ajax({
      url : '/studyGroupComment/studyGroupCommentUpdateOk.sgc',
      type : 'get',
      data : {
         studyGroupCommentNumber : commentNumber,
         studyGroupCommentContent : $('.modify-content').val()
      },
      success : function(){
         commentAjax();
      }
   });
	
	});

// 게시글 수정 write로 이동 
$modifyBtn.on('click', ()=>{
    window.location.href ='#'
}); 






console.log('======');

