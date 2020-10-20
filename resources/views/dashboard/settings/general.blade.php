<div class="row">                                    
    @foreach ($items as $item)
            <div class="col-md-4">
                <form action="{{ route('dashboard.settings.update',$item) }}" method="POST" enctype="multipart/form-data">
                    @csrf
                    @method('put') 
                    

                    @if ($item->key=='defualt_language')
                        <!-- select -->
                        <div class="form-group">
                            <label>@lang('site.defualt_language')</label>
                            <select class="form-control" name="lang">
                            @foreach(LaravelLocalization::getSupportedLocales() as $localeCode => $properties)
                            <option value="{{ $localeCode }}" {{ $localeCode == $item->image ? 'selected' : '' }}  >{{ $properties['native'] }}</option>
                            @endforeach
                            </select>
                        </div>
                        {{-- <div class="form-group">
                            <label>@lang('site.'.$locale.'.title') {{ $item->name }}</label>
                            @foreach(config('translatable.locales') as $locale)                             
                                <option value="{{ $localeCode }}" {{ $localeCode == $item->translate('ar')->value ? 'selected' : '' }} name="ar[value]" >{{ $properties['native'] }}</option>

                                <input type="text" name="{{$locale}}[value]" class="form-control" value="{{$item->translate($locale)->value}}" >
                            @endforeach
                        </div> --}}

                    @endif


                    <div class="form-group">
                        <button class="btn btn-primary" type="submit"><i class="fa fa-plus"></i>@lang('site.save')
                        </button>
                    </div>
                </form>                                                    
            </div>
    @endforeach
</div>