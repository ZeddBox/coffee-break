$(document).ready(function() {


$(window).scroll(function() {    
  var scroll = $(window).scrollTop();

   //>=, not <=
  if (scroll >= 60) {
      //clearHeader, not clearheader - caps H
      $(".navbar").addClass("bg-light");
      $(".navbar").removeClass("navbar-transparent");
  } else {
    $(".navbar").removeClass("bg-light");
      $(".navbar").addClass("navbar-transparent");
  }
}); //missing;

// document ready  
});