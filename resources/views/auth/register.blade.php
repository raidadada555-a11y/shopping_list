@extends("layouts.front")

@section("contents")
    <h1 style="margin-bottom: 10px;">ユーザ登録</h1>

    @if ($errors->any())
        <div style="color: black; margin-bottom: 10px;">
            @foreach ($errors->all() as $error)
                {{ $error }}<br>
            @endforeach
        </div>
    @endif

    <form action="/user/register" method="post" style="margin: 0; padding: 0;">
        @csrf
        <div style="margin: 0 0 5px 0;">
            <label>名前: <input type="text" name="name" value="{{ old('name') }}" autofocus></label>
        </div>
        <div style="margin: 0 0 5px 0;">
            <label>email : <input type="email" name="email" value="{{ old('email') }}"></label>
        </div>
        <div style="margin: 0 0 5px 0;">
            <label>パスワード: <input type="password" name="password"></label>
        </div>
        <div style="margin: 0 0 10px 0;">
            <label>パスワード(再度): <input type="password" name="password_confirmation"></label>
        </div>
        <div>
            <button type="submit">登録する</button>
        </div>
    </form>
@endsection