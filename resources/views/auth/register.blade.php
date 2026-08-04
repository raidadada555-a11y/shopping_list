<!DOCTYPE html>
<html lang="ja">
<head>
    <meta charset="UTF-8">
    <title>ユーザ登録</title>
</head>
<body>
    <h2>ユーザ登録</h2>

    @if ($errors->any())
        {{-- colorを黒にして、list-style: none で赤い点を消しています --}}
        <div style="color: black; margin-bottom: 15px;">
            <ul style="list-style: none; padding-left: 0; margin: 0;">
                @foreach ($errors->all() as $error)
                    <li>{{ $error }}</li>
                @endforeach
            </ul>
        </div>
    @endif

    <form method="POST" action="/user/register">
        @csrf
        <div style="margin-bottom: 10px;">
            <label for="name">名前 :</label>
            <input type="text" id="name" name="name" value="{{ old('name') }}">
        </div>

        <div style="margin-bottom: 10px;">
            <label for="email">email :</label>
            <input type="email" id="email" name="email" value="{{ old('email') }}">
        </div>

        <div style="margin-bottom: 10px;">
            <label for="password">パスワード :</label>
            <input type="password" id="password" name="password">
        </div>

        <div style="margin-bottom: 15px;">
            <label for="password_confirmation">パスワード(再度) :</label>
            <input type="password" id="password_confirmation" name="password_confirmation">
        </div>

        <div>
            <button type="submit" formnovalidate>登録する</button>
        </div>
    </form>
</body>
</html>