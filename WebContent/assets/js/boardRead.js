

// 뒤로가기 
// 수정, 삭제 


let $prevBtn = $('.prev-to-list'); 
let $modifyBtn = $('.boardContent-edit');
let $deleteBtn = $('.boardContent-delete'); 
let $uploadReplyBtn = $('.commentInput-buttonComplete');

let $replyModifyBtn = $('.boardReply-editor-modify-ready-buttons');
let $replyDeleteBtn = $('.boardReply-editor-delete-buttons'); 

let boardNumber = $prevBtn.data('boardNumber');
console.log($boardNumber);


// 뒤로 가기 boardList로 이동 
$prevBtn.on('click', ()=>{
    window.location.href ='/board/boardListOk.bo';
});

// 게시글 수정 write로 이동 
$modifyBtn.on('click', ()=>{
    window.location.href ='/board/boardUpdate.bo?boardNumber=' + $boardNumber;
}); 

// 게시글 삭제 boardList로 이동
console.log("12312r421");
$deleteBtn.on('click', ()=>{
	console.log("123");
    window.location.href ='/board/boardDeleteOk.bo?boardNumber=' + $boardNumber;
});
	

replyAjax();

function replyAjax(){
   $.ajax({
      url : '/boardComment/boardCommentListOk.bc',
      type : 'get',
      data : {boardNumber : $boardNumber},
      dataType : 'json',
	  error : function(){
		console.log('delete~~~@@@@@');
	},
      success : showReply
   });
}

function showReply(comments){
   let text = '';
   
  		 comments.forEach(comment => {
    		 text += `
  				<li class="commentItem-commentContainer">
    				<section class="commentItem-CommentHeader">
      					<div class="commentItem-writerWrapper">
        					<img class="commentItem-writerImg"
          					src="https://mblogthumb-phinf.pstatic.net/20120713_47/wnfhd6545_1342157203202y8kjd_JPEG/%C4%C4%C7%BB%C5%CD1.jpg?type=w2"
          					alt="">
        						<div class="commentItem-commentInfo">
          							<div class="commentItem-title">
            							<div class="commentItem-userNickname">${comment.memberNickname}</div>
            							<div class="commentItem-registerDate">${comment.boardCommentDate}</div>
          							</div>
        						</div>
      					</div>
						`;

		if (memberNumber == comment.memberNumber) {
		  text += `
				<div class="boardReply-btn-gruops">
   				 <div class="boardReply-editDelete">
  				    <button type="button" class="boardReply-editor-modify-ready-buttons" data-number="${comment.boardCommentNumber}">수정</button>
 				     <button type="button" class="boardReply-editor-delete-buttons" data-number="${comment.boardCommentNumber}">삭제</button>
 				   </div>
						<div class="boardReply-editDelete none">
									<button type="button" class="boardReply-editor-button" id="modify-complete-btn" data-number="${comment.boardCommentNumber}">수정 완료</button>
									
									</div>
								</div>
 					 `;
					}

		text += `
			  </section>
		  <section class="commentItem-CommentContent">
  			  <p class="commentItem-CommentContent">${comment.boardCommentContent}</p>
 		 </section>
</li>
`;
  });

 $('.commentList-CommentList').html(text);
}
 
 // 댓글 등록 Ajax 처리

// 댓글 등록 Ajax 처리
$uploadReplyBtn.on('click', function() {
	let memberNumber = '2';
	console.log($('#commentInput-commentText').val());
   $.ajax({
      url : '/boardComment/boardCommentWriteOk.bc',
      type : 'post',
      data : {
         boardNumber : $boardNumber,
         memberNumber : memberNumber,
         boardCommentContent : $('.commentInput-commentText').val()
      },
      success : function(){
         replyAjax();
         $('.commentInput-commentText').val('');

         // 댓글 수를 갱신합니다.
        // updateCommentCount();
      },
		error : function(){
			console.log('error');
		}
   });
});


/*$uploadReplyBtn.on('click', function() {
	let memberNumber ='2';
	console.log($('.commentInput-commentText').val());
   $.ajax({
      url : '/boardComment/boardCommentWriteOk.bc',
      type : 'post',
      data : {
         boardNumber : $boardNumber,
         memberNumber : memberNumber,
         boardCommentContent : $('.commentInput-commentText').val()
      },
      success : function(){
         replyAjax();
         $('.commentInput-commentText').val('');
      // 댓글 수를 갱신합니다.
         updateCommentCount();

      },
		error : function(){
			console.log('error');
		}
   });
});

// 댓글 수를 갱신하는 함수
function updateCommentCount() {
   // AJAX를 사용하여 댓글 수를 가져옵니다.
   $.ajax({
      url: '/boardComment/boardCommentCount.bc',
      type: 'GET',
      data: {
         boardNumber: $boardNumber
      },
      success: function(commentCount) {
         // 댓글 수를 HTML에 반영합니다.
         $('.commentInput-count').text(commentCount + '개의 댓글이 있습니다');
      },
      error: function() {
         console.log('Error updating comment count');
      }
   });
}*/


 // 댓글 삭제 Ajax 처리
