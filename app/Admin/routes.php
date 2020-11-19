<?php

use Illuminate\Routing\Router;

Admin::routes();

Route::group([
    'prefix'        => config('admin.route.prefix'),
    'namespace'     => config('admin.route.namespace'),
    'middleware'    => config('admin.route.middleware'),
], function (Router $router) {
    $router->get('/', 'HomeController@index');
    $router->get('users', 'UsersController@index');
    $router->resource('categories',CategoriesController::class);
    $router->get('api/categories', 'CategoriesController@apiIndex');
    $router->resource('articles', ArticlesController::class);
    $router->resource('advert-types', AdvertTypeController::class);
    $router->resource('adverts', AdvertController::class);
});