@extends('layouts.frontend.app')

@section('content')

@include('layouts.frontend.includes.page_header')


<section class="sec-padding">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <h3 class="primary-color">{{ $surgery->name }}</h3>
                <div class="pull-right">
                    <img src="{{ $surgery->image_path }}" class="pageImg h-auto" alt="">
                </div>
                <div class="m-t-15">
                    {!! $surgery->body !!}
                </div>
            </div>
        </div>
    </div>
</section>




@endsection
