/**
 * 
 */

// 뒤로가기 
// 수정, 삭제 


let $prevBtn = $('.pre-to-list'); 
let $modifyBtn = $('.boardContent-edit');
let $deleteBtn = $('.boardContent-delete'); 
let $uploadReplyBtn = $('.commentInput-buttonComplete');

let $replyModifyBtn = $('.boardReply-editor-buttons');
let $replyDeleteBtn = $('.boardReply-editor-buttons'); 

// 뒤로 가기 boardList로 이동 
$prevBtn.on('click', ()=>{
    window.location.href ='/board/boardListOk.bo';
});

// 게시글 수정 write로 이동 
$modifyBtn.on('click', ()=>{
    window.location.href ='/board/boardUpdate.bo?boardNumber=' + boardNumber;
}); 

// 게시글 삭제 boardList로 이동
$deleteBtn.on('click', ()=>{
    window.location.href ='/board/boardDeleteOk.bo?boardNumber=' + boardNumber;
});

// 댓글 등록 Ajax 처리
$uploadReplyBtn.on('click', ()=>{
    $.ajax({
      url : '/reply/replyWriteOk.re',
      type : 'post',
      data : {
         boardNumber : boardNumber,
         memberNumber : memberNumber,
         replyContent : $('#content').val()
      },
      success : function(){
         replyAjax();
         $('#content').val('');
      }
   });
});


// 댓글 수정 Ajax 처리
$replyModifyBtn.on('click', ()=>{
    // 댓글 수정 Ajax 처리해주세요
});

// 댓글 삭제 Ajax 처리
$replyDeleteBtn.on('click', ()=>{
    // 댓글 수정 Ajax 처리해주세요
});