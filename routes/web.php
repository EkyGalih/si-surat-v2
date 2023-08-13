<?php

use App\Http\Controllers\Admin\BerandaController;
use App\Http\Controllers\Auth\AuthController;
use App\Http\Controllers\User\BerandaController as UserBerandaController;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/

Route::get('/', [AuthController::class, 'index'])->name('login');
Route::post('login', [AuthController::class, 'login'])->name('act-login');
Route::get('logout', [AuthController::class, 'logout'])->name('logout');

Route::group(['prefix' => 'admin', 'middleware' => ['auth', 'admin']], function () {
    Route::get('/', [BerandaController::class, 'index'])->name('admin-beranda');
});

Route::group(['prefix' => 'user', 'middleware' => ['auth', 'user']], function () {
    Route::get('/', [UserBerandaController::class, 'index'])->name('user-beranda');
});
