<?php

use App\Http\Controllers\User\SuratController;
use Illuminate\Support\Facades\Route;

Route::group(['prefix' => 'user', 'middleware' => ['auth', 'user']], function() {
    Route::group(['prefix' => 'Surat'], function() {
        Route::get('/', [SuratController::class, 'index'])->name('user-surat.index');
        Route::get('create', [SuratController::class, 'create'])->name('user-surat.create');
        Route::post('store', [SuratController::class, 'store'])->name('user-surat.store');
        Route::get('edit/{id}', [SuratController::class, 'edit'])->name('user-surat.edit');
        Route::put('update/{id}', [SuratController::class, 'update'])->name('user-surat.update');
        Route::get('destroy/{id}', [SuratController::class, 'destroy'])->name('user-surat.destroy');
    });
});
