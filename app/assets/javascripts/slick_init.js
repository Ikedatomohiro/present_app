$(document).on('turbolinks:load', function() {
  $('.commerce-image').slick({
  infinite: true,
  slidesToShow: 3,
  slidesToScroll: 1,
  autoplay: true,
  autoplaySpeed: 3000,
  dots: true,
  allows: true,
  appendAlrrows:$("#apArrows"),
  prevArrow:'<div class="prev"></div>',
  nextArrow:'<div class="next"></div>',
  focusOnSelect: true,
  variableWidth: true,
  centerMode: true,

  responsive: [
   {
    breakpoint: 768, //767px以下のサイズに適用
    settings: {
      slidesToShow:2
    }
   }
   ]
  });
});