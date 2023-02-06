<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\Admin\LoginController;
use App\Http\Controllers\Admin\IndexController;
use App\Http\Controllers\Client\IndexController as ClientIndexController;
use App\Http\Controllers\CategoryController;
use App\Http\Controllers\GenreController;
use App\Http\Controllers\CountryController;
use App\Http\Controllers\MovieController;
use App\Http\Controllers\EpisodeController;

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

Route::get('login', [LoginController::class, 'FormLogin'])->name('admin-login');
Route::post('login', [LoginController::class, 'StoreLogin'])->name('store-login');
route::prefix('admin')->middleware('check-login')->name('admin.')->group(function () {
    route::get('/main', [IndexController::class, 'main'])->name('main');
    Route::resource('/category',CategoryController::class);

    Route::resource('/genre',GenreController::class);
    Route::resource('/country',CountryController::class);
    Route::resource('/movie',MovieController::class);
    Route::resource('/episode',EpisodeController::class) ;

    Route::get('/update_year',[MovieController::class,'update_year']);
    Route::get('/update_season',[MovieController::class,'update_season']);
    Route::get('/search',[MovieController::class,'search'])->name('search.movie');
    Route::resource('/episode',EpisodeController::class);
    Route::get('/select-movie',[EpisodeController::class,'select_movie'])->name('select-movie');
    route::get('/logout', [LoginController::class, 'logout'])->name('logout');
});
//client route

Route::get('/',[ClientIndexController::class,'index'])->name('home');
Route::get('/danh-muc/{slug}',[ClientIndexController::class,'category'])->name('category');
Route::get('/search',[ClientIndexController::class,'search']);
Route::get('/the-loai/{slug}',[ClientIndexController::class,'genre'])->name('genre');
Route::get('/quoc-gia/{slug}',[ClientIndexController::class,'country'])->name('country');
Route::get('/phim/{slug}',[ClientIndexController::class,'movie'])->name('movie');
Route::get('/xem-phim/{slug}',[ClientIndexController::class,'watch'])->name('watch');
Route::get('/nam/{year}',[ClientIndexController::class,'year'])->name('year');



