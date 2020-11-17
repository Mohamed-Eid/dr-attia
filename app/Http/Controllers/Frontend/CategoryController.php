<?php

namespace App\Http\Controllers\Frontend;

use App\Category;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Post;
use App\Surgery;
use App\Video;

class CategoryController extends Controller
{
    public function index(){
        $services = Category::all();
        $videos = Video::all();
        $articles = Post::all();
        return view('frontend.services.index',compact('services','videos','articles'));
    }

    public function show(Category $service){
        $surgeries_ids = Surgery::where('category_id',$service->id)->pluck('id')->toArray();;
    //    dd($surgeries_ids);
        
        $videos = Video::whereIn('surgery_id',$surgeries_ids)->get();
       // dd($videos);
        $articles = Post::whereIn('surgery_id',$surgeries_ids)->get();
       // dd($articles);
        return view('frontend.services.show',compact('service','videos','articles'));
    }

    public function get_surgery(Surgery $surgery){
        return view('frontend.surgeries.show',compact('surgery'));
    }
}
