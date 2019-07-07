<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', 'PageController@home');
Route::get('/about', 'PageController@about');
Route::get('/contact', 'PageController@contact');

//->name() definers a named route used with route(), else we use url()
Auth::routes();
Route::get('/home', 'HomeController@index')->name('home');

Route::group(array('prefix' => 'admin', 'namespace' => 'Admin', 'middleware' => 'manager'), function () {
    
    Route::get('/', 'PagesController@home');
    
    Route::get('users', 'UsersController@index');
    Route::get('users/{id?}/edit', 'UsersController@edit');
    Route::post('users/{id?}/edit','UsersController@update');
    Route::post('users/{id?}/delete','UsersController@delete');
    
    Route::get('roles', 'RolesController@index');
    Route::get('roles/create', 'RolesController@create');
    Route::post('roles/create', 'RolesController@store');
    
    Route::get('posts', 'PostsController@index');
    Route::get('posts/create', 'PostsController@create');
    Route::post('posts/create', 'PostsController@store');
    Route::get('posts/{id?}/edit', 'PostsController@edit');
    Route::post('posts/{id?}/edit','PostsController@update');
    Route::post('posts/{id?}/delete','PostsController@delete');
    
    Route::get('categories', 'CategoriesController@index');
    Route::get('categories/create', 'CategoriesController@create');
    Route::post('categories/create', 'CategoriesController@store');
    Route::post('categories/{id?}/delete', 'CategoriesController@delete');
    
    Route::post('comments/{post_id?}', 'AdminCommentsController@index');
    Route::post('comments/{id?}/delete', 'AdminCommentsController@delete');

});

Route::get('/blog', 'BlogController@index');
Route::get('/blog/{slug?}', 'BlogController@show');

Route::post('/comment', 'CommentsController@newComment');