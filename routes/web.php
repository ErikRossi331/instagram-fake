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

use App\Http\Controllers\SiteController;

include('admin.php');

Route::group(['prefix' => 'laravel-filemanager', 'middleware' => ['auth']], function () {
    \UniSharp\LaravelFilemanager\Lfm::routes();
});

Route::get('/', function () {
    return redirect('/blog/publicacoes');
});
Route::get('/perfil/{category}', 'BlogController@category')->name('homepage');
Route::get('/blog/publicacoes', 'BlogController@index')->name('homepage');



Auth::routes();



