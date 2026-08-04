<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Item;

class ItemController extends Controller
{
    // 一覧表示
    public function index()
    {
        $items = Item::orderBy('created_at', 'desc')->get();
        return view('items.index', compact('items'));
    }

    // アイテム追加
    public function store(Request $request)
    {
        $request->validate([
            'name' => 'required|max:255',
        ]);

        Item::create([
            'name' => $request->name,
            'purchased' => false,
        ]);

        return redirect()->route('items.index');
    }

    // 購入状態の切り替え
    public function toggle(Item $item)
    {
        $item->purchased = !$item->purchased;
        $item->save();

        return redirect()->route('items.index');
    }

    // アイテム削除
    public function destroy(Item $item)
    {
        $item->delete();

        return redirect()->route('items.index');
    }
}