<?php


Route::group(
    [
        'prefix' => LaravelLocalization::setLocale(),
        'middleware' => [ 'localeSessionRedirect', 'localizationRedirect', 'localeViewPath' ]
    ],
    
    function(){
        Route::prefix('dashboard')->name('dashboard.')->group(function(){
           
            Auth::routes(['register' => false]);


            Route::get('get_video_ajax/', function () {
                //return request()->all();
                return get_video_id(request()->link);
            })->name('get_video_id');

            Route::middleware(['auth'])->group(function(){
                Route::get('/','DashboardController@index')->name('index');

                //user routes
                Route::resource('users' , 'UserController');
                Route::resource('/categories','CategoryController');
                Route::resource('/surgery','SurgeryController');
                
                Route::resource('/image_album','ImageAlbumController')->only(['index' , 'create' , 'store' , 'destroy']);
                Route::resource('/question_answer','QuestionAnswerController');
                Route::resource('/videos','VideoController');
 
                Route::resource('/blog','PostController');



                Route::get('profile','ProfileController@edit')->name('profiles.edit');
                Route::put('profile','ProfileController@update')->name('profiles.update');
                
                Route::get('profile/change_password','ProfileController@change_password')->name('profiles.change_password');
                Route::put('profile/change_password','ProfileController@change_password_method')->name('profiles.change_password_method');
    
    
    
            });
        });//end of dashboard routes
});

