<?php

use App\Http\Controllers\Admin\BidangController;
use Illuminate\Support\Facades\Route;

Route::group(['prefix' => 'admin', 'middleware' => ['auth', 'admin']], function () {
    Route::group(['prefix' => 'Bidang'], function () {
        Route::get('/', [BidangController::class, 'index'])->name('admin-bidang.index');
        Route::post('store', [BidangController::class, 'store'])->name('admin-bidang.store');
        Route::put('update/{id}', [BidangController::class, 'update'])->name('admin-bidang.update');
        Route::get('destroy/{id}', [BidangController::class, 'destroy'])->name('admin-bidang.destroy');
    });
});
