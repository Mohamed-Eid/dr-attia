@extends('layouts.dashboard.app')

@section('content')

    <div class="content-wrapper">

        <section class="content-header">

            <h1>@lang('site.users')
            </h1>

            <ol class="breadcrumb">
                <li><a href="{{route('dashboard.index')}}"><i class="fa fa-dashboard"></i> @lang('site.dashboard')</a>
                </li>
                <li><a href="{{route('dashboard.categories.index')}}">@lang('site.categories')</a></li>
                <li class="active"></i> @lang('site.update')</li>
            </ol>
        </section>

        <section class="content">

            <div class="box box-primary">
                <div class="box-header with-border">
                    <h3 class="box-title" style="margin-bottom: 10px;">@lang('site.add')</h3>
                </div>
                <div class="box-body">

                    @include('partials._errors')
                    <form action="{{ route('dashboard.categories.update' , $category->id) }}" method="post" enctype="multipart/form-data">
                        @csrf
                        @method('put')
                        @foreach(config('translatable.locales') as $locale)
                            <div class="form-group">
                                <label>@lang('site.'.$locale.'.name')</label>
                                <input type="text" name="{{$locale}}[name]" class="form-control" value="{{ $category->translate($locale)->name }}" >
                            </div>
                        @endforeach
                        
                        <div class="form-group">
                            <label>@lang('site.color')</label>
                            <!--<input type="color" name="color" value="{{$category->color ? $category->color : '' }}">-->
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
                            <select name="color" class="form-control" style="color:{{$category->color}}">
                                @foreach($colors as $color)
                                <option value="{{ $color['color'] }}" {{ $category->color == $color['color']  ? 'selected' : '' }} style="color:{{$color['color']}};">{{$color['category'] .' - '.$color['color']}}</option>
                                @endforeach
                            </select>
                        </div>

                        <div class="form-group">
                            <label>@lang('site.image')</label>
                            <input type="file" name="image" class="form-control image">
                        </div>

                        <div class="form-group">
                            <img src="{{ asset('uploads/category_images/'.$category->image) }}"
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
                                              What To Expect from surgery
                                            </a>
                                          </h4>
                                        </div>
                                        <div id="collapseOne" class="panel-collapse collapse in">
                                          
                                          
                                          @if(count($category->expectations) > 0)
                                            <div class="box-body">
                                            @foreach ($category->expectations()->take(3)->get() as $expectation)
                                            
                                            <div class="col-md-4">
                                                
                                                @foreach(config('translatable.locales') as $locale)
                                                <div class="form-group">
                                                    <label>@lang('site.'.$locale.'.name')</label>
                                                    <input type="text" name="expectation[{{$expectation->id}}][{{$locale}}][name]" class="form-control" value="{{ $expectation->translate($locale)->name }}" >
                                                </div>
                                                @endforeach

                                                <div class="form-group">
                                                    <label>@lang('site.image')</label>
                                                    <input type="file" name="expectation[{{$expectation->id}}][image]" class="form-control" id="image-{{$expectation->id}}">
                                                </div>
                                                <input type="hidden" name="expectation[{{$expectation->id}}][key]" value="{{$expectation->id}}" class="form-control"  />

                                                <div class="form-group">
                                                    <img src="{{ $expectation->image_path }}"
                                                         class="img-thumbnail" id="image-preview-{{$expectation->id}}" style="width: 100px;">
                                                </div>
                                                <div class="form-group">
                                                    <a class="btn btn-danger" href="{{ route('dashboard.expectation.delete_expectation',$expectation) }}"><i class="fa fa-trash"></i>@lang('site.delete')
                                                    </a>
                                                </div>
                                            </div> 
                                            @push('scripts')
                                            <script>
                                                $("#image-{{$expectation->id}}").change(function() {
                                                    if (this.files && this.files[0]) {
                                                        var reader = new FileReader();
                                        
                                                        reader.onload = function(e) {
                                                            $('#image-preview-{{$expectation->id}}').attr('src', e.target.result);
                                                        }
                                        
                                                        reader.readAsDataURL(this.files[0]); // convert to base64 string
                                                    }
                                                });
                                            </script>
                                            @endpush                                              
                                            @endforeach

                                          </div>

                                          @else
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
                                                <input type="hidden" name="expectation[{{$i}}][key]" value="{{$i}}" class="form-control"  />

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
                                          @endif
                                          
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
                            <button class="btn btn-primary" type="submit"><i class="fa fa-plus"></i>@lang('site.edit')
                            </button>
                        </div>

                    </form>
                </div>
            </div>

        </section><!-- end of content -->

    </div><!-- end of content wrapper -->

@endsection
