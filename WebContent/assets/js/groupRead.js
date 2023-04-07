


let $prevBtn = $('.prev-to-list'); 
let $modifyBtn = $('.boardContent-edit');
let $deleteBtn = $('.boardContent-delete'); 
let $uploadReplyBtn = $('.commentInput-buttonComplete');

let $replyModifyBtn = $('.boardReply-editor-buttons-modi');
let $replyDeleteBtn = $('.boardReply-editor-buttons-dele'); 


let studyGroupNumber = $prevBtn.data("studygroupnumber");
console.log(studyGroupNumber);


let memberNumber = $uploadReplyBtn.data("membernumber");
console.log(memberNumber);




// 뒤로가기 boardList로 이동 
$prevBtn.on('click', ()=>{
    window.location.href = '/studyGroup/studyGroupMainOk.sg';
});

// 게시글 수정 write로 이동 
$modifyBtn.on('click', ()=>{
    window.location.href ='#'
}); 

//  게시글 삭제 boardList로 이동
$deleteBtn.on('click', ()=>{
    window.location.href ='#'
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
                    <button type="button" class="boardReply-editor-buttons-modi" >수정</button>
                <button type="button" class="boardReply-editor-buttons-dele" data-number = "${comment.studyGroupCommentNumber}">삭제</button>
				</div>
				<div class="boardReply-editor-buttons-done">
				 <button type="button" class="boardReply-editor-buttons-done">수정완료</button>
				</div>
				
				
                </section>
                <section class="commentItem-CommentContent">
                  <p class="commentItem-CommentContent">
                    ${comment.studyGroupCommentContent}
                  </p>
                </section>
              </li>
		`
	});
	
	$('.commentList-CommentList').html(text);
}

	
console.log('======');



// 댓글 등록 Ajax 처리
$uploadReplyBtn.on('click', ()=>{
  $.ajax({
	url: '/studyGroupComment/studyGroupCommentWriteOk.sgc',
	  type : 'post',
      data : {
         studyGroupNumber : studyGroupNumber,
         memberNumber : memberNumber,
         studyGroupCommentContent : $('#commentContent').val()
      },
      success : function(){
         commentAjax();
         $('#commentContent').val('');
      }
});
});






// 댓글 수정 Ajax 처리




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

console.log('======');

