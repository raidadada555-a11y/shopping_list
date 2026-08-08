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
        // 入力値の検証
        $credentials = $request->validate([
            'login_id' => 'required',
            'password' => 'required',
        ]);

        // adminガードを使って認証を試みる
        if (Auth::guard('admin')->attempt($credentials)) {
            $request->session()->regenerate();
            return redirect()->intended(route('admin.top'));
        }

        // 認証失敗時はログイン画面に戻す
        return back()->withErrors([
            'login_id' => 'ログインIDまたはパスワードが正しくありません。',
        ]);
    }

    // ログアウト処理
    public function logout(Request $request)
    {
        Auth::guard('admin')->logout();

        $request->session()->invalidate();
        $request->session()->regenerateToken();

        return redirect()->route('admin.index');
    }
}