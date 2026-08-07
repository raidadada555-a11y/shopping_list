<?php

declare(strict_types=1);

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class AdminAuthController extends Controller
{
    // 管理者ログイン画面の表示
    public function index()
    {
        return view("admin.auth.index");
    }

    // 管理者ログイン処理
    public function login(Request $request)
    {
        // 入力値の検証（未入力の場合は自動で元の画面にエラー付きで戻る）
        $request->validate([
            'login_id' => 'required',
            'password' => 'required',
        ]);

        // ★バリデーションを無事通過したときの仮の処理
        return 'ログインのバリデーションを通過しました！';
    }
}