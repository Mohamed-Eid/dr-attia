@extends('layouts.frontend.app')

@section('content')

@include('layouts.frontend.includes.page_header',['header'=>get_setting_by_key('contact_header')->image_path])

@include('frontend.pages.contact')

@endsection
