@extends('layouts.frontend.app')

@section('content')

@if($page->id == 1)
@include('layouts.frontend.includes.page_header',['header'=>get_setting_by_key('about_page_header')->image_path])
@else
@include('layouts.frontend.includes.page_header',['header'=>get_setting_by_key('center_page_header')->image_path])
@endif
<section class="sec-padding ">
    <div class="container">
        <div class="row ">
            <div class="col-md-12">
                <h3 class="primary-color">{{$page->name}}</h3>
                <div class="pull-right">
                    <img src="{{$page->image_path}}" class="pageImg h-auto" alt="">
                </div>
                <div class="m-t-15 m-b-20">
                    {!! $page->body !!}
                </div>
            </div>
            
            @if(count($page->page_images)>0)

            <div class="col-md-12 text-center m-t-20">
                <h3  class="primary-color bold text-center m-b-30 wow zoomIn" data-wow-duration="1.5s" data-wow-delay="0.5s">Center Photo Album</h3>
            </div>
            
            <section class="masonry container p-t-40 p-b-40">
                @foreach ($page->page_images as $image)
                <div class="item">
                    <a href=" {{$image->image_path}} " data-lightbox="roadtrip" data-title="عنوان الصورة">
                        <img src="{{$image->image_path}}">
                    </a>
                </div>                        
                @endforeach 
            </section>
            @endif

        </div>
        
    </div>
</section>


@include('frontend.pages.contact')

@endsection
