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
Route::get('careerdetail/{id}', [App\Http\Controllers\HomeController::class, 'careerdetail'])->name('careerdetail');   
Route::get('oilgas', [App\Http\Controllers\HomeController::class, 'oilgas'])->name('oilgas');   
Route::get('geothermal', [App\Http\Controllers\HomeController::class, 'geothermal'])->name('geothermal');   
Route::get('wind', [App\Http\Controllers\HomeController::class, 'wind'])->name('wind');   
Route::get('technologies', [App\Http\Controllers\HomeController::class, 'technologies'])->name('technologies');   
Route::get('about', [App\Http\Controllers\HomeController::class, 'about'])->name('about');   
Route::get('termandconditions', [App\Http\Controllers\HomeController::class, 'termandconditions'])->name('termandconditions');   
Route::get('privacypolicy', [App\Http\Controllers\HomeController::class, 'privacypolicy'])->name('privacypolicy');   
Route::get('innerpage/{slug}', [App\Http\Controllers\HomeController::class, 'innerpage'])->name('innerpage');   
Route::get('faq', [App\Http\Controllers\HomeController::class, 'faq'])->name('faq');   
Route::get('contactus', [App\Http\Controllers\HomeController::class, 'contactus'])->name('contactus');   
Route::post('contactus/store', [App\Http\Controllers\HomeController::class, 'contactusStore'])->name('contactus.store');   
Route::post('job/apply', [App\Http\Controllers\HomeController::class, 'jobApply'])->name('job.apply');   
Route::post('supplier', [App\Http\Controllers\HomeController::class, 'supplier'])->name('supplier');   


Route::group(['prefix' => 'admin'], function () {
    Voyager::routes();
});
