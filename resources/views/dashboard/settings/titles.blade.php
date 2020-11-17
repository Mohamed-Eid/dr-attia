<form action="{{ route('dashboard.setting.update_meta') }}" method="POST" enctype="multipart/form-data">
    @csrf
    @method('put') 
    <div class="row">                                    
    
    @foreach ($items as $index => $item)

    @if($item->type=='text')
        <div class="col-md-4">
        @foreach(config('translatable.locales') as $locale)                             
        <div class="form-group">
            <label>{{ $item->name }} @lang('site.in_'.$locale) </label>
            <input type="text" name="{{$item->id}}[{{$locale}}][value]" class="form-control" value="{{$item->translate($locale)->value}}" >
        </div>
        @endforeach
        </div>
    @endif
    @if(($index+1)%3 == 0)
        <hr/>
    @endif
    @endforeach
</div>
    <div class="form-group">
        <button class="btn btn-primary" type="submit"><i class="fa fa-plus"></i>@lang('site.save')
        </button>
    </div>
</form>  
{{-- @include('dashboard.settings.delete_button')                                                    --}}
                                    
