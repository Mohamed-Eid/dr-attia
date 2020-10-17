@extends('layouts.dashboard.app')

@section('content')

    <div class="content-wrapper">

        <section class="content-header">

            <h1>@lang('site.users')
            </h1>

            <ol class="breadcrumb">
                <li><a href="{{route('dashboard.index')}}"><i class="fa fa-dashboard"></i> @lang('site.dashboard')</a>
                </li>
                <li><a href="{{route('dashboard.users.index')}}">@lang('site.users')</a></li>
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
                    <form action="{{ route('dashboard.users.store') }}" method="post" enctype="multipart/form-data">
                        @csrf
                        <div class="form-group">
                            <label>@lang('site.first_name')</label>
                            <input type="text" name="first_name" class="form-control" value="{{ old('first_name') }}"
                                   required>
                        </div>

                        <div class="form-group">
                            <label>@lang('site.last_name')</label>
                            <input type="text" name="last_name" class="form-control" value="{{ old('last_name') }}"
                                   required>
                        </div>

                        <div class="form-group">
                            <label>@lang('site.email')</label>
                            <input type="email" name="email" class="form-control" value="{{ old('email') }}" required>
                        </div>

                        <div class="form-group">
                            <label>@lang('site.image')</label>
                            <input type="file" name="image" class="form-control image">
                        </div>

                        <div class="form-group">
                            <img src="{{ asset('uploads/user_images/default.png') }}"
                                 class="img-thumbnail image-preview" style="width: 100px;">
                        </div>

                        <div class="form-group">
                            <label>@lang('site.password')</label>
                            <input type="password" name="password" class="form-control" required>
                        </div>

                        <div class="form-group">
                            <label>@lang('site.password_confirmation')</label>
                            <input type="password" name="password_confirmation" class="form-control" required>
                        </div>


                        {{-- <div class="form-group">
                            <label>@lang('site.permission')</label>

                            @php
                               // $models = ['users' , 'categories' , 'products' , 'clients' , 'orders'];
                                $models = [];
                                $x = [];
                                foreach( config('laratrust_seeder.role_structure.super_admin') as $key=> $value){
                                    array_push($models,$key);
                                    $x[$key] = explode(',',$value);
                                }
                                //dd($x);
                               $data = config('laratrust_seeder.permissions_map');
                                $maps   = ['create' , 'read' , 'update' , 'delete'];
                            @endphp

                            <div class="nav-tabs-custom">

                                <ul class="nav nav-tabs">
                                    @foreach($models as $index=>$model)
                                        <li class="{{ $index == 0 ? 'active' : '' }}"><a href="#{{$model}}"
                                                                                         data-toggle="tab">@lang('site.'.$model)</a>
                                        </li>
                                    @endforeach
                                </ul>
                                
                                
                                <div class="tab-content">
                                    @foreach($models as $index=>$model)
                                        <div class="tab-pane {{ $index == 0 ? 'active' : '' }}" id="{{$model}}">
                                            @foreach($x as $model_name => $maps)
                                                @foreach ($maps as $map)
                                                    @if ($model == $model_name)
                                                    <label><input type="checkbox" name="permissions[]"
                                                        value="{{$data[$map].'_'.$model_name}}"> @lang("site.$data[$map]")</label>
    
                                                    @endif
                                                @endforeach                                    
                                            @endforeach
                                        </div><!-- /.tab-pane -->
                                    @endforeach
                                </div>
                                <!-- /.tab-content -->
                            </div>
                            <!-- nav-tabs-custom -->

                        </div> --}}


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
