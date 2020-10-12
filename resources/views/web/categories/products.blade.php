<div class="product-boxs">
    @foreach ($products as $product)
    <div class="product-box">
        <div class="product-image">
        <img src="{{$product->image_path}}" />
        </div>
        <div class="product-content">
            <div class="name">
                <a href="{{route('web.get_product',$product)}}">{{$product->name}}</a>
            </div>
            <div class="caption">
                <p>{{ $product->description }}</p>
                <div class="caption-footer">
                    <span class="btn-s btn-sale">{{$product->discount}}% @lang('site.discount')</span>
                    @if ($product->tafsil == 1)
                    <span class="btn-s btn-yellow">@lang('site.tafsil')</span>
                    @endif

                    @if ($product->rate != 0)
                    <span class="ratting"><i class="fa fa-star"></i> {{ $product->rate }}</span>
                    @endif
                </div>
            </div>
        </div>
        <div class="price">
            <p>{{ $product->lowest_price() }}</p>
            <b>SR</b>
        </div>
    </div>  
    @endforeach      

</div>