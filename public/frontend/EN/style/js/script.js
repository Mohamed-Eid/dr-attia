
//-------------- Prealoading --------------
$(window).load(function () {
  $("#loading").delay(3000).fadeOut(1000);
});



//------------- fixed menu on scroll ------------
/* $(window).scroll(function(event){

  var yOffset = window.pageYOffset;
  var breakpoint = 50;
  if (yOffset > breakpoint){
    $(".menu").addClass('scroll');
  }else{
    $(".menu").removeClass('scroll');
  }

});

$(window).scroll(function(event){

  var yOffset = window.pageYOffset;
  var breakpoint = 50;
  if (yOffset > breakpoint){
    $(".responsive-menu").addClass('scroll');
  }else{
    $(".responsive-menu").removeClass('scroll');
  }

}); */


//------------- Owl Carousel ------------
/* $(document).ready(function() {
 
  $("#owl-demo").owlCarousel({
 
      autoPlay: 3000, //Set AutoPlay to 3 seconds
 
      items : 3,
      itemsDesktop : [1199,3],
      itemsDesktopSmall : [979,3]
 
  });
 
});
 */

//------------- Responsive menu  ------------
function openNav() {
  document.getElementById("mySidenav").style.width = "320px";
}

function closeNav() {
  document.getElementById("mySidenav").style.width = "0";
}


//------------- Owl Carousel  ------------
$(document).ready(function () {

  $("#owl-demo").owlCarousel({

    autoPlay: 3000,
    slideSpeed: 300,
    paginationSpeed: 400,
    singleItem: true

    // "singleItem:true" is a shortcut for:
    // items : 1, 
    // itemsDesktop : false,
    // itemsDesktopSmall : false,
    // itemsTablet: false,
    // itemsMobile : false

  });

});


