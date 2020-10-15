<section class="contact sec-padding">
    <div class="row no-margin" >
        <div class="col-md-12">
            <h3 class="primary-color bold text-center m-b-30 wow zoomIn" data-wow-duration="1.5s" data-wow-delay="0.5s">Get In Toutch With Us</h3>
        </div>
        <div class="col-md-12 text-center m-b-30">
            <ul class="social">
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
                        <i class="fa fa-twitter" id="twitter"></i>
                    </a>
                </li> 
            </ul>
        </div>
        <div class="col-md-6 ">
            <div class="content container">
              
                <ul class="p-0 m-b-25 ">
                    <li class="wow zoomInLeft" data-wow-duration="1.5s" data-wow-delay="1s">
                        <div class="icon text-center rounded-circle">
                            <i class="fa fa-map-marker"></i>
                        </div>
                        <div class="txt">
                            <p>Your Address , Nasr City Cairo</p>
                        </div>
                        <div class="clearfix"></div>
                    </li>
                    <li class="wow zoomInLeft" data-wow-duration="1.5s" data-wow-delay="1.3s">
                        <div class="icon text-center rounded-circle">
                            <i class="fa fa-envelope-o"></i>
                        </div>
                        <div class="txt">
                            <p>info@example.com</p>
                        </div>
                        <div class="clearfix"></div>
                    </li>
                    <li class="wow zoomInLeft" data-wow-duration="1.5s" data-wow-delay="1.6s">
                        <div class="icon text-center rounded-circle">
                            <i class="fa fa-phone"></i>
                        </div>
                        <div class="txt">
                            <p>+2 010012021020</p>
                        </div>
                        <div class="clearfix"></div>
                    </li>
                </ul>

                <h3 class="primary-color bold wow zoomInLeft" data-wow-duration="1.5s" data-wow-delay="0.5s">Leave us a message</h3>

                <form class="m-t-30" action="{{ route('frontend.contact.store') }}" method="POST">
                    @csrf
                    <div class="form-row">
                        <div class="form-group col-md-4">
                            <input type="text" name="name" class="form-control" placeholder="Name" required>
                        </div>
                        <div class="form-group col-md-4">
                            <input type="text" name="phone" class="form-control" placeholder="Phone" required>
                        </div>
                        <div class="form-group col-md-4">
                            <input type="email"  name="email" class="form-control" placeholder="Email" required>
                        </div>
                        <div class="form-group col-12">
                            <textarea class="form-control" name="message" placeholder="Write your message" required></textarea>
                        </div>
                    </div>
                    <div class=" m-t-30">
                        <button type="submit" class="btn btn-site pull-right text-white">Send</button>
                    </div>
                </form>
            </div>
        </div>

        <div class="col-md-6 p-0">
            <div class="map">
            <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d110532.89549083744!2d31.30329406893522!3d30.032468600716175!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x14583c1380cba7ef%3A0xd541260e9e06978d!2sNasr%20City%2C%20Cairo%20Governorate!5e0!3m2!1sen!2seg!4v1601175174423!5m2!1sen!2seg" width="600" height="450" frameborder="0" style="border:0;" allowfullscreen="" aria-hidden="false" tabindex="0"></iframe>
            </div>
        </div>
        
    </div> 
</section>