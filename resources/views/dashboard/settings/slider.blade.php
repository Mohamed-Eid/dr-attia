<form action="{{ route('dashboard.setting.update_meta') }}" method="POST" enctype="multipart/form-data">
    <div class="row">                
        @csrf
        @method('put')                             
        @foreach ($items as $item)
        <div class="col-md-4">
                                
                <div class="form-group">
                    <label>{{ $item->name }}</label>
                    <input type="file" name="{{$item->id}}[image]" class="form-control" id="image-{{$item->id}}">
                    <div class="form-group">
                        <img src="{{ asset('uploads/setting_images/'.$item->image)}}"
                            class="img-thumbnail" id="image-preview-{{$item->id}}" style="width: 100px;">
                            @if ($item->image)    
                            <a href="{{ route('dashboard.setting.delete_meta_image',$item->id) }}">
                                <i class="fa fa-trash fa-2x text-danger" ></i>
                            </a>            
                            @endif
                    </div>
                    @push('scripts')
                    <script>
                        $("#image-{{$item->id}}").change(function() {
                            if (this.files && this.files[0]) {
                                var reader = new FileReader();
                
                                reader.onload = function(e) {
                                    $('#image-preview-{{$item->id}}').attr('src', e.target.result);
                                }
                                reader.readAsDataURL(this.files[0]); // convert to base64 string
                            }
                        });
                    </script>
                @endpush
                </div>
                @foreach(config('translatable.locales') as $locale)                             
                <div class="form-group">
                    <label>@lang('site.'.$locale.'.description')</label>
                    <textarea type="text" name="{{$item->id}}[{{$locale}}][description]" class="form-control" rows="4" cols="50" > 
                        {{$item->translate($locale)->description}}
                    </textarea>                                        </div>
                @endforeach

                @foreach(config('translatable.locales') as $locale)                             
                <div class="form-group">
                    <label>@lang('site.'.$locale.'.title') {{ $item->name }}</label>
                    <input type="text" name="{{$item->id}}[{{$locale}}][value]" class="form-control" value="{{$item->translate($locale)->value}}" >
                </div>
                @endforeach

                @foreach(config('translatable.locales') as $locale)                             
                <div class="form-group">
                    <label>@lang('site.'.$locale.'.link') {{ $item->name }}</label>
                    <input type="text" name="{{$item->id}}[{{$locale}}][link]" class="form-control" value="{{$item->translate($locale)->link}}" >
                </div>
                @endforeach


            {{-- @include('dashboard.settings.delete_button')                                                    --}}
                                                
        </div> 
        @endforeach                

        <div class="form-group">
            <button class="btn btn-primary" type="submit"><i class="fa fa-plus"></i>@lang('site.save')
            </button>
        </div>
    </div>
</form>  