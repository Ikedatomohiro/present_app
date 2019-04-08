$(document).on('turbolinks:load', function() {
  $('.menu-title').hover(
    function(){
    $('.menu-title').animate({'width':'200px'},100).animate({'font-size':'24px'},500);
    },
    function(){
    $('.menu-title').animate({'font-size':'16px'},300).animate({'width':'140px'},500);
    });
});