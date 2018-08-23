<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
|
*/

//route for welcome page
Route::get('/', function () {
	return view('welcome');
});

//routes for authentication
Auth::routes();
//route for home
Route::get('/home', 'HomeController@index')->name('home');


//middleware for allow only users to use crud funtionality
Route::group(['middleware'=>'auth'],function(){
	Route::resource('contacts','ContactController');
	Route::post('/contacts/search', 'ContactController@search');
	
});