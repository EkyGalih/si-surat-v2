<?php

use App\Http\Controllers\Admin\UserController;
use Illuminate\Support\Facades\Route;

Route::group(['prefix' => 'admin', 'middleware' => ['auth', 'admin']], function() {
    Route::get('pengguna', [UserController::class, 'index'])->name('admin-user.index');
    Route::get('create', [UserController::class, 'create'])->name('admin-user.create');
    Route::post('store', [UserController::class, 'store'])->name('admin-user.store');
    Route::get('edit/{id}', [UserController::class, 'edit'])->name('admin-user.edit');
    Route::put('update/{id}', [UserController::class, 'update'])->name('admin-user.update');
    Route::get('destroy/{id}', [UserController::class, 'destroy'])->name('admin-user.destroy');
});