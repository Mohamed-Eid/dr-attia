<?php

/**
 * Store a newly created resource in storage.
 *
 * @param  string $path folder name in public
 * @param  $request->image
 * @return string name
 */
function upload_image($path, $image)
{
    // $image must be a $request->image 
    Intervention\Image\Facades\Image::make($image)->resize(300, null, function ($constraint) {
        $constraint->aspectRatio();
    })
        ->save(public_path('uploads/'.$path .'/'. $image->hashName()));
    return $image->hashName();
}

function delete_image($folder , $image)
{
    Illuminate\Support\Facades\Storage::disk('public_uploads')->delete('/'.$folder.'/' . $image);
}

function get_video_id($link){
    preg_match('%(?:youtube(?:-nocookie)?\.com/(?:[^/]+/.+/|(?:v|e(?:mbed)?)/|.*[?&]v=)|youtu\.be/)([^"&?/ ]{11})%i', $link, $match);
    return $match[1];
}

?>