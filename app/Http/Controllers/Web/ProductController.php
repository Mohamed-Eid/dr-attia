<?php

namespace App\Http\Controllers\web;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Product;

class ProductController extends Controller
{
    public function get_product(Product $product)
    {
        $related_products = Product::where('category_id',$product->category_id)
                            ->has('sizes')
                            ->where('id','!=',$product->id)
                            ->select('id','image')->get();
        //dd($related_products);
        return view('web.products.index',compact('product','related_products'));
    }
}
