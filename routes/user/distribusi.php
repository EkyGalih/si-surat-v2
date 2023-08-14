<?php

use App\Http\Controllers\Admin\DistribusiController;
use Illuminate\Support\Facades\Route;

Route::group(['prefix' => 'user', 'middleware' => ['auth', 'user']], function() {
    Route::group(['prefix' => 'Distribusi'], function() {
        Route::get('/', [DistribusiController::class, 'index'])->name('user-distribusi.index');
    });
});
