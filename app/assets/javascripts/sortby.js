document.addEventListener('DOMContentLoaded',function(){

  $("#order_id").show()
  $("#order_name").hide();
  $("#order_active").hide();

  document.getElementById("sort_name").addEventListener("click", function(){
    $("#order_name").show();
    $("#order_id").hide();
    $("#order_active").hide();


    // $("#sort_name").css({"background-color":"black", "color":"white"})
  });

  document.getElementById("sort_id").addEventListener("click", function(){
    $("#order_name").hide();
    $("#order_id").show();
    $("#order_active").hide();

    // $("#group_info").load(location.href+" #group_info>*","");
  });

  document.getElementById("sort_active").addEventListener("click", function(){
    $("#order_name").hide();
    $("#order_id").hide();
    $("#order_active").show();
    // $("#group_info").load(location.href+" #group_info>*","");
  });

  setInterval(function () {
    if ($("#order_name").is(":visible")) {
      $("#sort_name").css({"background-color":"black", "color":"white"})
    } else {
      $("#sort_name").css({"background-color":"#6c757d", "color":"white"})
    }
    if ($("#order_active").is(":visible")) {
      $("#sort_active").css({"background-color":"black", "color":"white"})
    } else {
      $("#sort_active").css({"background-color":"#6c757d", "color":"white"})
    }
    if ($("#order_id").is(":visible")) {
      $("#sort_id").css({"background-color":"black", "color":"white"})
    } else {
      $("#sort_id").css({"background-color":"#6c757d", "color":"white"})
    }
  }, 10);

});



  // sql = "SELECT * FROM groups ORDER BY name"
