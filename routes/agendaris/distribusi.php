<?php

use App\Http\Controllers\Agendaris\DistribusiController;
use Illuminate\Support\Facades\Route;

Route::group(['prefix' => 'agendaris', 'middleware' => ['auth', 'agendaris']], function() {
    Route::group(['prefix' => 'Distribusi-Surat'], function() {
        Route::get('/', [DistribusiController::class, 'index'])->name('agendaris-distribusi.index');
        Route::get('create', [DistribusiController::class, 'create'])->name('agendaris-distribusi.create');
        Route::post('store', [DistribusiController::class, 'store'])->name('agendaris-distribusi.store');
        Route::get('edit/{id}', [DistribusiController::class, 'edit'])->name('agendaris-distribusi.edit');
        Route::put('update/{id}', [DistribusiController::class, 'update'])->name('agendaris-distribusi.update');
        Route::get('destroy/{id}', [DistribusiController::class, 'destroy'])->name('agendaris-distribusi.destroy');
    });
});
