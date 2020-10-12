<form action="{{route('web.add_to_cart')}}" method="POST">
    @csrf                       
    <input type="hidden" name="product_id" value="{{$product->id}}">
     
    <div class="option-table active">
        <div class="option-head">@lang('site.sizes') <i class="fa fa-angle-down"></i></div>
        <div class="option-radio option-content">
            @foreach ($product->sizes as $index=>$size)
            <input type="radio" id="{{ $size->id }}" class="size_check" name="size_id" value="{{$size->id }}" {{ $index==0 ? 'checked' : '' }}>
            <label class="radio mr-checkbox" for="{{ $size->id }}">
            <span>{{ $size->length.'×'.$size->width.'×'.$size->height.'×'.$size->depth }}</span> <span class="price">{{ $size->cost }} {{ $product->city->currency }}</span>
            </label>
            @endforeach
        </div>
    </div>
    
    @foreach ($product->details as $detail)
    <div class="option-table active">
        <div class="option-head">{{$detail->name}} <i class="fa fa-angle-down"></i></div>
        <div class="option-radio option-content">
            @foreach ($detail->subdetails as $index=>$subdetail)
                <input type="radio" id="{{$subdetail->id}}" name="sub_details[{{$detail->id}}]" value="{{$subdetail->id}}" {{ $index==0 ? 'checked' : '' }}>
                <label class="radio mr-checkbox" for="{{$subdetail->id}}">
                    <span>{{$subdetail->name}}</span> <span class="price">{{$subdetail->price}} {{ $product->city->currency }}</span>
                </label>
            @endforeach            
        </div>
    </div>
    @endforeach
    

    @if ($product->tafsil == 1)
    @include('web.products._tafsil_form')
    @endif

    <div class="add-to-cart">
        <div class="qty-field--custom">
            <a class="fr add right btn-number" data-type="plus" data-field="quantity">
                <i class="fa fa-plus"></i>
            </a>
            <input id="input-quantity2" type="text" name="quantity" class="fr item-count form-control input-number" value="1" min="1" max="9999">
            <a class="fr reduce left btn-number" data-type="minus" data-field="quantity" disabled="disabled">
                <i class="fa fa-minus"></i>
            </a>
        </div>
        <div class="btn-add">
            <button type="sunmit" class="btn btn-yellow btn-block">@lang('site.add_to_cart')</button>
        </div>
    </div>
    
</form>