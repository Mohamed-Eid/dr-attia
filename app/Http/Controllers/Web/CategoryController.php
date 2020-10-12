<?php

namespace App\Http\Controllers\web;

use App\Category;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Product;

class CategoryController extends Controller
{
    public function index(){
        return 'aaaa';
    }

    public function get_products(Category $category)
    {
        //dd($category->products->with('sizes'));
        //$products = $category->products;
        
        $products = Product::where('category_id',$category->id)->has('sizes')->get();

        $categories = Category::with(['products' => function ($q){
            $q->orderBy('orders', 'desc');
        }])->has('products')->get();


        $most_ordered_products  = Product::where('category_id',$category->id)->has('sizes')
        ->where('orders','>','0')
        ->orderBy('orders', 'DESC')
        ->take(10)
        ->get();

        $all_categories = Category::all();

        return view('web.categories.index',compact('category','products','most_ordered_products','all_categories'));
    }
}
