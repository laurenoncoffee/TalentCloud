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

URL::forceScheme('https');



/* Home */
Route::redirect('/', '/en', 301);
Route::get('/en', 'HomepageController')->name('home.en');

/* Home FR */
Route::get('/fr', 'HomepageControllerFR')->name('home.fr');
