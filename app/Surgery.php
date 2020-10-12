<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Surgery extends Model
{
    use \Dimsav\Translatable\Translatable;

    public $translatedAttributes = ['name','body'];
    public $guarded = [];
    protected  $appends = ['image_path','icon_path'];


    public  function getImagePathAttribute(){
        return asset('uploads/surgery_images/'.$this->image);
    }

    public  function getIconPathAttribute(){
        return asset('uploads/surgery_images/'.$this->icon);
    }

    //==================relations===================//

    public function category(){
        return $this->belongsTo(Category::class);
    }

    public function images(){
        return $this->hasMany(Image::class);
    } 

}
