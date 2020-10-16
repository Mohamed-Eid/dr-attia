@extends('layouts.frontend.app')

@section('content')

@include('layouts.frontend.includes.page_header')

<section class="services page sec-padding " style="margin-bottom:50px"> 
    <div class="container">
        @foreach ($services as $service)
        <div class="row justify-content-center">
            
            @if (count($service->surgeries) > 0)            
            <div class="col-md-12 text-center m-b-25">
                    <h3  class="primary-color bold text-center m-0 wow zoomIn" data-wow-duration="1.5s" data-wow-delay="0.5s">{{$service->name}}</h3>
            </div>
            @foreach ($service->surgeries as $surgery)
            <div class="col-md-4 text-center"> 
                <div class="serv">
                    <div class="service">
                        <figure>
                            <img alt src='{{ $surgery->icon_path }}' />
                        </figure>
                    </div>
                    <h3 ><a href="{{ route('frontend.services.get_surgery',$surgery) }}" class="primary-color f-s-25"> {{ $surgery->name }}</a></h3>  
                </div>  
            </div>                
            @endforeach                
            @endif
        
        </div>            
        @endforeach


    </div>
</section>

<section class="about  sec-padding">
    <div class="container">
        <div class="row sec-padding justify-content-center">
            <div class="col-md-12 text-center m-b-25 m-t-25">
                <h2 class="primary-color"> Dr.Attia In Bariatric Surgeries</h2>
            </div>
            <div class="col-md-3 col-sm-6 col-xs-6 col-6">
                <div class="icon text-center m-t-20 m-b-20">
                    <figure>
                        <img src="Technomasr/images/icon2.png" class="w-auto h-100" alt="">
                    </figure> 
                    <h4 class="primary-color m-t-15">Feature Title</h4>
                </div>
            </div>
            <div class="col-md-3 col-sm-6 col-xs-6 col-6">
                <div class="icon text-center m-t-20 m-b-20">
                    <figure>
                        <img src="Technomasr/images/icon1.png" class="w-auto h-100" alt="">
                    </figure> 
                    <h4 class="primary-color m-t-15">Feature Title</h4>
                </div>
            </div>
            <div class="col-md-3 col-sm-6 col-xs-6 col-6">
                <div class="icon text-center m-t-20 m-b-20">
                    <figure>
                        <img src="Technomasr/images/icon3.png" class="w-auto h-100" alt="">
                    </figure> 
                    <h4 class="primary-color m-t-15">Feature Title</h4>
                </div>
            </div>
            <div class="col-md-3 col-sm-6 col-xs-6 col-6">
                <div class="icon text-center m-t-20 m-b-20">
                    <figure>
                        <img src="Technomasr/images/icon4.png" class="w-auto h-100" alt="">
                    </figure> 
                    <h4 class="primary-color m-t-15">Feature Title</h4>
                </div>
            </div>
        </div>
    </div>
</section>

@include('frontend.includes.videos')

@include('frontend.includes.posts')


@endsection