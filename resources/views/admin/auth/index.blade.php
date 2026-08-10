<!DOCTYPE html>
<html lang="ja">
<head>
    <meta charset="UTF-8">
    <title>買い物リスト 管理画面</title>
</head>
<body>
    <h1>管理画面 ログイン</h1>

    {{-- バリデーションエラーがある場合に黒い点なしでメッセージを表示 --}}
    @if ($errors->any())
        <div style="margin-bottom: 10px;">
            @foreach ($errors->all() as $error)
                {{ $error }}<br>
            @endforeach
        </div>
    @endif

    <form action="{{ route('admin.login') }}" method="POST">
        @csrf
        <div>
            ログインID : <input type="text" name="login_id" value="{{ old('login_id') }}" autofocus>
        </div>
        <div style="margin-top: 5px;">
            パスワード : <input type="password" name="password">
        </div>
        <div style="margin-top: 5px;">
            <button type="submit">ログインする</button>
        </div>
    </form>
</body>
</html>