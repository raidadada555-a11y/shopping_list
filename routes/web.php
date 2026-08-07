<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\AuthController;
use App\Http\Controllers\ShoppingListController;
use App\Http\Controllers\Admin\AdminAuthController; // ★管理者用コントローラーの読み込み

// ==========================================
// 一般ユーザー用ルート
// ==========================================

// 非ログイン時のトップページ（ログイン画面）へのルート
Route::get('/', [AuthController::class, 'index'])->name('front.index');
Route::post('/login', [AuthController::class, 'login']);

// 会員登録画面・処理へのルート
Route::get('/user/register', [AuthController::class, 'showRegister'])->name('front.user.register');
Route::post('/user/register', [AuthController::class, 'register']);

// 一覧・登録画面へのルート
Route::get('/shopping_list/list', [ShoppingListController::class, 'list'])->name('front.list');

// 登録処理へのルート
Route::post('/shopping_list/register', [ShoppingListController::class, 'register']);

// 完了処理へのルート
Route::post('/shopping_list/complete/{id}', [ShoppingListController::class, 'complete']);

// 削除処理へのルート
Route::delete('/shopping_list/delete/{shopping_list_id}', [ShoppingListController::class, 'delete'])
    ->whereNumber('shopping_list_id')
    ->name('delete');

// 購入済み「買うもの」一覧画面へのルート
Route::get('/completed_shopping_list/list', [ShoppingListController::class, 'completedList']);


// ==========================================
// 管理者用ルート
// ==========================================
Route::get('/admin', [AdminAuthController::class, 'index'])->name('admin.index');
Route::post('/admin/login', [AdminAuthController::class, 'login'])->name('admin.login');