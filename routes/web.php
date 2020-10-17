<?php

use Illuminate\Support\Facades\Route;

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

Route::get('/','PagesController@root')->name('root');

Auth::routes(['verify' => true]);

//qq回调的路径
Route::get('/user/get_user_info','Auth\AuthController@qqlogin')->name('userInfo');
//qq登录的路径
Route::get('/qq','Auth\AuthController@qq')->name('qq');

// 引导用户到新浪微博的登录授权页面
Route::get('auth/weibo', 'Auth\AuthController@weibo')->name('weibo');
// 用户授权后新浪微博回调的页面
Route::get('auth/callback', 'Auth\AuthController@callback')->name('callback');

// auth 中间件代表需要登录，verified中间件代表需要经过邮箱验证
Route::group(['middleware' => ['auth', 'verified']], function() {
    Route::get('user_addresses', 'UserAddressesController@index')->name('user_addresses.index');
    Route::get('user_addresses/create', 'UserAddressesController@create')->name('user_addresses.create');
    Route::post('user_addresses', 'UserAddressesController@store')->name('user_addresses.store');
});


