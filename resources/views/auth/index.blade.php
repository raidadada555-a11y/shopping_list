@extends("layouts.front")

@section("contents")
    <h1>ログイン</h1>

    <!-- ユーザー登録成功時のメッセージ（スタイル調整版） -->
    @if (session('front.user_register_success') || session('success'))
        <div style="color: #333; margin-bottom: 10px;">
            ユーザを登録しました！！
        </div>
    @endif

    @if ($errors->any())
        <div style="color: red;">
            @foreach ($errors->all() as $error)
                {{ $error }}<br>
            @endforeach
        </div>
    @endif

    <form action="/login" method="post">
        @csrf
        <div>
            <label>email : </label>
            <input type="email" name="email" value="{{ old('email') }}" required autofocus>
        </div>
        <div>
            <label>パスワード : </label>
            <input type="password" name="password" required>
        </div>
        <div>
            <button type="submit">ログインする</button>
        </div>
    </form>

    <div>
        <a href="{{ route('front.user.register') }}">会員登録</a>
    </div>
@endsection