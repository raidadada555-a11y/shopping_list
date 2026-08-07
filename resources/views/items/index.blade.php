<!DOCTYPE html>
<html lang="ja">
<head>
    <meta charset="UTF-8">
    <title>買い物リスト</title>
    <style>
        body { font-family: sans-serif; max-width: 600px; margin: 40px auto; padding: 0 20px; }
        .item { display: flex; justify-content: space-between; align-items: center; padding: 10px; border-bottom: 1px solid #ddd; }
        .completed { text-decoration: line-through; color: #888; }
        form { margin: 0; }
        .mb-20 { margin-bottom: 20px; }
    </style>
</head>
<body>
    <h1>買い物リスト</h1>

    <!-- アイテム追加フォーム -->
    <form action="{{ route('items.store') }}" method="POST" class="mb-20">
        @csrf
        <input type="text" name="name" placeholder="新しいアイテム..." required>
        <button type="submit">追加</button>
    </form>

    <!-- アイテム一覧 -->
    <div>
        @forelse ($items as $item)
            <div class="item">
                <div>
                    <!-- 完了トグル -->
                    <form action="{{ route('items.toggle', $item) }}" method="POST" style="display:inline;">
                        @csrf
                        @method('PATCH')
                        <button type="submit">{{ $item->purchased ? '未完了に戻す' : '完了' }}</button>
                    </form>
                    <span class="{{ $item->purchased ? 'completed' : '' }}">{{ $item->name }}</span>
                </div>

                <!-- 削除ボタン -->
                <form action="{{ route('items.destroy', $item) }}" method="POST" style="display:inline;">
                    @csrf
                    @method('DELETE')
                    <button type="submit" onclick="return confirm('本当に削除しますか？')">削除</button>
                </form>
            </div>
        @empty
            <p>アイテムはまだありません。</p>
        @endforelse
    </div>
</body>
</html>
