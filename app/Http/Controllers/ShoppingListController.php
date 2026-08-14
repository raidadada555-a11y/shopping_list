<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\ShoppingList;
use App\Models\CompletedShoppingList;
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

        // 購入済みテーブル（completed_shopping_lists）に保存
        CompletedShoppingList::create([
            'user_id' => Auth::id(),
            'name' => $shoppingList->name,
        ]);

        // 元の買い物リストから削除
        $shoppingList->delete();

        // 命名規則に基づいた名前付きルートへリダイレクト（routes/web.php の設定に合わせる）
        return redirect()->route('completed.list'); // ※routes/web.phpで定義した名前に必要に応じて変更してください
    }

    // 「買うもの」の削除処理
    public function delete($id)
    {
        // ログインユーザーのデータであることを確認して削除
        $shoppingList = ShoppingList::where('user_id', Auth::id())->findOrFail($id);
        $shoppingList->delete();

        return redirect()->route('front.list');
    }

    // 購入済み「買うもの」一覧画面の表示
    public function completedList()
    {
        // name順 -> 購入日（複合ソート）
        $completedShoppingLists = CompletedShoppingList::where('user_id', Auth::id())
            ->orderBy('name', 'asc')
            ->orderBy('created_at', 'desc')
            ->paginate(3);

        return view('shopping_list.completed_list', compact('completedShoppingLists'));
    }
}
