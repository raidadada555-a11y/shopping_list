<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\ShoppingList;
use Illuminate\Support\Facades\Auth;

class ShoppingListController extends Controller
{
    // 一覧・登録画面の表示
    public function list()
    {
        $shoppingLists = ShoppingList::where('user_id', Auth::id())
            ->orderBy('name', 'asc')
            ->paginate(3);

        return view('shopping_list.list', compact('shoppingLists'));
    }

    // 「買うもの」の登録処理
    public function register(Request $request)
    {
        $request->validate([
            'name' => 'required|max:255',
        ]);

        // データの保存
        ShoppingList::create([
            'user_id' => Auth::id(),
            'name' => $request->name,
        ]);

        return redirect()->route('front.list');
    }

    // 「買うもの」の完了処理
    public function complete($id)
    {
        // ログインユーザーのデータであることを確認して取得
        $shoppingList = ShoppingList::where('user_id', Auth::id())->findOrFail($id);

        return redirect('/completed_shopping_list/list');
    }

    // 購入済み「買うもの」一覧画面の表示
    public function completedList()
    {
        return view('shopping_list.completed_list');
    }
}