<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\CompletedShoppingList;
use Illuminate\Support\Facades\Auth;

class CompletedShoppingListController extends Controller
{
    // 購入済み「買うもの」一覧画面の表示
    public function list()
    {
        $completedShoppingLists = CompletedShoppingList::where('user_id', Auth::id())
            ->orderBy('name', 'asc')
            ->paginate(3);

        return view('shopping_list.completed_list', compact('completedShoppingLists'));
    }
}
