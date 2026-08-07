<!DOCTYPE html>
<html lang="ja">
<head>
    <meta charset="UTF-8">
    <title>ログイン</title>
</head>
<body>
<<<<<<< HEAD
    <h1>ログイン画面</h1>
    <form method="POST" action="/login">
        @csrf
        <div>
            <label>メールアドレス:</label>
            <input type="email" name="email" required>
        </div>
        <div>
            <label>パスワード:</label>
            <input type="password" name="password" required>
        </div>
        <button type="submit">ログイン</button>
    </form>
</body>
</html>
=======
    <h1>ログイン</h1>

    <div style="background: yellow; color: red; margin-bottom: 10px; padding: 5px; font-size: 12px;">
        セッション確認: {{ json_encode(session()->all()) }}
    </div>

    <form method="POST" action="/login">
        @csrf
        
        @if (session('front.user_register_success') || session('success'))
            <div style="color: black; font-weight: bold; margin-bottom: 10px; background: #e0ffe0; padding: 5px;">
                ユーザを登録しました！！
            </div>
        @endif

        <div style="margin-bottom: 5px;">
            <label for="email">email :</label>
            <input type="email" id="email" name="email" value="{{ old('email') }}" required>
        </div>
        <div style="margin-bottom: 5px;">
            <label for="password">パスワード :</label>
            <input type="password" id="password" name="password" required>
        </div>
        <div>
            <button type="submit">ログインする</button>
        </div>
    </form>

    <br>
    <a href="/user/register">会員登録</a>
</body>
</html>
>>>>>>> 78aa03390d3f06467615b6b4db9769ac4f62e5bf
