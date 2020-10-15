@extends('layouts.frontend.app')

@section('content')

<main>
    <section class="slider">
        <div id="carouselExampleControls" class="carousel slide" data-ride="carousel">
            <div class="carousel-inner">
                @foreach (get_settings_by_class('slider') as $index=> $setting)
                 <div class="carousel-item {{ $index==0 ? 'active' : ''}} ">
                    <img class="d-block" src="{{$setting->image_path}}" alt="Second slide">
                    <div class="carousel-caption">
                        <h2 class="bold primary-color wow rotateInDownRight" data-wow-duration="1s" data-wow-delay="0.5s">
                            <span>{{ $setting->value }}</span>
                        </h2>
                        <div class="desc m-t-40 wow bounceInRight" data-wow-duration="1.8s" data-wow-delay="1s">
                            <p>
                                {{ $setting->description }}
                            </p>
                        </div>
                        @if ($setting->link)
                        <a href="#" class="btn btn-site m-t-20 text-white wow rotateInUpRight" data-wow-duration="1s" data-wow-delay="2.5s">Read More</a>
                        @endif
                    </div>
                </div>
                @endforeach                
       
            </div>
            <a class="carousel-control-prev" href="#carouselExampleControls" role="button" data-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="sr-only">Previous</span>
            </a>
            <a class="carousel-control-next" href="#carouselExampleControls" role="button" data-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="sr-only">Next</span>
            </a>
        </div>
    </section>

    <section class="about  sec-padding">
        <div class="container">
            <div class="row">
                <div class="col-md-6">
                    <div class="txt  m-t-50 wow fadeIn" data-wow-duration="1.5s" data-wow-delay="1.2s">
                        <h3 class="primary-color bold m-t-10 m-b-20">Dr. Attia Khafaga Cosmetic Center</h3>
                        <p>
                            Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy
                            text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make
                            a type specimen book. It has survived not only five centuries, but also the leap into electronic
                            typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of
                            Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software
                            like Aldus PageMaker including versions of Lorem Ipsum.
                        </p>
                        <a href="about.php" class="btn btn-site2 m-t-30 pull-right">Read More</i>
                        </a>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="image wow fadeIn" data-wow-duration="1.5s" data-wow-delay="1s">
                        <img src="{{asset('frontend/Technomasr/images/about.jpg')}}" alt="about" class="mw-100 h-auto" />
                    </div>
                </div>
              
            </div>
            <div class="row sec-padding justify-content-center">
                <div class="col-md-12 text-center m-b-25 m-t-25">
                    <h2 class="primary-color">Why Dr.Attia Khafaga !?</h2>
                </div>
                <div class="col-md-3 col-sm-6 col-xs-6 col-6">
                    <div class="icon text-center m-t-20 m-b-20">
                        <figure>
                            <img src="{{asset('frontend/Technomasr/images/icon2.png')}}" class="w-auto h-100" alt="">
                        </figure> 
                        <h4 class="primary-color m-t-15">Feature Title</h4>
                    </div>
                </div>
                <div class="col-md-3 col-sm-6 col-xs-6 col-6">
                    <div class="icon text-center m-t-20 m-b-20">
                        <figure>
                            <img src="{{asset('frontend/Technomasr/images/icon1.png')}}" class="w-auto h-100" alt="">
                        </figure> 
                        <h4 class="primary-color m-t-15">Feature Title</h4>
                    </div>
                </div>
                <div class="col-md-3 col-sm-6 col-xs-6 col-6">
                    <div class="icon text-center m-t-20 m-b-20">
                        <figure>
                            <img src="{{asset('frontend/Technomasr/images/icon3.png')}}" class="w-auto h-100" alt="">
                        </figure> 
                        <h4 class="primary-color m-t-15">Feature Title</h4>
                    </div>
                </div>
                <div class="col-md-3 col-sm-6 col-xs-6 col-6">
                    <div class="icon text-center m-t-20 m-b-20">
                        <figure>
                            <img src="{{asset('frontend/Technomasr/images/icon4.png')}}" class="w-auto h-100" alt="">
                        </figure> 
                        <h4 class="primary-color m-t-15">Feature Title</h4>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <section class="services sec-padding sec-bg">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-md-12 text-center m-b-25 m-t-25">
                        <h3  class="primary-color bold text-center m-b-30 wow zoomIn" data-wow-duration="1.5s" data-wow-delay="0.5s">Our Services</h3>
                </div>
                
                @foreach ($services as $service)
                <div class="col-lg-3 col-md-4 text-center"> 
                    <div class="serv">
                        <div class="service">
                            <figure>
                                <img alt src='{{ $service->image_path }}' />
                            </figure>
                        </div>
                        <h3 > <a href="{{ route('frontend.services.show',$service) }}" class="primary-color f-s-25"> {{$service->name}}</a></h3>  
                    </div>  
                </div>                   
                @endforeach
            </div>
        </div>
       
        
    </section>

    <section class="center" >
        <div class="row no-margin">
            <div class="col-md-5 p-0">
                <img src="{{asset('frontend/Technomasr/images/img5.jpg')}}" class="w-100  h-auto" alt="Cosmatic">
            </div>
            <div class="col-md-7 p-5 about">
                <div class="txt">
                    <h2 class="primary-color">Dr.Attia Khafaga Center</h2>
                    <p>
                        Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy
                        text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make
                        a type specimen book. It has survived not only five centuries, but also the leap into electronic
                        typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of
                        Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software
                        like Aldus PageMaker including versions of Lorem Ipsum.
                    </p>
                    <a href="center.php" class="btn btn-site2 m-t-30 pull-right">Read More</i>
                    </a>
                </div>
            </div>
        </div>

    </section>
    
    <section class=" sec-padding beforeAfter">
        <div class="container">
            <div class="row">
                
                <div class="col-md-12 text-center m-b-25 m-t-25">
                    <h3  class="primary-color bold text-center m-b-30 wow zoomIn" data-wow-duration="1.5s" data-wow-delay="0.5s">Patients Before and After</h3>
                </div>
                
                <div class="owl-demo photos-owl-demo wow zoomIn m-b-30" animation-delay="1s" data-wow-delay="0.4s">
                    @foreach ($bf_images as $image)
                    <div class="item">
                        <a href="#" target="_blank">
                            <img src="{{ $image->image_path }}" alt="Owl Image">
                        </a>
                    </div>                        
                    @endforeach                   
                </div>

                <div class="col-md-12 text-center m-t-30">
                    <a href="before-after.php" class="btn btn-site">View Photo Album</a>
                </div>

            </div>
        </div>
    </section>
    
    @include('frontend.includes.videos')

    @include('frontend.includes.posts')
</main>


@endsection
