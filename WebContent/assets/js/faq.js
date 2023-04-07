/**
 * 
 */

//  토글 
 $('.NoticeContent-serviceItemButton').on("click", function () {
    
      $(this).next().toggle();
    $(this).children().children().last().children().animate({rotate:"180deg"}, 300);

 	//   $(this).children().children().last().children().animate({rotate:"-180deg"}, 300);
    
    //  $(this).next().toggle();
    //  $(this).children().children().last().children().animate({rotate:"180deg"}, 300); 
  });

var adminNumber;

$('.write').on('click', () => {
   window.location.href = '/admin/faqWrite.ad';
});

$('.NoticeContent-container').on("click",".boardContent-edit",function(){
	faqNumber = $(this).val();
	window.location.href = '/admin/faqUpdate.ad?faqNumber=' + faqNumber;
})


$('.NoticeContent-container').on("click",".boardContent-delete",function(){
	faqNumber = $(this).val();
   window.location.href = '/admin/faqDeleteOk.ad?faqNumber=' + faqNumber;
});


