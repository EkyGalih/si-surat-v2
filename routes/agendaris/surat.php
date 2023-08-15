<?php

use App\Http\Controllers\Agendaris\SuratKeluarController;
use App\Http\Controllers\Agendaris\SuratMasukController;
use Illuminate\Support\Facades\Route;

Route::group(['prefix' => 'agendaris', 'middleware' => ['auth', 'agendaris']], function() {
    Route::group(['prefix' => 'Surat-Masuk'], function() {
        Route::get('/', [SuratMasukController::class, 'index'])->name('agendaris-surat-masuk.index');
    });

    Route::group(['prefix' => 'Surat-keluar'], function() {
        Route::get('/', [SuratKeluarController::class, 'index'])->name('agendaris-surat-keluar.index');
        // Route::get('edit/{id}', [SuratKeluarController::class, 'edit'])->name('agendaris-surat-keluar.edit');
        // Route::put('update/{id}', [SuratKeluarController::class, 'update'])->name('agendaris-surat-keluar.update');
        Route::get('destroy/{id}', [SuratKeluarController::class, 'destroy'])->name('agendaris-surat-keluar.destroy');
        Route::put('nosurat/{id}', [SuratKeluarController::class, 'nosurat'])->name('agendaris-surat-keluar.nosurat');
    });
});
