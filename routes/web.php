<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\ShoppingListController;

// 一覧・登録画面へのルート
Route::get('/shopping_list/list', [ShoppingListController::class, 'list'])->name('front.list');

// 登録処理へのルート
Route::post('/shopping_list/register', [ShoppingListController::class, 'register']);

// 完了処理へのルート
Route::post('/shopping_list/complete/{id}', [ShoppingListController::class, 'complete']);

// 購入済み「買うもの」一覧画面へのルート
Route::get('/completed_shopping_list/list', [ShoppingListController::class, 'completedList']);