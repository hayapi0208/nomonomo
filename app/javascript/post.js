import $ from "jquery";

$(function(){
  $(document).on("mouseover", "a", function () {
    $(this).css({ "box-shadow": "0 0 40px 10px #FFF,0 0 50px 10px #FFF", "background-color": "rgb(235, 236, 228)" });
  }).on("mouseout", "a", function () {
    $(this).css({ "box-shadow": "", "background-color": "" });
  })
});