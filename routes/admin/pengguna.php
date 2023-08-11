<?php

use App\Http\Controllers\Admin\UserController;
use Illuminate\Support\Facades\Route;

Route::group(['prefix' => 'admin', 'middleware' => ['auth', 'admin']], function () {
    Route::group(['prefix' => 'Pengguna'], function () {
        Route::get('/', [UserController::class, 'index'])->name('admin-user.index');
        Route::get('create', [UserController::class, 'create'])->name('admin-user.create');
        Route::post('store', [UserController::class, 'store'])->name('admin-user.store');
        Route::get('detail/{id}', [UserController::class, 'show'])->name('admin-user.show');
        Route::get('edit/{id}', [UserController::class, 'edit'])->name('admin-user.edit');
        Route::put('update/{id}', [UserController::class, 'update'])->name('admin-user.update');
        Route::get('destroy/{id}', [UserController::class, 'destroy'])->name('admin-user.destroy');
    });
});
