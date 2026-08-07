@extends("layouts.front") {{-- ※プロジェクトのレイアウトファイル名に合わせて調整してください --}}

@section("contents")
    <div class="container mt-4">
        <h1>ログイン</h1>
        
        {{-- エラー表示部分 --}}
        @if ($errors->any())
            <div class="alert alert-danger">
                @foreach ($errors->all() as $error)
                    {{ $error }}<br>
                @endforeach
            </div>
        @endif

        <form action="/login" method="post">
            @csrf
            <div class="mb-3">
                <label class="form-label">メールアドレス：</label>
                <input type="email" name="email" class="form-control" value="{{ old('email') }}" required autofocus>
            </div>
            <div class="mb-3">
                <label class="form-label">パスワード：</label>
                <input type="password" name="password" class="form-control" required>
            </div>
            <button class="btn btn-primary mb-3">ログインする</button>
        </form>

        <p class="mt-3">
            <a href="{{ route('front.user.register') }}">新規会員登録はこちら</a>
        </p>
    </div>
@endsection
