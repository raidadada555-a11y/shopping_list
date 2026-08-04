<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\ItemController;
use App\Http\Controllers\Auth\RegisteredUserController;
use App\Http\Controllers\Auth\AuthenticatedSessionController;

Route::get('/login', function () {
    return view('auth.login');
})->name('login');

Route::post('/login', [AuthenticatedSessionController::class, 'store']);

Route::get('/user/register', [RegisteredUserController::class, 'create']);
Route::post('/user/register', [RegisteredUserController::class, 'store']);

Route::post('/items', [ItemController::class, 'store'])->name('items.store');
Route::patch('/items/{item}/toggle', [ItemController::class, 'toggle'])->name('items.toggle');
Route::delete('/items/{item}', [ItemController::class, 'destroy'])->name('items.destroy');