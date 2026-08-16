<!DOCTYPE html>
<html lang="ja">
<head>
    <meta charset="UTF-8">
    <title>買い物リスト（購入済み一覧）</title>
</head>
<body>
    <h1>購入済み「買うもの」一覧</h1>

    <!-- 「買うもの」一覧に戻るリンク -->
    <p>
        <a href="{{ route('front.list') }}">「買うもの」一覧に戻る</a>
    </p>

    <!-- 一覧テーブル -->
    <table style="border: 3px double black; border-collapse: collapse; margin-top: 5px;">
        <tr>
            <th style="border: 3px double black; padding: 5px 10px;">「買うもの」名</th>
            <th style="border: 3px double black; padding: 5px 10px;">購入日</th>
        </tr>
        @foreach ($completedShoppingLists as $completedShoppingList)
            <tr>
                <td style="border: 3px double black; padding: 5px 10px;">{{ $completedShoppingList->name }}</td>
                <td style="border: 3px double black; padding: 5px 10px;">{{ $completedShoppingList->created_at }}</td>
            </tr>
        @endforeach
    </table>
    
    <!-- ページネーション表示 -->
    <div style="margin-top: 10px;">
        {{ $completedShoppingLists->links() }}
    </div>

    <hr style="margin: 20px 0;">
    <a href="/logout">ログアウト</a>
</body>
</html>
