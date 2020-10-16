<!DOCTYPE html>
<html dir="{{ LaravelLocalization::getCurrentLocaleDirection() }}" lang="{{app()->getLocale()}}">

<head>
    <meta charset="UTF-8" />
    <meta name="description" content="" />
    <meta name="keywords" content="">
    <meta name="author" content="">
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <meta property="og:url" content="" />
    <meta property="og:type" content="article" />
    <meta property="og:title" content="" />
    <meta property="og:description" content="" />
    <meta property="og:image" content="" />
    <title>Dr.Attia Khafaga</title>
 
    <link rel="shortcut icon" href="{{ asset('frontend/Technomasr/images/logo.png') }}" sizes="25x25">

    <!-- Stylesheets -->
    <link rel="stylesheet" href="{{ asset('frontend/Technomasr/bootstrap4/css/bootstrap.min.css') }}" />
    <link rel="stylesheet" href="{{ asset('frontend/Technomasr/css/animate.css')}}" type="text/css" />

    <!-- Before&After Gallery -->
    <link rel="stylesheet" href="{{asset('frontend/Technomasr/before-after-gallery/foundation.css')}}" type="text/css" />
    <link rel="stylesheet" href="{{asset('frontend/Technomasr/before-after-gallery/twentytwenty-no-compass.css')}}" type="text/css" />

    <!-- Main -->
    <link rel="stylesheet" href="{{asset('frontend/Technomasr/css/my-style.css')}}" type="text/css" />
    <link rel="stylesheet" href="{{asset('frontend/Technomasr/css/style.css')}}" type="text/css" />
    
    @if (app()->getLocale() == 'ar')
    <link rel="stylesheet" href="{{asset('frontend/Technomasr/css/style-ar.css')}}" type="text/css" />
    <style>
        /* todo:delete after upgrade */
        .owl-carousel,
        .bx-wrapper { direction: ltr; }
        .owl-carousel .owl-item { direction: rtl; }
    </style>
    @endif
    <!-- Owl Carousel -->
    <link rel="stylesheet" href="{{asset('frontend/Technomasr/owl-carousel/owl.carousel.css')}}" />
    <link rel="stylesheet" href="{{asset('frontend/Technomasr/owl-carousel/owl.theme.css')}}" />
    <link rel="stylesheet" href="{{asset('frontend/Technomasr/owl-carousel/owl.transitions.css')}}" />

    <link rel="stylesheet" href="{{asset('frontend/Technomasr/lightbox2/src/css/lightbox.css')}}"/>
    @stack('styles')
</head>

<body>
    <header>
        <div class="menu">
            <div class="container">
                <nav class="navbar navbar-expand-lg">
                    <a class="navbar-brand" href="{{ route('frontend.index') }}">
                        <img src="{{asset('frontend/Technomasr/images/logo.png')}}" id="logo" alt="logo">
                    </a>
                    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false"
                        aria-label="Toggle navigation">
                        <i class="fa fa-bars primary-color"></i>
                    </button>
                    <div class="collapse navbar-collapse" id="navbarNav">
                        <ul class="navbar-nav {{ app()->getLocale() == 'ar' ? 'ml-auto' : 'mr-auto'}}">
                            <li class="nav-item {{ route('frontend.index')==url()->current() ? 'active' : ''  }}">
                                <a class="nav-link" href="{{ route('frontend.index') }}">@lang('site.home')</a>
                            </li>
                            <li class="nav-item {{ route('frontend.services.index') ==url()->current() ? 'active' : ''  }}">
                                <a class="nav-link" href="{{ route('frontend.services.index') }}">@lang('site.services')</a>
                            </li>
                            <li class="nav-item {{ route('frontend.blog.index')==url()->current() ? 'active' : ''  }}">
                                <a class="nav-link" href="{{ route('frontend.blog.index') }}">@lang('site.blog')</a>
                            </li>
                            <li class="nav-item {{ route('frontend.videos.index')==url()->current() ? 'active' : ''  }}">
                                <a class="nav-link " href="{{ route('frontend.videos.index') }}">@lang('site.video_library')</a>
                            </li>
                            <li class="nav-item {{ route('frontend.pages.about')==url()->current() ? 'active' : ''  }}">
                                <a class="nav-link " href=" {{ route('frontend.pages.about') }} ">@lang('site.center_profile')</a>
                            </li>
                            <li class="nav-item {{ route('frontend.pages.before_after')==url()->current() ? 'active' : ''  }}">
                                <a class="nav-link" href="{{ route('frontend.pages.before_after') }} ">@lang('site.before_after')</a>
                            </li>
                         
                            <li class="nav-item {{ route('frontend.contact.index')==url()->current() ? 'active' : ''  }}">
                                <a class="nav-link" href="{{route('frontend.contact.index')}}">@lang('site.contact')</a>
                            </li> 
                        </ul>
                        <li>
                            @if (app()->getLocale() != 'ar')
                            <a class="btn btn-site btn-lang" href="{{ LaravelLocalization::getLocalizedURL('ar', null, [], true) }}">
                                ع
                            </a>
                            @else
                            <a class="btn btn-site btn-lang" href="{{ LaravelLocalization::getLocalizedURL('en', null, [], true) }}">
                                E
                            </a>
                            @endif

                        </li>
                            
                    </div>
                </nav>
            </div>
        </div>
    </header>