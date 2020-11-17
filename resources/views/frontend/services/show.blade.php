@extends('layouts.frontend.app')

@section('content')

@include('layouts.frontend.includes.page_header')

<section class="services page sec-padding " style="margin-bottom:50px"> 
    <div class="container">
        <div class="row justify-content-center">
            
            @if (count($service->surgeries) > 0)            
            <div class="col-md-12 text-center m-b-25">
                    <h3  class="primary-color bold text-center m-0 wow zoomIn" data-wow-duration="1.5s" data-wow-delay="0.5s" style="color:{{ $service->color }};">{{$service->name}}</h3>
            </div>
            @foreach ($service->surgeries as $surgery)
            <div class="col-md-4 text-center"> 
                <div class="serv">
                    <div class="service">
                        <figure>
                            <img alt src='{{ $surgery->icon_path }}' />
                        </figure>
                    </div>
                    <h3 ><a style="color:{{ $surgery->category->color }};" href="{{ route('frontend.services.get_surgery',$surgery) }}" class="primary-color f-s-25"> {{ $surgery->name }}</a></h3>  
                </div>  
            </div>                
            @endforeach                
            @endif
        
        </div>            

    </div>
</section>

@php 
$is_empty = 0;
@endphp

@foreach ($service->expectations as $item)
    @if($item->name != null || $item->image!=null)
        @php $is_empty = 1; @endphp
    @endif
@endforeach

@if($is_empty > 0)
<section class="about  sec-padding">
    <div class="container">
        <div class="row sec-padding justify-content-center">
            <div class="col-md-12 text-center m-b-25 m-t-25">
                <h2 class="primary-color">@lang('site.category_expectation') {{$service->name}}</h2>
            </div>
            @foreach ($service->expectations()->take(3)->get() as $item)
            <div class="col-md-3 col-sm-6 col-xs-6 col-6">
                <div class="icon text-center m-t-20 m-b-20">
                    <figure>
                        <img src="{{$item->image_path}}" class="w-auto h-100" alt="">
                    </figure> 
                    {{-- <h5 class="bold primary-color">3 - 4</h5> --}}
                    <h4 class="primary-color m-t-15">{{$item->name}}</h4>
                </div>
            </div>
            @endforeach
        </div>
    </div>
</section>
@endif

@if(count($videos)>0)
@include('frontend.includes.videos')
@endif

@if(count($articles)>0)
@include('frontend.includes.posts')
@endif
@endsection
