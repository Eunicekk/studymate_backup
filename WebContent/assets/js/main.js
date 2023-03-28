let $slideBox = $(".slide-box");
let $slideNewLine = $(".slide-new-line");
let slideIdx = 0;
let slideWidth = $slideNewLine.width(); // 슬라이드 하나의 너비를 구해 변수에 할당

$(".arrow-next").on("click", function () {
  if (slideIdx == $slideNewLine.length - 1) {
    return;
  }
  slideIdx++;
  $slideBox.css("transition", "0.5s");
  $slideBox.css("left", -slideWidth * slideIdx);
  console.log(-slideWidth * slideIdx);
});

$(".arrow-prev").on("click", function () {
  if (slideIdx == 0) {
    return;
  }
  slideIdx--;
  $slideBox.css("transition", "0.5s");
  $slideBox.css("left", -slideWidth * slideIdx);
  console.log(slideWidth * slideIdx);
});
