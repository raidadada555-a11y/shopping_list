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
        <a href="/shopping_list/list">「買うもの」一覧に戻る</a>
    </p>

    <!-- 一覧テーブル -->
    <table style="border: 3px double black; border-collapse: collapse; margin-top: 5px;">
        <tr>
            <th style="border: 3px double black; padding: 5px 10px;">「買うもの」名</th>
            <th style="border: 3px double black; padding: 5px 10px;">購入日</th>
        </tr>
        {{-- 後ほど購入済みデータをここにループで表示します --}}
        <tr>
            <td style="border: 3px double black; padding: 5px 10px;">ウズラの卵</td>
            <td style="border: 3px double black; padding: 5px 10px;">2021/12/09</td>
        </tr>
    </table>
    
    <!-- ページネーション表示 -->
    <div style="margin-top: 10px;">
        <p>現在 1 ページ目</p>
        <div>
            最初のページ / 前に戻る / 次に進む
        </div>
    </div>

    <hr style="margin: 20px 0;">
    <a href="/logout">ログアウト</a>
</body>
</html>