    <footer >
        <div class="container">
            <div class="row">
                <div class="col-md-2 ">
                    <img src="{{asset('frontend/Technomasr/images/logo.png')}}" class="logo" />
                </div>
                <div class="col-md-4">
                    <ul class="footer-menu"> 
                        <li><a href="#" class="text-white f-s-17">Home</a></li>
                        <li><a href="#" class="text-white f-s-17">Medical surgeries</a></li>
                        <li><a href="#" class="text-white f-s-17">Medical surgeries </a></li>
                        <li><a href="#" class="text-white f-s-17">Medical surgeries </a></li>
                        <li><a href="#" class="text-white f-s-17">Video Library </a></li>
                        <li><a href="#" class="text-white f-s-17">Blog </a></li>
                        <li><a href="#" class="text-white f-s-17">Video Library </a></li>
                        <li><a href="#" class="text-white f-s-17">Before and After Photos</a></li>
                    </ul>
                </div> 
                <div class="col-md-3">
                    <h3 class="bold text-white">Reach Dr.Attia</h3>
                    <li>
                        <i class="fa fa-envelope text-white"></i>
                        <span class="text-white m-r-5 m-l-5">info@yoursite.com</span>
                    </li>
                </div>
                <div class="col-md-3">
                    <h3 class="bold text-white">Follow Dr.Attia</h3>
                    <ul class="social-icons m-t-20">
                            <li>
                                <a href="https://www.facebook.com" target="_blank">
                                    <i class="fa fa-facebook" id="facebook"></i>
                                </a>
                            </li> 
                            <li>
                                <a href="https://www..com" target="_blank">
                                    <i class="fa fa-youtube-play" id="youtube"></i>
                                </a>
                            </li> 
                            <li>
                                <a href="https://www..com" target="_blank">
                                    <i class="fa fa-instagram" id="instagram"></i>
                                </a>
                            </li> 
                            <li>
                                <a href="https://www..com" target="_blank">
                                    <i class="fa fa-twitter-square" id="twitter"></i>
                                </a>
                            </li> 
                        </ul>
                </div>
               
                <div class="col-md-6 ">
                    <p class="text-white p-t-20">Powered By
                        <a href="#" target="_blank" class="primary-color primary-color-hover">Media Serv</a>
                    </p>
                </div>
                <div class="col-md-6 ">
                    <p class="text-white p-t-20 pull-right">
                        ©  Dr.Attita Khafaga 2020
                    </p>
                </div>
            </div>
        </div>
    </footer>


    <script src="{{asset('frontend/Technomasr/js/jquery.js')}}"></script>
    <script src="{{asset('frontend/Technomasr/bootstrap4/js/popper.min.js')}}"></script>
    <script src="{{asset('frontend/Technomasr/bootstrap4/js/bootstrap.min.js')}}"></script>
    <script src="{{asset('frontend/Technomasr/js/script.js')}}"></script>
    
    <!-- include Owl Carousel plugin js-->
    <script src="{{asset('frontend/Technomasr/owl-carousel/owl.carousel.min.js')}}"></script>
    
    <script>
        //TODO : download owl carsoul v 2
        //------------- Owl Carousel  ------------
        $(document).ready(function () {

        $("#owl-demo").owlCarousel({
        
        rtl: {{ app()->getLocale() == 'ar' ? 'true' : 'false' }},

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
        rtl: {{ app()->getLocale() == 'ar' ? 'true' : 'false' }},

        items : 3,
        itemsDesktop : [1199,3],
        itemsDesktopSmall : [900,2], // betweem 900px and 601px
        itemsTablet: [640,2], //2 items between 600 and 0;
        itemsMobile : [360,1] //

        });
        $(".Videos-owl-demo").owlCarousel({
        
        autoPlay: 5000, //Set AutoPlay to 3 seconds
        rtl: {{ app()->getLocale() == 'ar' ? 'true' : 'false' }},

        items : 3,
        itemsDesktop : [1199,3],
        itemsDesktopSmall : [900,2], // betweem 900px and 601px
        itemsTablet: [640,2], //2 items between 600 and 0;
        itemsMobile : [360,1] //

        });

        $(".blog-owl-demo").owlCarousel({
        
        autoPlay: 5000, //Set AutoPlay to 3 seconds
        rtl: {{ app()->getLocale() == 'ar' ? 'true' : 'false' }},

        items : 3,
        itemsDesktop : [1199,3],
        itemsDesktopSmall : [900,2], // betweem 900px and 601px
        itemsTablet: [640,2], //2 items between 600 and 0;
        itemsMobile : [360,1] //

        });




        });


    </script>
    
    <!-- Before&After Gallery -->
    <script src="{{asset('frontend/Technomasr/lightbox2/src/js/lightbox.js')}}"></script>
    <script>
        $(window).load(function () {
            $(".twentytwenty-container[data-orientation!='vertical']").twentytwenty({ default_offset_pct: 0.7 });
            $(".twentytwenty-container[data-orientation='vertical']").twentytwenty({ default_offset_pct: 0.3, orientation: 'vertical' });
        });
    </script>

    <script src="{{asset('frontend/Technomasr/js/wow.js')}}"></script>
    <script> wow = new WOW(
            {
                boxClass: 'wow',      // default
                animateClass: 'animated', // default
                offset: 0,          // default
                mobile: true,       // default
                live: true        // default
            }
        )
        wow.init();
    </script>
    @stack('scripts')
</body>

</html>