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

Route::get('/', 'HomeController@index')->name('home');
Route::resource('fields', 'FieldController');
Route::post('field/get-type', 'FieldController@getType')->name('fields.get_type');

Route::resource('contacts', 'ContactController')->except('index');
Route::resource('fields', 'FieldController');
