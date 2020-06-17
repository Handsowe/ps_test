<?php

use Illuminate\Support\Facades\Route;

Route::get('/',             'HomeController@index')->name('home');
Route::post('/',            'HomeController@apiRequest')->name('send-request');

Route::get('/history',              'HistoryController@index')->name('show-history');
Route::get('/history/my',           'HistoryController@myHistory')->name('show-history-my');
Route::get('/history/{id}',         'HistoryController@detailHistory')->name('show-history-detail');
Route::get('/history/{id}/edit',    'HistoryController@editHistory')->name('edit-history-get');
Route::post('/history/{id}/edit',   'HistoryController@editHistory')->name('edit-history-post');
Route::get('/history/{id}/delete',  'HistoryController@deleteHistory')->name('delete-history');

Route::get('/404',  function(){
    return view('not_found');
})->name('not-found');


Auth::routes();
