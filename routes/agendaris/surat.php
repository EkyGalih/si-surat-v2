<?php

use App\Http\Controllers\Agendaris\SuratMasukController;
use Illuminate\Support\Facades\Route;

Route::group(['prefix' => 'agendaris', 'middleware' => ['auth', 'agendaris']], function() {
    Route::group(['prefix' => 'Surat-Masuk'], function() {
        Route::get('/', [SuratMasukController::class, 'index'])->name('agendaris-surat-masuk.index');
    });
});
