
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

  $(".photos-owl-demo").owlCarousel({
   
    autoPlay: 5000, //Set AutoPlay to 3 seconds

    items : 3,
    itemsDesktop : [1199,3],
    itemsDesktopSmall : [900,2], // betweem 900px and 601px
    itemsTablet: [640,2], //2 items between 600 and 0;
    itemsMobile : [360,1] //

  });
  $(".Videos-owl-demo").owlCarousel({
   
    autoPlay: 5000, //Set AutoPlay to 3 seconds

    items : 3,
    itemsDesktop : [1199,3],
    itemsDesktopSmall : [900,2], // betweem 900px and 601px
    itemsTablet: [640,2], //2 items between 600 and 0;
    itemsMobile : [360,1] //

  });

  $(".blog-owl-demo").owlCarousel({
   
    autoPlay: 5000, //Set AutoPlay to 3 seconds

    items : 3,
    itemsDesktop : [1199,3],
    itemsDesktopSmall : [900,2], // betweem 900px and 601px
    itemsTablet: [640,2], //2 items between 600 and 0;
    itemsMobile : [360,1] //

  });

  


});


