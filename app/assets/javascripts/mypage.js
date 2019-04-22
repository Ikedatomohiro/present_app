$(document).on('turbolinks:load', function() {
  $('.menu-title').hover(
    function(){
      $('.menu-title').animate({
        'width':'180px',
        'letter-spacing':'6px'
      },500);
    },
    function(){
      $('.menu-title').animate({
        'width':'140px',
        'letter-spacing':'0px'
      },500);
    });
});