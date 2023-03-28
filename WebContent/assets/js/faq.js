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



  