$('.commentList-CommentList').on('click','.boardReply-editor-delete-buttons' ,function(){
   let boardCommentNumber = $(this).data('number');
   
   $.ajax({
      url : "/boardComment/boardCommentDeleteOk.bc",
      type : "get",
      data : {boardCommentNumber : boardCommentNumber},
      success : function(){
         replyAjax();
      },
      error : function(){
         console.log("error deleting comment");
      }
   });
});

/*$replyDeleteBtn.on('click', ()=>{
      console.log('delete~~~@@@@@');
   let boardCommentNumber = $(this).data('number');
   
   $.ajax({
      url : "/boardComment/boardCommentDeleteOk.bc",
      type : "get",
      data : {boardCommentNumber : boardCommentNumber},
      success : function(){
         replyAjax();
      }
   });
}); */


// 댓글 수정 Ajax 처리
$('.boardContent-postComment').on('click', '.boardReply-editor-modify-ready-buttons', function(){
   console.log("content");
   //closest()는 조상 요소 중에서 찾는다.
   //find() 는 자손 요소 중에서 찾는다.
   let $parent = $(this).closest('.commentItem-commentContainer');
   //console.log($parent);
   
   let $children = $parent.find('.boardReply-editDelete');
   //console.log($children);
   
   $children.eq(0).hide();
   $children.eq(1).show();
   
   let $content = $(this).parent().parent().parent().next().children();
   console.log($content);
   //기존 요소를 교체한다.
   $content.replaceWith(`<textarea class='modify-content'>${$content.text()}</textarea>`);
});

$('.boardContent-postComment').on('click', '#modify-complete-btn', function(){
   let boardCommentNumber = $(this).data('number');
   console.log(boardCommentNumber);
   console.log("modifying");
   let $content = $(this).closest('.commentItem-commentContainer').find('.commentItem-CommentContent .modify-content');
   $.ajax({
      url : '/boardComment/boardCommentUpdateOk.bc',
      type : 'get',
      data : {
         boardCommentNumber : boardCommentNumber,
         boardCommentContent : $content.val()
      },
      success : function() {
         replyAjax();
      },
	  error : function(){
         console.log("error modifying comment");
      }
   });
   
});

/*$('.boardContent-postComment').on('click', '.boardReply-editor-modify-ready-buttons', function(){
   console.log("content");
   //closest()는 조상 요소 중에서 찾는다.
   //find() 는 자손 요소 중에서 찾는다.
   let $parent = $(this).closest('.commentList-CommentList');
   //console.log($parent);
   
   let $children = $parent.find('.boardReply-editDelete');
   //console.log($children);
   
   $children.eq(0).hide();
   $children.eq(1).show();
   
   let $content = $(this).parent().parent().parent().next().children();
   console.log($content);
   
   //기존 요소를 교체한다.
   $content.replaceWith(`<textarea class='modify-content'>${$content.text()}</textarea>`);
});

$('.boardContent-postComment').on('click', '.boardReply-editor-modify-button', function(){
   let boardCommentNumber = $(this).data('number');
   console.log("modifying")
   $.ajax({
      url : '/boardComment/boardCommentUpdateOk.bc',
      type : 'get',
      data : {
         boardCommentnumber : boardCommentNumber,
         boardCommentContent : $('.modify-content').val()
      },
      success : function() {
         replyAjax();
      }
   });
   
});*/

/*$replyModifyBtn.on('click', ()=>{
 console.log('modi~~~@@@@@');
   let boardCommentNumber = $(this).data('number');
   
   $.ajax({
      url : "/boardComment/boardCommentUpdateOk.bc",
      type : "get",
      data : {
		boardCommentNumber : boardCommentNumber,
		boardCommentContent : $('.modify-content').val()
		},
	  error : function(){
		console.log('modifying~~~@@@@@');
	},
	
      success : function(){
         replyAjax();
      }
   });
});*/




/*$('.boardContent-postComment').on('click', 'commentItem-CommentContent', function(){
   console.log($(this));
});*/
