<form action="{{ route('dashboard.setting.update_meta') }}" method="POST" enctype="multipart/form-data">
    @csrf
    @method('put') 
    <div class="row">                                    
        @foreach ($items as $item)
        <div class="col-md-3">
            @foreach(config('translatable.locales') as $locale)                             
            <div class="form-group">
                <label>@lang('site.'.$locale.'.title') {{ $item->name }}</label>
                <input type="text" name="{{$item->id}}[{{$locale}}][value]" class="form-control" value="{{$item->translate($locale)->value}}" >
            </div>
            @endforeach

            
            <div class="form-group">
                <label>{{ $item->name }}</label>
                <input type="file" name="{{ $item->id }}[image]" class="form-control" id="image-{{$item->id}}">
                
                <div class="form-group">
                    <img src="{{ $item->image ? $item->image_path : '' }}"
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
        </div>
        @endforeach
    </div>
    <div class="form-group">
        <button class="btn btn-primary" type="submit"><i class="fa fa-plus"></i>@lang('site.save')
        </button>
    </div>
</form>   
