<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Page extends Model
{
    use \Dimsav\Translatable\Translatable;

    public $translatedAttributes = ['name','body'];
    public $guarded = [];
    //protected  $appends = ['image_path','icon_path'];

    protected $casts = [
        'images' => 'array'
    ];
}
