<!DOCTYPE html>
<html lang="ja">
<head>
    <meta charset="UTF-8">
    <title>買うものリスト（一覧画面）</title>
</head>
<body>
    <h1>「買うもの」の登録</h1>

    @if ($errors->any())
        <div style="color: red; margin-bottom: 10px;">
            <ul>
                @foreach ($errors->all() as $error)
                    <li>{{ $error }}</li>
                @endforeach
            </ul>
        </div>
    @endif

    <!-- 1. 登録フォーム -->
    <form action="/shopping_list/register" method="POST">
        @csrf
        <div>
            「買うもの」名: <input type="text" name="name" value="{{ old('name') }}" required>
        </div>
        <button type="submit" style="margin-top: 5px;">「買うもの」を登録する</button>
    </form>

    <h1 style="margin-top: 20px;">「買うもの」一覧</h1>

    <!-- 購入済みリストへのリンク -->
    <p>
        <a href="/shopping_list/completed_shopping_list/list">購入済み「買うもの」一覧</a>
    </p>

   <!-- 2. 一覧テーブル -->
    <table style="border: 3px double black; border-collapse: collapse; margin-top: 5px;">
        <tr>
            <th style="border: 3px double black; padding: 5px 10px;">登録日</th>
            <th style="border: 3px double black; padding: 5px 10px;">「買うもの」名</th>
            <th style="border: 3px double black; padding: 5px 10px;"></th>
            <th style="border: 3px double black; padding: 5px 10px;"></th>
        </tr>
        @foreach ($shoppingLists as $item)
        <tr>
            <td style="border: 3px double black; padding: 5px 10px;">{{ $item->created_at->format('Y-m-d') }}</td>
            <td style="border: 3px double black; padding: 5px 10px;">{{ $item->name }}</td>
            <td style="border: 3px double black; padding: 5px 10px;">
                <!-- 完了ボタン：押したときに確認ダイアログを表示 -->
                <form action="/shopping_list/complete/{{ $item->id }}" method="POST" style="margin:0;" onsubmit="return confirm('この「買うもの」を「完了」にします。よろしいですか？');">
                    @csrf
                    <button type="submit">完了</button>
                </form>
            </td>
            <td style="border: 3px double black; padding: 5px 10px;">
                <!-- 削除ボタン用のフォーム -->
                <form action="/shopping_list/delete/{{ $item->id }}" method="POST" style="margin:0;">
                    @csrf
                    @method('DELETE')
                    <button type="submit">削除</button>
                </form>
            </td>
        </tr>
        @endforeach
    </table>
    
    <!-- ページネーション表示 -->
    <div style="margin-top: 10px;">
        <p>現在 {{ $shoppingLists->currentPage() }} ページ目</p>
        
        <div>
            {{-- 最初のページへ --}}
            <a href="{{ $shoppingLists->url(1) }}">最初のページ</a> / 
            
            {{-- 前のページへ --}}
            @if ($shoppingLists->onFirstPage())
                <span>前に戻る</span>
            @else
                <a href="{{ $shoppingLists->previousPageUrl() }}">前に戻る</a>
            @endif / 
            
            {{-- 次のページへ --}}
            @if ($shoppingLists->hasMorePages())
                <a href="{{ $shoppingLists->nextPageUrl() }}">次に進む</a>
            @else
                <span>次に進む</span>
            @endif
        </div>
    </div>

    <hr style="margin: 20px 0;">
    <a href="/logout">ログアウト</a>
</body>
</html>