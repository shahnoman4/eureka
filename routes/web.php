<?php

use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/

Route::get('/', [App\Http\Controllers\HomeController::class, 'home'])->name('home');   
Route::get('partner', [App\Http\Controllers\HomeController::class, 'partner'])->name('partner');   
Route::get('career', [App\Http\Controllers\HomeController::class, 'career'])->name('career');   
Route::get('oilgas', [App\Http\Controllers\HomeController::class, 'oilgas'])->name('oilgas');   
Route::get('geothermal', [App\Http\Controllers\HomeController::class, 'geothermal'])->name('geothermal');   
Route::get('energy', [App\Http\Controllers\HomeController::class, 'energy'])->name('energy');   
Route::get('technologies', [App\Http\Controllers\HomeController::class, 'technologies'])->name('technologies');   
Route::get('about', [App\Http\Controllers\HomeController::class, 'about'])->name('about');   


Route::group(['prefix' => 'admin'], function () {
    Voyager::routes();
});
