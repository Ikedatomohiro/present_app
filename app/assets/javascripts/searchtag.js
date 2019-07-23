$(document).on('turbolinks:load', function() {

  console.log($(".modal label"));

  $('.modal').hide();

  $('#purpose-button').click(function() {
    $('.modal').show();
  });



  $('#deside-purpose-btn').click(function() {
    $('.modal').slideUp();

    var returnString = "";

    $('.modal label').each(function(index) {
      console.log(index + ': ' + $(this).text());
      var string = ("#" + $(this).attr("for"));
      console.log($(string));
      if($(string).prop('checked')) {
        console.log(index + ': ' + $(this).text());
        returnString += $(this).text();
      }
    });

    console.log(returnString);
    document.getElementById("purpose_list").innerHTML = returnString;
  });

      $('.search_from_age').hide();
      $('.age_group_label').click(function(){
          $('.search_from_age').show();
      });
});