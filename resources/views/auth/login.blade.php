<!DOCTYPE html>
<html lang="ja">
<head>
    <meta charset="UTF-8">
    <title>ログイン</title>
</head>
<body>
    <h1>ログイン</h1>

    @if (session('success'))
        <p style="color: black;">{{ session('success') }}</p>
    @endif

    <form method="POST" action="/login">
        @csrf
        <div>
            <label for="email">email :</label>
            <input type="email" id="email" name="email" value="{{ old('email') }}" required>
        </div>
        <div>
            <label for="password">パスワード :</label>
            <input type="password" id="password" name="password" required>
        </div>
        <div>
            <button type="submit">ログインする</button>
        </div>
    </form>

    <a href="/user/register">会員登録</a>
</body>
</html>