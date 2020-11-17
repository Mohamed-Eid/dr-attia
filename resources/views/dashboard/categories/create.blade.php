@extends('layouts.dashboard.app')

@section('content')

    <div class="content-wrapper">

        <section class="content-header">

            <h1>@lang('site.categories')
            </h1>

            <ol class="breadcrumb">
                <li><a href="{{route('dashboard.index')}}"><i class="fa fa-dashboard"></i> @lang('site.dashboard')</a>
                </li>
                <li><a href="{{route('dashboard.categories.index')}}">@lang('site.categories')</a></li>
                <li class="active"></i> @lang('site.add')</li>
            </ol>
        </section>

        <section class="content">

            <div class="box box-primary">
                <div class="box-header with-border">
                    <h3 class="box-title" style="margin-bottom: 10px;">@lang('site.add')</h3>
                </div>
                <div class="box-body">

                    @include('partials._errors')
                    <form action="{{ route('dashboard.categories.store') }}" method="post" enctype="multipart/form-data">

                        @csrf

                        @foreach(config('translatable.locales') as $locale)
                        <div class="form-group">
                            <label>@lang('site.'.$locale.'.name')</label>
                            <input type="text" name="{{$locale}}[name]" class="form-control" value="{{ old($locale.'.name') }}" >
                        </div>
                        @endforeach


                        <!--<div class="form-group">-->
                        <!--    <label>@lang('site.color')</label>-->
                        <!--    <input type="color" name="color" value="">-->
                        <!--</div>-->
                        <div class="form-group">
                            <label>@lang('site.color')</label>
                            @php 
                                $colors = [
                                    [
                                    'color' => '#0a285a',
                                    'category' => 'Bariatric Surgeries',
                                    ],
                                    [
                                    'color' => '#bf1533',
                                    'category' => 'Plastic Surgeries',
                                    ],
                                    [
                                    'color' => '#168bac',
                                    'category' => 'Oncology Surgeries',
                                    ],
                                ];
                            @endphp
                            <select name="color" class="form-control">
                                @foreach($colors as $color)
                                <option value="{{ $color['color'] }}" style="color:{{$color['color']}};">{{$color['category'] .' - '.$color['color']}}</option>
                                @endforeach
                            </select>
                        </div>

                        <div class="form-group">
                            <label>@lang('site.image')</label>
                            <input type="file" name="image" class="form-control image">
                        </div>

                        <div class="form-group">
                            <img src="{{ asset('uploads/category_images/default.png') }}"
                                 class="img-thumbnail image-preview" style="width: 100px;">
                        </div>
                        <div class="row">
                            <div class="col-md-12">
                                <div class="box box-solid">
                                  <div class="box-body">
                                    <div class="box-group" id="accordion">
                                      <!-- we are adding the .panel class so bootstrap.js collapse plugin detects it -->
    
                                      <div class="panel box box-primary">
                                        <div class="box-header with-border">
                                          <h4 class="box-title">
                                            <a data-toggle="collapse" data-parent="#accordion" href="#collapseOne">
                                              What To Expect from Category
                                            </a>
                                          </h4>
                                        </div>
                                        <div id="collapseOne" class="panel-collapse collapse in">
                                          <div class="box-body">
                                            @for ($i = 0; $i < 3; $i++)
                                            
                                            <div class="col-md-4">
                                                
                                                @foreach(config('translatable.locales') as $locale)
                                                <div class="form-group">
                                                    <label>@lang('site.'.$locale.'.name')</label>
                                                    <input type="text" name="expectation[{{$i}}][{{$locale}}][name]" class="form-control" value="{{ old($locale.'.name') }}" >
                                                </div>
                                                @endforeach

                                                <div class="form-group">
                                                    <label>@lang('site.image')</label>
                                                    <input type="file" name="expectation[{{$i}}][image]" class="form-control" id="image-{{$i}}">
                                                </div>
                        
                                                <div class="form-group">
                                                    <img src="{{ asset('uploads/category_images/default.png') }}"
                                                         class="img-thumbnail" id="image-preview-{{$i}}" style="width: 100px;">
                                                </div>
                                            </div> 
                                            @push('scripts')
                                            <script>
                                                $("#image-{{$i}}").change(function() {
                                                    if (this.files && this.files[0]) {
                                                        var reader = new FileReader();
                                        
                                                        reader.onload = function(e) {
                                                            $('#image-preview-{{$i}}').attr('src', e.target.result);
                                                        }
                                        
                                                        reader.readAsDataURL(this.files[0]); // convert to base64 string
                                                    }
                                                });
                                            </script>
                                            @endpush                                              
                                            @endfor

                                          </div>
                                        </div>
                                      </div>
    
                                    </div>
                                  </div>
                                  <!-- /.box-body -->
                                </div>
                                <!-- /.box -->
                            </div>                            
                        </div>

                        <div class="form-group">
                            <button class="btn btn-primary" type="submit"><i class="fa fa-plus"></i>@lang('site.add')
                            </button>
                        </div>

                    </form>
                </div>
            </div>

        </section><!-- end of content -->

    </div><!-- end of content wrapper -->

@endsection
