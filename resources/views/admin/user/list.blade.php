<!DOCTYPE html>
<html lang="ja">
<head>
    <meta charset="UTF-8">
    <title>買い物リスト 管理画面（ユーザー一覧画面）</title>
    <style>
        table {
            border-collapse: collapse;
            width: 50%;
            margin-top: 20px;
        }
        th, td {
            border: 1px solid #000;
            padding: 8px 12px;
            text-align: left;
        }
        th {
            background-color: #f2f2f2;
        }
        .nav-links a, .nav-links form {
            display: block;
            margin: 0;
            padding: 0;
            line-height: 1.2;
        }
    </style>
</head>
<body>
    <div class="nav-links">
        <a href="{{ route('admin.top') }}">管理画面Top</a>
        <a href="{{ route('admin.user.list') }}">ユーザー一覧</a>
        <form action="{{ route('admin.logout') }}" method="POST">
            @csrf
            <button type="submit" style="background: none; color: blue; border: none; padding: 0; font: inherit; cursor: pointer; text-decoration: underline;">ログアウト</button>
        </form>
    </div>

    <h1>ユーザー一覧</h1>

    <table>
        <thead>
            <tr>
                <th>ユーザID</th>
                <th>ユーザ名</th>
                <th>購入した「買うもの」の数</th>
            </tr>
        </thead>
        <tbody>
            @foreach ($users as $user)
                <tr>
                    <td>{{ $user->id }}</td>
                    <td>{{ $user->name }}</td>
                    <td>{{ $user->completed_shopping_lists_count }}</td>
                </tr>
            @endforeach
        </tbody>
    </table>
</body>
</html>
