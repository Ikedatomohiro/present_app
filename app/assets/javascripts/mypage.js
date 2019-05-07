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

  $('.purchaselog').click(function(){
    var $purchaseitems = $(this).find('.purchaseitems');
    if($purchaseitems.hasClass('open')){
      $purchaseitems.removeClass('open');
      $purchaseitems.slideUp();
      $(this).find('span').text('+').css('padding','0px');
    }else{
      $purchaseitems.addClass('open');
      $purchaseitems.slideDown();
      $(this).find('span').text('-').css('padding-left','2px');
    }
  });
});