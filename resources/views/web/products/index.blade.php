@extends('web.layouts.app')

@section('body_class')
product
@endsection

@section('styles')
<script src="{{asset('web/js/magnific-popup.min.js')}}" type="text/javascript"></script>
<link href="{{asset('web/css/magnific-popup.css')}}" type="text/css" rel="stylesheet" media="screen" />
@endsection

@section('header')
@include('web.layouts._custom_header',['title'=>$product->name])
@endsection

@section('content')
	<div id="content" class="products-product">
		<div class="container">
			<div class="row">
                
                <div class="col-sm-6">
                    @include('web.products._thumbnails')
                </div>
                

				<div class="col-sm-6">
					<div class="description">
						<div class="name">
                            {{ $product->name }} 
                            @if ($product->rate > 0)
                                <span class="ratting"><i class="fa fa-star"></i>{{$product->rate}}</span>
                            @endif
                        </div>
						<p>
                            {{ $product->description }}
                        </p>
					</div>
                    
                    <div class="options">
                        @include('web.products._form')
					</div>
					<div class="table-ratting">
                        @include('web.products._comments')
					</div>
				</div>
				<div class="col-sm-12">
                    @include('web.products._related_products')
				</div>
			</div>
		</div>
	</div>

@endsection

@section('scripts')
    <script>
    function goBack() {
      window.history.back();
    }
    </script> 
    <script type="text/javascript">
        $(document).ready(function() {
            $('.thumbnails').magnificPopup({
                type:'image',
                delegate: 'a',
                gallery: {
                    enabled: true
                }
            });
            
            $('.option-head').on('click', function(e) {           
                $(this).parent().toggleClass('active');            
            });    	
            
            
            
            
        });
    </script>
    <script type="text/javascript">    
    $('.btn-number').click(function(e){
        e.preventDefault();
        
        fieldName = $(this).attr('data-field');
        type      = $(this).attr('data-type');
        var input = $("input[name='"+fieldName+"']");
        var currentVal = parseInt(input.val());
        if (!isNaN(currentVal)) {
            if(type == 'minus') {
                
                if(currentVal > input.attr('min')) {
                    input.val(currentVal - 1).change();
                } 
                if(parseInt(input.val()) == input.attr('min')) {
                    $(this).attr('disabled', true);
                }
    
            } else if(type == 'plus') {
    
                if(currentVal < input.attr('max')) {
                    input.val(currentVal + 1).change();
                }
                if(parseInt(input.val()) == input.attr('max')) {
                    $(this).attr('disabled', true);
                }
    
            }
        } else {
            input.val(0);
        }
        change_price();
    });
    $('.input-number').focusin(function(){
       $(this).data('oldValue', $(this).val());
    });
    $('.input-number').change(function() {
        
        minValue =  parseInt($(this).attr('min'));
        maxValue =  parseInt($(this).attr('max'));
        valueCurrent = parseInt($(this).val());
        
        name = $(this).attr('name');
        if(valueCurrent >= minValue) {
            $(".btn-number[data-type='minus'][data-field='"+name+"']").removeAttr('disabled')
        } else {
            alert('Sorry, the minimum value was reached');
            $(this).val($(this).data('oldValue'));
        }
        if(valueCurrent <= maxValue) {
            $(".btn-number[data-type='plus'][data-field='"+name+"']").removeAttr('disabled')
        } else {
            alert('Sorry, the maximum value was reached');
            $(this).val($(this).data('oldValue'));
        }
        
        
    });
    $(".input-number").keydown(function (e) {
            // Allow: backspace, delete, tab, escape, enter and .
            if ($.inArray(e.keyCode, [46, 8, 9, 27, 13, 190]) !== -1 ||
                 // Allow: Ctrl+A
                (e.keyCode == 65 && e.ctrlKey === true) || 
                 // Allow: home, end, left, right
                (e.keyCode >= 35 && e.keyCode <= 39)) {
                     // let it happen, don't do anything
                     return;
            }
            // Ensure that it is a number and stop the keypress
            if ((e.shiftKey || (e.keyCode < 48 || e.keyCode > 57)) && (e.keyCode < 96 || e.keyCode > 105)) {
                e.preventDefault();
            }
        });
    </script>

<script>

    var dim = {
        depth : 0,
        height : 0,
        length : 0,
        width : 0,
    };

    var costs = {
        depth_cost : {{ $product->depth_cost ?? 0 }},
        height_cost : {{ $product->height_cost ?? 0}},
        length_cost : {{ $product->length_cost ?? 0}},
        width_cost : {{ $product->width_cost ?? 0}}
    };

    $('.total-price').html(calc_price());


    if($('#depth').length){
        var depth = document.getElementById('depth');
        depth.addEventListener('keyup',function(){
            dim.depth = depth.value;
            calc_price();
            change_price();
        }); 
    }

    if($('#height').length){
    var height = document.getElementById('height');
    height.addEventListener('keyup',function(){
        dim.height = depth.height;
        calc_price();
        change_price();
    }); 
    }

    if($('#length').length){
    var length = document.getElementById('length');
    length.addEventListener('keyup',function(){
        dim.length = length.value;
        calc_price();
        change_price();
    }); 
    }

    if($('#width').length){
    var width = document.getElementById('width');
    width.addEventListener('keyup',function(){
        dim.width = width.value;
        calc_price();
        change_price();
    });    
    }
    function calc_price()
    {
        qty = $('#input-quantity').val();
        total = (dim.depth/100 * costs.depth_cost) 
                + (dim.length/100 * costs.length_cost) 
                + (dim.height/100 * costs.height_cost) 
                + (dim.width/100 * costs.width_cost);
        
        //console.log('total : '+total);
        //console.log(dim);
        return (total * qty).toFixed(2);
    }

    function change_price()
    {
        $('.total-price').html(calc_price());
    }
</script>  
@endsection

