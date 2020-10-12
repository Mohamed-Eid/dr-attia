<ul class="thumbnails hidden-xs">
<li><a class="thumbnail" href="{{$product->images[0]->image}}" title="{{$product->images[0]->name}}"><img src="{{$product->images[0]->image}}" title="كنب قطعة واحدة&quot;" alt="كنب قطعة واحدة&quot;"></a></li>
    @foreach ($product->images as $image)
    <li class="image-additional">
        <a class="thumbnail" href="{{$image->image}}" title="{{ $product->name }}"> 
            <img src="{{$image->image}}" title="{{ $product->name }}" alt="{{ $product->name }}">
        </a>
    </li>
    @endforeach
</ul>
<div class="container-carousel visible-xs">
    <div id="carousel-thumbnail" class="owl-carousel" style="opacity: 1;">
        @foreach ($product->images as $image)
        <div class="item text-center">
            <img src="{{$image->image}}" class="img-responsive" />
        </div>
        @endforeach

    </div>
    <script>
    $('#carousel-thumbnail').owlCarousel({
        items: 1,   
        itemsDesktop : [1199,1],
        itemsDesktopSmall : [980,1],
        itemsTablet: [768,1],
        itemsTabletSmall: false,
        itemsMobile : [479,1],
        autoPlay: 3000,
        navigation: true,
        navigationText: ['<i class="fa fa-angle-left"></i>', '<i class="fa fa-angle-right"></i>'],
        pagination: true
    });
    </script>
</div>