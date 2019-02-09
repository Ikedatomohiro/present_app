$(document).on('turbolinks:load', function() {
  console.log("test");
  console.log($(".modal label"));

    $('.modal').hide();

  document.getElementById("purpose-button").onclick = function() {
    $('.modal').show();
  };

  document.getElementById("close-button").onclick = function() {
    $('.modal').hide();

    var returnString = "";

    $(".modal label").each(function(index) {
      console.log(index + ': ' + $(this).text());
      var string = ("#" + $(this).attr("for"));
      console.log($(string));
        if($(string).prop('checked')) {
          console.log(index + ': ' + $(this).text());
          returnString += $(this).text();
        }
  });



    console.log(returnString)
    document.getElementById("purpose_list").innerHTML = returnString;
    // document.getElementById("text-button").innerHTML = "以下の目的を選択済み";
  };
});