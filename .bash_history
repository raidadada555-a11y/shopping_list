                <label class="form-label">パスワード：</label>
                <input type="password" name="password" class="form-control">
            </div>
            <button class="btn btn-primary mb-3">ログインする</button>
        </form>
    </div>
@endsection
EOF

git add resources/views/admin/index.blade.php
git commit --amend -m "8/3提出分"
git push origin master --force
cd /var/www/laravel_app
git add resources/views/admin/index.blade.php
git commit --amend -m "8/4提出分"
git push origin master --force
ls -la resources/views/auth/
cd /var/www/laravel_app
ls -la resources/views/auth/
Illuminate
 \ 
Database
 \ 
QueryException
PHP 8.3.6
10.50.2
SQLSTATE[42S22]: Column not found: 1054 Unknown column 'email' in 'WHERE'
select count(*) as aggregate from `users` where `email` = test@example.com
A column was not found
Run migrations
You might have forgotten to run your database migrations.
You can try to run your migrations using `php artisan migrate`.
Database: Running Migrations docs
Expand vendor frames
17 vendor frames
App
 \ 
Http
 \ 
Controllers
 \ 
Auth
 \ 
RegisteredUserController
 
: 21
store
37 vendor frames
public
 / 
index
.php
 
: 51
require_once
1 vendor frame
app
 / 
Http
 / 
Controllers
 / 
Auth
 / 
RegisteredUserController
.php
 
: 21
use Illuminate\Http\Request;
use App\Models\User;
use Illuminate\Support\Facades\Hash;
class RegisteredUserController extends Controller
{     // 登録画面を表示する処理;      public function create()
App
Routing
Request
Browser
Headers
Body
Context
Git
Versions
Exception
App
Routing
Controller
App\Http\Controllers\Auth\RegisteredUserController@store
Middleware
web
Request
http://35.74.242.5:8000/user/register
POST
curl "http://35.74.242.5:8000/user/register"    -X POST    -H 'host: 35.74.242.5:8000'    -H 'connection: keep-alive'    -H 'content-length: 196'    -H 'cache-control: max-age=0'    -H 'upgrade-insecure-requests: 1'    -H 'content-type: application/x-www-form-urlencoded'    -H 'user-agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36'    -H 'origin: http://35.74.242.5:8000'    -H 'accept: text/html,application/xhtml+xml,application/xml;q=0.9,image/avif,image/webp,image/apng,*/*;q=0.8'    -H 'sec-gpc: 1'    -H 'referer: http://35.74.242.5:8000/user/register'    -H 'accept-encoding: gzip, deflate'    -H 'accept-language: ja;q=0.6'    -H 'cookie: <CENSORED>'    -F '_token=EUjNrnClJyrFH4H8I9kVmYHuY8L3cw2e9OOFPNsH' -F 'name=テストユーザー' -F 'email=test@example.com' -F 'password=<CENSORED>' -F 'password_confirmation=<CENSORED>'
Browser
Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36
Headers
host
35.74.242.5:8000
connection
keep-alive
content-length
196
cache-control
max-age=0
upgrade-insecure-requests
1
content-type
application/x-www-form-urlencoded
user-agent
Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/151.0.0.0 Safari/537.36
origin
http://35.74.242.5:8000
accept
text/html,application/xhtml+xml,application/xml;q=0.9,image/avif,image/webp,image/apng,*/*;q=0.8
sec-gpc
1
referer
http://35.74.242.5:8000/user/register
accept-encoding
gzip, deflate
accept-language
ja;q=0.6
cookie
<CENSORED>
Body
{     "_token": "EUjNrnClJyrFH4H8I9kVmYHuY8L3cw2e9OOFPNsH",;     "name": "テストユーザー",;     "email": "test@example.com",;     "password": "<CENSORED>",;     "password_confirmation": "<CENSORED>"; }
Context
Git
8/4提出分
1e00e54d912cc08d32eb85740e24f72d4f289528
View commit 1e00e54
Last commit is dirty. (Un)staged changes have been made since this commit.
Versions
Php Version
8.3.6
Laravel Version
10.50.2
Laravel Locale
ja
Laravel Config Cached
false
App Debug
true
App Env
local
Exception
Raw Sql
select count(*) as aggregate from `users` where `email` = ?
·
Source
·
Docs
·
Laravel
Ignition is built byFlare, the Laravel error reporting service.
cd /var/www/laravel_app
php artisan migrate
cd /var/www/laravel_app
php artisan migrate
cd /var/www/laravel_app
php artisan migrate:fresh
cd /var/www/laravel_app
php artisan tinker
git add .
git commit -m "8/5途中版"
git push origin main
git push origin master
killall php
ls -la resources/views/auth/
mkdir -p resources/views/auth
touch resources/views/auth/login.blade.php
<html lang="ja">
<head>
</head>
<body>
</body>
</html>
nano resources/views/auth/login.blade.php
cd /var/www/laravel_app
mkdir -p resources/views/auth
nano resources/views/auth/login.blade.php
php artisan route:clear
php artisan view:clear
php artisan cache:clear
ls -la /var/www/laravel_app/resources/views/auth/
php artisan serve --host=0.0.0.0 --port=8000
[200~fuser -k 8000/tcp~
killall php
php artisan serve --host=0.0.0.0 --port=8000
# サーバーが動いていたら Ctrl + C で止めてから実行
php artisan serve --host=0.0.0.0 --port=8000
killall php
cd /var/www/laravel_app
php artisan optimize:clear
php artisan serve --host=0.0.0.0 --port=8000
http://35.74.242.5:8000
sudo ufw status
# もし active と出たら、以下のコマンドで無効化する
sudo ufw disable
cd /var/www/laravel_app
# views ディレクトリの中に items フォルダを作る
mkdir -p resources/views/items
# index.blade.php ファイルを作成する
cat << 'EOF' > resources/views/items/index.blade.php
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
EOF

cd /var/www/laravel_app
# フォルダを確実に作成
mkdir -p resources/views/items
# 正しい index.blade.php を作成する
cat << 'EOF' > resources/views/items/index.blade.php
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
EOF

nano resources/views/items/index.blade.php
cd /var/www/laravel_app
# authフォルダを作成する
mkdir -p resources/views/auth
ls -l resources/views/auth/
nano resources/views/auth/login.blade.php
cat routes/web.php
nano resources/views/auth/register.blade.php
php artisan make:controller Auth/RegisteredUserController
rm app/Http/Controllers/Auth/RegisteredUserController.php
php artisan make:controller Auth/RegisteredUserController
php artisan route:clear
php artisan config:clear
php artisan route:list
php artisan serve
php artisan serve --host=0.0.0.0 --port=8000
cd /var/www/laravel_app
# 1. 既存のリモート設定を削除
git remote remove origin
# 2. 新しいショッピングリスト用のリポジトリを設定
git remote add origin https://github.com/raidadada555-a11y/shopping_list.git
# 3. ちゃんと変更されたか確認
git remote -v
cd /var/www/laravel_app
cat << 'EOF' > routes/web.php
<?php

declare(strict_types=1);

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\AuthController;
use App\Http\Controllers\UserController;
use App\Http\Controllers\ShoppingListController;
use App\Http\Controllers\CompletedShoppingListController;
use App\Http\Controllers\Admin\AuthController as AdminAuthController;
use App\Http\Controllers\Admin\HomeController as AdminHomeController;
use App\Http\Controllers\Admin\UserController as AdminUserController;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

// 買い物リスト
Route::get('/', [AuthController::class, 'index'])->name('front.index');
Route::post('/login', [AuthController::class, 'login']);

// 会員登録
Route::prefix('/user')->group(function () {
    Route::get('/register', [UserController::class, 'index'])->name('front.user.register');
    Route::post('/register', [UserController::class, 'register'])->name('front.user.register.post');
});

// 認可処理
Route::middleware(['auth'])->group(function () {
    Route::prefix('/shopping_list')->group(function () {
        Route::get('/list', [ShoppingListController::class, 'list'])->name('front.list');
        Route::post('/register', [ShoppingListController::class, 'register']);
        Route::delete('/delete/{shopping_list_id}', [ShoppingListController::class, 'delete'])->whereNumber('shopping_list_id')->name('delete');
        Route::post('/complete/{shopping_list_id}', [ShoppingListController::class, 'complete'])->whereNumber('shopping_list_id')->name('complete');
    });

    // 購入済み「買うもの」一覧
    Route::get('/completed_shopping_list/list', [CompletedShoppingListController::class, 'list']);

    // ログアウト
    Route::get('/logout', [AuthController::class, 'logout']);
});

// 管理画面
Route::prefix('/admin')->group(function () {
    Route::get('', [AdminAuthController::class, 'index'])->name('admin.index');
    Route::post('/login', [AdminAuthController::class, 'login'])->name('admin.login');

    // 認可処理
    Route::middleware(['auth:admin'])->group(function () {
        Route::get('/top', [AdminHomeController::class, 'top'])->name('admin.top');
        Route::get('/user/list', [AdminUserController::class, 'list'])->name('admin.user.list');

        // ログアウト
        Route::get('/logout', [AdminAuthController::class, 'logout']);
    });
});
EOF

pwd
ls -la
cd /var/www/laravel_app
git status
cd /var/www/laravel_app
# 前回のタスク管理システムの残骸ファイル（Task.php）を削除
rm -f Task.php
# ついでに現在のgitの状態を確認
git status
cd /var/www/laravel_app
grep -E "^DB_DATABASE|^DB_USERNAME|^DB_PASSWORD" .env
cd /var/www/laravel_app
# データベース名、ユーザー名、パスワードを書き換える
sed -i 's/DB_DATABASE=laravel/DB_DATABASE=shopping_list/' .env
sed -i 's/DB_USERNAME=root/DB_USERNAME=shoppinguser/' .env
sed -i 's/DB_PASSWORD=/DB_PASSWORD=shoppingpassword/' .env
# 設定が正しく変わったか確認
grep -E "^DB_DATABASE|^DB_USERNAME|^DB_PASSWORD" .env
sudo mysql -u root -p
# パスワードなしでMySQLに入る場合
sudo mysql
sudo mysql -e "CREATE DATABASE IF NOT EXISTS shopping_list; CREATE USER IF NOT EXISTS 'shoppinguser'@'localhost' IDENTIFIED BY 'shoppingpassword'; GRANT ALL PRIVILEGES ON shopping_list.* TO 'shoppinguser'@'localhost'; FLUSH PRIVILEGES;"
sudo mysql -u root
sudo systemctl stop mysql
sudo mysqld_safe --skip-grant-tables &
mysql -u root
# セーフモードのプロセスを終了させて、通常のサービスとして起動し直す
sudo killall mariadbd 2>/dev/null || true
sudo killall mysqld 2>/dev/null || true
sudo systemctl start mysql
# Laravelのマイグレーションを実行して、テーブルが正しく作成されるか確認する
cd /var/www/laravel_app
php artisan migrate
cd /var/www/laravel_app
# Itemモデルとマイグレーションファイルを同時に作成する
php artisan make:model Item -m
cd /var/www/laravel_app
public function up(): void
cd /var/www/laravel_app
# マイグレーションファイルのパスを特定して中身を書き換える
MIGRATION_FILE=$(ls database/migrations/*_create_items_table.php)
php -r "
$file = '$MIGRATION_FILE';
$content = file_get_contents(\$file);
$target = 'public function up(): void
    {
        Schema::create(\'items\', function (Blueprint \$table) {
            \$table->id();
            \$table->timestamps();
        });
    }';
$replacement = 'public function up(): void
    {
        Schema::create(\'items\', function (Blueprint \$table) {
            \$table->id();
            \$table->string(\'name\');
            \$table->boolean(\'purchased\')->default(false);
            \$table->timestamps();
        });
    }';
$newContent = str_replace($target, $replacement, $content);
file_put_contents(\$file, $newContent);
"
cd /var/www/laravel_app
# 書き換え用のプログラムを安全にファイルとして作成する
cat << 'EOF' > update_migration.php
<?php
$files = glob('database/migrations/*_create_items_table.php');
$file = $files[0];
$content = file_get_contents($file);
$content = str_replace(
    '$table->id();',
    '$table->id();' . "\n" . '            $table->string(\'name\');' . "\n" . '            $table->boolean(\'purchased\')->default(false);',
    $content
);
file_put_contents($file, $content);
echo "マイグレーションファイルの更新が完了しました！\n";
EOF

# プログラムを実行してファイルを書き換え、終わったら不要なプログラムを削除
php update_migration.php
rm update_migration.php
# マイグレーションを実行してデータベースにテーブルを作成
php artisan migrate
cd /var/www/laravel_app
# ItemControllerを生成する
php artisan make:controller ItemController
cd /var/www/laravel_app
# コントローラーの実装ファイルを生成して適用する
cat << 'EOF' > update_controller.php
<?php
$file = 'app/Http/Controllers/ItemController.php';
$code = <<<'CODE'
<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Item;

class ItemController extends Controller
{
    // 一覧表示
    public function index()
    {
        $items = Item::orderBy('created_at', 'desc')->get();
        return view('items.index', compact('items'));
    }

    // アイテム追加
    public function store(Request $request)
    {
        $request->validate([
            'name' => 'required|max:255',
        ]);

        Item::create([
            'name' => $request->name,
            'purchased' => false,
        ]);

        return redirect()->route('items.index');
    }

    // 購入状態の切り替え
    public function toggle(Item $item)
    {
        $item->purchased = !$item->purchased;
        $item->save();

        return redirect()->route('items.index');
    }

    // アイテム削除
    public function destroy(Item $item)
    {
        $item->delete();

        return redirect()->route('items.index');
    }
}
CODE;

file_put_contents($file, $code);
echo "ItemControllerの実装が完了しました！\n";
EOF

php update_controller.php
rm update_controller.php
cd /var/www/laravel_app
# ルーティングを設定する
cat << 'EOF' > update_routes.php
<?php
$file = 'routes/web.php';
$code = <<<'CODE'
<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\ItemController;

Route::get('/', [ItemController::class, 'index'])->name('items.index');
Route::post('/items', [ItemController::class, 'store'])->name('items.store');
Route::patch('/items/{item}/toggle', [ItemController::class, 'toggle'])->name('items.toggle');
Route::delete('/items/{item}', [ItemController::class, 'destroy'])->name('items.destroy');
CODE;

file_put_contents($file, $code);
echo "ルーティングの設定が完了しました！\n";
EOF

php update_routes.php
rm update_routes.php
cd /var/www/laravel_app
# ルーティングを設定する
cat << 'EOF' > update_routes.php
<?php
$file = 'routes/web.php';
$code = <<<'CODE'
<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\ItemController;

Route::get('/', [ItemController::class, 'index'])->name('items.index');
Route::post('/items', [ItemController::class, 'store'])->name('items.store');
Route::patch('/items/{item}/toggle', [ItemController::class, 'toggle'])->name('items.toggle');
Route::delete('/items/{item}', [ItemController::class, 'destroy'])->name('items.destroy');
CODE;

file_put_contents($file, $code);
echo "ルーティングの設定が完了しました！\n";
EOF

php update_routes.php
rm update_routes.php
cd /var/www/laravel_app
# キャッシュをクリアして設定やルーティングを最新の状態にする
php artisan config:clear
php artisan route:clear
php artisan view:clear
# ローカル開発サーバーを起動する（もしすでに起動していなければ）
php artisan serve --host=0.0.0.0 --port=8000
cd /var/www/laravel_app
php artisan serve --host=0.0.0.0 --port=8000
php artisan make:controller ShoppingListController
cd /var/www/laravel_app
php artisan make:controller ShoppingListController
php artisan make:controller CompletedShoppingListController
mkdir -p resources/views/completed_shopping_list
php artisan make:migration create_admin_users_table
php artisan migrate
php artisan migrate:fresh
ls database/migrations
php artisan migrate:fresh
public const HOME = '/shopping_list';
php artisan serve --host=0.0.0.0 --port=8000
php artisan serve --host=0.0.0.0 --port=8080
php artisan make:migration add_is_completed_to_items_table --table=items
cd /var/www/laravel_app
php artisan make:migration add_is_completed_to_items_table --table=items
php artisan migrate
cat << 'EOF' > resources/views/items/completed.blade.php
<!DOCTYPE html>
<html lang="ja">
<head>
    <meta charset="UTF-8">
    <title>購入済み「買うもの」一覧</title>
    <!-- Bootstrap 5 のCDN読み込み -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body class="container mt-4">
    <h1 class="mb-3">購入済み「買うもの」一覧</h1>

    <p><a href="{{ route('items.index') }}" class="text-decoration-underline">「買うもの」一覧に戻る</a></p>

    <table class="table table-bordered align-middle">
        <thead>
            <tr>
                <th>完了日</th>
                <th>「買うもの」名</th>
            </tr>
        </thead>
        <tbody>
            @forelse ($items as $item)
            <tr>
                <td>{{ $item->updated_at->format('Y-m-d') }}</td>
                <td><span class="fw-bold">{{ $item->name }}</span></td>
            </tr>
            @empty
            <tr>
                <td colspan="2" class="text-center text-muted">購入済みのアイテムはありません。</td>
            </tr>
            @endforelse
        </tbody>
    </table>

    <div class="my-3">
        <p class="mb-1">現在 {{ $items->currentPage() }} ページ目</p>
        <div>
            <a href="{{ $items->url(1) }}" class="text-decoration-none">最初のページ</a> / 
            @if ($items->onFirstPage())
                <span class="text-muted">前に戻る</span>
            @else
                <a href="{{ $items->previousPageUrl() }}" class="text-decoration-none">前に戻る</a>
            @endif / 
            @if ($items->hasMorePages())
                <a href="{{ $items->nextPageUrl() }}" class="text-decoration-none">次に進む</a>
            @else
                <span class="text-muted">次に進む</span>
            @endif
        </div>
    </div>
</body>
</html>
EOF

git checkout .
php artisan view:clear
cat resources/views/items/index.blade.php
git reset --hard 4a02d380f17c7898233dc8b4832a12d28c5bb2
git fetch origin
git reset --hard 4a02d38
php artisan serve --host=0.0.0.0 --port=8000
composer install
cp .env.example .env
php artisan key:generate
php artisan config:clear
php artisan route:clear
php artisan view:clear
php artisan serve --host=0.0.0.0 --port=8000
fuser -k 8000/tcp
php artisan serve --host=0.0.0.0 --port=8000
Route::get('/', [ItemController::class, 'index'])->name('items.index');
cd /var/www/laravel_app
nano routes/web.php
php artisan route:clear
php artisan config:clear
php artisan cache:clear
fuser -k 8000/tcp
php artisan serve --host=0.0.0.0 --port=8000
git reset --hard 4a02d380f17c7898233dc8b4832a12d28c5bb2
cd /var/www/laravel_app
git log --oneline -n 5
ubuntu@ip-172-31-26-180:~$ cd /var/www/laravel_app
ubuntu@ip-172-31-26-180:/var/www/laravel_app$ git log --oneline -n 5
4a02d38 (HEAD -> master, origin/master) 8/5途中版
1e00e54 8/4提出分
4c318ce 8/1
3cc2ae0 Update completed_list.blade.php
331d50a 7/31
composer dump-autoload
php artisan config:clear
php artisan route:clear
php artisan view:clear
fuser -k 8000/tcp
php artisan serve --host=0.0.0.0 --port=8000
php artisan route:list
cd /var/www/laravel_app
php artisan route:list
composer dump-autoload
php artisan route:list
// require __DIR__.'/auth.php';
nano routes/web.php
php artisan route:list
fuser -k 8000/tcp
php artisan serve --host=0.0.0.0 --port=8000
php artisan view:clear
cd /var/www/laravel_app
php artisan view:clear
php artisan route:clear
php artisan view:clear
cat resources/views/items/index.blade.php
cat << 'EOF' > resources/views/items/index.blade.php
<!DOCTYPE html>
<html lang="ja">
<head>
    <meta charset="UTF-8">
    <title>買い物リスト（一覧画面）</title>
</head>
<body>
    <h1>「買うもの」の登録</h1>

    <form method="POST" action="{{ route('items.store') }}">
        @csrf
        <div>
            <label for="name">「買うもの」名:</label>
            <input type="text" id="name" name="name" required>
        </div>
        <div style="margin-top: 5px;">
            <button type="submit">「買うもの」を登録する</button>
        </div>
    </form>

    <h1 style="margin-top: 20px;">「買うもの」一覧</h1>

    <p><a href="/completed_shopping_list/list" style="text-decoration: underline;">購入済み「買うもの」一覧</a></p>

    <table border="1" style="border-collapse: collapse; margin-top: 5px;">
        <thead>
            <tr>
                <th style="padding: 2px 10px;">登録日</th>
                <th style="padding: 2px 10px;">「買うもの」名</th>
            </tr>
        </thead>
        <tbody>
            @foreach ($items as $item)
            <tr>
                <td style="padding: 2px 10px;">{{ $item->created_at }}</td>
                <td style="padding: 2px 10px;">
                    <form action="{{ route('items.toggle', $item) }}" method="POST" style="display:inline;">
                        @csrf
                        <button type="submit">完了</button>
                    </form>
                    <form action="{{ route('items.destroy', $item) }}" method="POST" style="display:inline;">
                        @csrf
                        @method('DELETE')
                        <button type="submit">削除</button>
                    </form>
                    {{ $item->name }}
                </td>
            </tr>
            @endforeach
        </tbody>
    </table>

    <div style="margin-top: 5px;">
        <p style="margin: 5px 0;">現在 {{ $items->currentPage() }} ページ目</p>
        <div>
            <a href="{{ $items->url(1) }}">最初のページ</a> / 
            
            @if ($items->onFirstPage())
                <span>前に戻る</span>
            @else
                <a href="{{ $items->previousPageUrl() }}">前に戻る</a>
            @endif / 
            
            @if ($items->hasMorePages())
                <a href="{{ $items->nextPageUrl() }}">次に進む</a>
            @else
                <span>次に進む</span>
            @endif
        </div>
    </div>

    <hr style="margin-top: 15px;">
    
    <p><a href="/logout" style="text-decoration: underline;">ログアウト</a></p>
</body>
</html>
EOF

cat << 'EOF' > resources/views/items/index.blade.php
<!DOCTYPE html>
<html lang="ja">
<head>
    <meta charset="UTF-8">
    <title>買い物リスト（一覧画面）</title>
</head>
<body>
    <h1>「買うもの」の登録</h1>

    <form method="POST" action="{{ route('items.store') }}">
        @csrf
        <div>
            <label for="name">「買うもの」名:</label>
            <input type="text" id="name" name="name" required>
        </div>
        <div style="margin-top: 5px;">
            <button type="submit">「買うもの」を登録する</button>
        </div>
    </form>

    <h1 style="margin-top: 20px;">「買うもの」一覧</h1>

    <p><a href="/completed_shopping_list/list" style="text-decoration: underline;">購入済み「買うもの」一覧</a></p>

    <table border="1" style="border-collapse: collapse; margin-top: 5px;">
        <thead>
            <tr>
                <th style="padding: 2px 10px;">登録日</th>
                <th style="padding: 2px 10px;">「買うもの」名</th>
            </tr>
        </thead>
        <tbody>
            @foreach ($items as $item)
            <tr>
                <!-- 時刻を除き、日付（年月日）のみを表示 -->
                <td style="padding: 2px 10px;">{{ $item->created_at->format('Y-m-d') }}</td>
                <td style="padding: 2px 10px;">
                    <form action="{{ route('items.toggle', $item) }}" method="POST" style="display:inline;">
                        @csrf
                        <button type="submit">完了</button>
                    </form>
                    <form action="{{ route('items.destroy', $item) }}" method="POST" style="display:inline;">
                        @csrf
                        @method('DELETE')
                        <button type="submit">削除</button>
                    </form>
                    {{ $item->name }}
                </td>
            </tr>
            @endforeach
        </tbody>
    </table>

    <div style="margin-top: 5px;">
        <p style="margin: 5px 0;">現在 {{ $items->currentPage() }} ページ目</p>
        <div>
            <a href="{{ $items->url(1) }}">最初のページ</a> / 
            
            @if ($items->onFirstPage())
                <span>前に戻る</span>
            @else
                <a href="{{ $items->previousPageUrl() }}">前に戻る</a>
            @endif / 
            
            @if ($items->hasMorePages())
                <a href="{{ $items->nextPageUrl() }}">次に進む</a>
            @else
                <span>次に進む</span>
            @endif
        </div>
    </div>

    <hr style="margin-top: 15px;">
    
    <p><a href="/logout" style="text-decoration: underline;">ログアウト</a></p>
</body>
</html>
EOF

php artisan view:clear
php artisan optimize:clear
cat resources/views/items/index.blade.php
<td style="padding: 2px 10px;">
</td>
php artisan view:clear
php artisan cache:clear
pwd
# 動いているartisanプロセスを強制終了する
pkill -f artisan
php artisan serve --host=0.0.0.0 --port=8000
php artisan optimize:clear
php artisan serve --host=0.0.0.0 --port=8000
cd ~/laravel_app
php artisan serve --host=0.0.0.0 --port=8000
pwd
ls -la
find ~ -name "artisan"
sudo find / -name "artisan" 2>/dev/null
cd /var/www/laravel_app
php artisan serve --host=0.0.0.0 --port=8000
nano /var/www/laravel_app/app/Http/Controllers/AuthController.php
mkdir -p /var/www/laravel_app/resources/views/auth
cat << 'EOF' > /var/www/laravel_app/resources/views/auth/index.blade.php
@extends("layouts.front")

@section("contents")
    <div class="container mt-4">
        <h1>ログイン</h1>

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
EOF

mkdir -p /var/www/laravel_app/resources/views/layouts
cat << 'EOF' > /var/www/laravel_app/resources/views/layouts/front.blade.php
<!DOCTYPE html>
<html lang="ja">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>買い物リストアプリ</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
    <div class="container">
        @yield('contents')
    </div>
</body>
</html>
EOF

git add .
git init
cd /var/www/laravel_app
git init -b main
cd /var/www/laravel_app
git init -b main
git remote set-url origin https://github.com/raidadada555-a11y/shopping_list.git || git remote add origin https://github.com/raidadada555-a11y/shopping_list.git
git add .
git commit -m "ログイン画面完成時点"
git push -u origin main
git branch -M main
git push -u origin main
cat << 'EOF' > /var/www/laravel_app/resources/views/auth/register.blade.php
@extends("layouts.front")

@section("contents")
    <h1>ユーザ登録</h1>

    @if ($errors->any())
        <div style="color: red; margin-bottom: 15px;">
            @foreach ($errors->all() as $error)
                {{ $error }}<br>
            @endforeach
        </div>
    @endif

    <form action="/user/register" method="post">
        @csrf
        <div style="margin-bottom: 10px;">
            <label>名前: </label>
            <input type="text" name="name" value="{{ old('name') }}" required autofocus>
        </div>
        <div style="margin-bottom: 10px;">
            <label>email : </label>
            <input type="email" name="email" value="{{ old('email') }}" required>
        </div>
        <div style="margin-bottom: 10px;">
            <label>パスワード: </label>
            <input type="password" name="password" required>
        </div>
        <div style="margin-bottom: 10px;">
            <label>パスワード(再度): </label>
            <input type="password" name="password_confirmation" required>
        </div>
        <div>
            <button type="submit">登録する</button>
        </div>
    </form>
@endsection
EOF

cd /var/www/laravel_app
php artisan view:clear
cat /var/www/laravel_app/resources/views/layouts/front.blade.php
cd /var/www/laravel_app
php artisan route:list | grep user
cd /var/www/laravel_app
php artisan route:list | grep user
cd /var/www/laravel_app
php artisan route:list | grep user
ubuntu@ip-172-31-26-180:/var/www/laravel_app$ cd /var/www/laravel_app
php artisan route:list | grep user
cd /var/www/laravel_app
php artisan route:list | grep user
cat << 'EOF' > /var/www/laravel_app/resources/views/user/register.blade.php
@extends("layouts.front")

@section("contents")
    <h1 style="margin-bottom: 10px;">ユーザ登録</h1>

    @if ($errors->any())
        <div style="color: red; margin-bottom: 10px;">
            @foreach ($errors->all() as $error)
                {{ $error }}<br>
            @endforeach
        </div>
    @endif

    <form action="/user/register" method="post" style="margin: 0; padding: 0;">
        @csrf
        <div style="margin: 0 0 5px 0;">
            <label>名前: <input type="text" name="name" value="{{ old('name') }}" required autofocus></label>
        </div>
        <div style="margin: 0 0 5px 0;">
            <label>email : <input type="email" name="email" value="{{ old('email') }}" required></label>
        </div>
        <div style="margin: 0 0 5px 0;">
            <label>パスワード: <input type="password" name="password" required></label>
        </div>
        <div style="margin: 0 0 10px 0;">
            <label>パスワード(再度): <input type="password" name="password_confirmation" required></label>
        </div>
        <div>
            <button type="submit">登録する</button>
        </div>
    </form>
@endsection
EOF

rm /var/www/laravel_app/resources/views/user/register.blade.php
git add .
git commit -m "ユーザ登録画面完成"
git push origin main
php artisan migrate:fresh
php artisan make:migration create_users_table
php artisan migrate:fresh
mv database/migrations/2026_08_07_032409_create_users_table.php database/migrations/2026_05_01_000000_create_users_table.php
php artisan migrate:fresh
git status
git add .
git commit -m "ユーザを登録しました！！"
git push origin main
cd /var/www/laravel_app
php artisan tinker
cd /var/www/laravel_app
php artisan route:clear
cd /var/www/laravel_app
git reset --hard 4a02d38
git clean -fd
php artisan config:clear
php artisan route:clear
php artisan view:clear
fuser -k 8000/tcp
php artisan serve --host=0.0.0.0 --port=8000
Route::get('/', [AuthController::class, 'index'])->name('front.index');
Route::post('/login', [AuthController::class, 'login']);
php artisan make:migration create_completed_shopping_lists_table
pwd
ls
ls -la
find ~ -name "artisan" -type f
find / -name "artisan" -type f 2>/dev/null
cd /var/www/laravel_app
php artisan make:migration create_completed_shopping_lists_table
php artisan migrate
php artisan migrate:fresh
rm database/migrations/2026_08_05_012203_create_items_table.php
php artisan migrate:fresh
php artisan serve
composer dump-autoload
cd /var/www/laravel_app
composer dump-autoload
cd /var/www/laravel_app
composer dump-autoload
public function index()
cd /var/www/laravel_app
mv resources/views/admin/index.blade.php resources/views/index.blade.php
cd /var/www/laravel_app
php artisan view:clear
php artisan cache:clear
sudo chown -R ubuntu:ubuntu storage bootstrap/cache
cd /var/www/laravel_app
php artisan route:clear
php artisan config:clear
php artisan view:clear
cd ~/environment
pwd
ls -la
find /home/ubuntu -name "artisan"
find / -name "artisan" 2>/dev/null
cd /var/www/laravel_app
php artisan view:clear
git status
git checkout --orphan clean_start
git add .
git commit -m "「買うもの」の登録"
git reset
git add app config database public resources routes storage tests artisan composer.json composer.lock package.json phpunit.xml vite.config.js .env.example
git status
git add app config database public resources routes storage tests artisan composer.json composer.lock package.json phpunit.xml vite.config.js .env.example
git status
ls -la
git add app config database public resources routes storage tests artisan composer.json composer.lock package.json phpunit.xml vite.config.js .env.example
git commit -m "「買うもの」の登録"
git branch -M main
git push -u origin main --force
git status
git add .
git commit -m "完了機能準備済み段階(削除機能追加前段階)"
git push origin main
pwd
cd shopping_list
git remote -v
git add app/Http/Controllers/ShoppingListController.php routes/web.php resources/views/shopping_list/completed_list.blade.php
git commit -m "完了機能準備済み段階(削除機能追加前段階)"
git push origin main
git branch
git status
git diff
git add -A
git commit -m "完了機能準備済み段階(削除機能追加前段階)"
git push origin main
cd /home/ubuntu/shopping_list
ls -la
git add -A
git commit -m "完了機能準備済み段階(削除機能追加前段階)"
git push -f origin main
git remote -v
git push origin main -v
git status
cat app/Http/Controllers/ShoppingListController.php
find / -name "*LARAVEL_APP*" 2>/dev/null
find / -name "*ShoppingListController.php*" 2>/dev/null
cd /var/www/laravel_app
git status
git add -A
git commit -m "完了機能準備済み段階(削除機能追加前段階)"
git push origin main
git pull origin main --rebase
git push origin main
ps aux | grep artisan
cd /var/www/laravel_app
php artisan view:clear
php artisan serve
php artisan make:migration create_shopping_lists_table
php artisan make:migration create_completed_shopping_lists_table
cd /var/www/laravel_app
php artisan make:migration create_shopping_lists_table
php artisan make:migration create_completed_shopping_lists_table
php artisan migrate
php artisan make:model ShoppingList
php artisan make:model CompletedShoppingList
php artisan make:controller ShoppingListController
php artisan serv
git add .
git commit -m "「買うもの」の登録"
git push origin main
git reset
git init
git add .
git commit -m "初回コミット：”「買うもの」の登録"
git branch -M main
git remote add origin https://github.com/raidadada555-a11y/shopping_list.git
git push -u origin main
git pull origin main --allow-unrelated-histories
git pull origin main --allow-unrelated-histories --no-rebase
git add resources/views/auth/login.blade.php
git add .
git commit -m "「買うもの」の登録"
git push -u origin main
echo ".vscode-server/" >> .gitignore
echo "/vendor/" >> .gitignore
echo "/node_modules/" >> .gitignore
echo ".env" >> .gitignore
git reset --soft HEAD~1
git reset
git add .
git commit -m "「買うもの」の登録"
git push -u origin main
git push -u origin main --force
git reset --mixed HEAD~1
echo ".vscode-server/" >> .gitignore
git add .
git commit -m "「買うもの」の登録"
git push -u origin main --force
git update-ref -d HEAD
echo ".vscode-server/" >> .gitignore
git add .
git commit -m "「買うもの」の登録"
git branch -M main
git push -u origin main --force
rm -rf .git
echo ".vscode-server/" > .gitignore
echo "vendor/" >> .gitignore
echo "node_modules/" >> .gitignore
echo ".env" >> .gitignore
git init
git branch -M main
git add app config database public resources routes storage tests artisan composer.json package.json vite.config.js .gitignore .env.example
git commit -m "「買うもの」の登録"
git remote add origin https://github.com/raidadada555-a11y/shopping_list.git
git push -u origin main --force
git remote remove origin
git remote add origin https://github.com/raidadada555-a11y/shopping_list.git
git fetch origin
git checkout -B main origin/main
git add app config database public resources routes storage tests artisan composer.json package.json vite.config.js .gitignore .env.example
git commit -m "「買うもの」の登録"
rm -f "The email field is required.," "The name field is required.," "The password confirmation does not match.," "The password field is required.," "[required," email name
git add app config database public resources routes storage tests artisan composer.json package.json vite.config.js .gitignore .env.example
git status
cd ~/shopping_list
ls -F
rm -f "-" FETCH_HEAD "email," "name,"
git add app bootstrap config database public resources routes storage tests artisan composer.json composer.lock package.json phpunit.xml vite.config.js .gitignore .env.example
git status
git add app config database public resources routes storage tests artisan composer.json composer.lock package.json phpunit.xml vite.config.js .gitignore .env.example
git status
git add app/ config/ database/ public/ resources/ routes/ storage/ tests/
git add artisan composer.json package.json vite.config.js .gitignore .env.example
git commit -m "「買うもの」の登録"
git push -u origin main --force
git fetch origin main
git pull origin main --no-rebase
git add app config database public resources routes storage tests artisan composer.json composer.lock package.json phpunit.xml vite.config.js .gitignore .env.example
git commit -m "「買うもの」の登録"
find . -maxdepth 2 -name "app"
ls -F
git add app
git add config database public resources routes storage tests
git add artisan composer.json composer.lock package.json phpunit.xml vite.config.js .gitignore .env.example
git status
rm -rf .git
git init
git branch -M main
git remote add origin https://github.com/raidadada555-a11y/shopping_list.git
echo ".vscode-server/" > .gitignore
echo "vendor/" >> .gitignore
echo "node_modules/" >> .gitignore
echo ".env" >> .gitignore
git add app config database public resources routes storage tests artisan composer.json composer.lock package.json phpunit.xml vite.config.js .gitignore .env.example
git commit -m "「買うもの」の登録"
git push -u origin main --force
git fetch origin main
git pull origin main --no-rebase
git add app config database public resources routes storage tests artisan composer.json composer.lock package.json phpunit.xml vite.config.js .gitignore .env.example
git commit -m "「買うもの」の登録"
git push -u origin main --force
git checkout --orphan temp_branch
git add -A
git commit -m "「買うもの」の登録"
git branch -D main
git branch -m main
git push -u origin main --force
git remote remove origin
git remote add origin https://github.com/raidadada555-a11y/shopping_list.git
git branch -M main
git push -u origin main --force
git branch -M main
git push -u origin main --force
cd /var/www/laravel_app
php artisan route:clear
php artisan cache:clear
sudo chown -R ubuntu:ubuntu /var/www/laravel_app/storage /var/www/laravel_app/bootstrap/cache
php artisan cache:clear
php artisan route:clear
sudo chmod -R 777 /var/www/laravel_app/storage /var/www/laravel_app/bootstrap/cache
php artisan cache:clear
sudo chown -R ubuntu:ubuntu /var/www/laravel_app/storage /var/www/laravel_app/bootstrap/cache
php artisan cache:clear
ls -l /var/www/laravel_app
sudo rm -rf /var/www/laravel_app/storage/framework/cache/*
sudo rm -rf /var/www/laravel_app/storage/framework/views/*
sudo rm -rf /var/www/laravel_app/storage/framework/sessions/*
sudo chown -R ubuntu:ubuntu /var/www/laravel_app/storage /var/www/laravel_app/bootstrap/cache
sudo chmod -R 777 /var/www/laravel_app/storage /var/www/laravel_app/bootstrap/cache
php artisan cache:clear
php artisan route:clear
sudo rm -rf /var/www/laravel_app/storage/framework/cache
mkdir -p /var/www/laravel_app/storage/framework/cache/data
sudo chown -R ubuntu:ubuntu /var/www/laravel_app/storage /var/www/laravel_app/bootstrap/cache
sudo chmod -R 777 /var/www/laravel_app/storage /var/www/laravel_app/bootstrap/cache
php artisan cache:clear
php artisan route:list
cat << 'EOF' > /var/www/laravel_app/app/Http/Controllers/Admin/AuthController.php
<?php

declare(strict_types=1);

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class AuthController extends Controller
{
    public function index()
    {
        return view("admin.auth.index");
    }

    public function login(Request $request)
    {
        // 管理者用のログイン処理などをここに記述します
    }
}
EOF

git reset --hard d7582b8898be02be2d79f88d2d822a3f02380579
git add .
git commit -m "削除機能完了時点(管理ログイン画面作成前)"
git push origin main
php artisan make:controller Admin/AuthController
php artisan make:controller Admin/AdminAuthController
mkdir -p resources/views/admin/auth && touch resources/views/admin/auth/index.blade.php
mkdir -p resources/views/admin && touch resources/views/admin/index.blade.php
git status
rm resources/views/admin/index.blade.php
git add .
git commit -m "管理者用ログイン画面完成時点(管理者管理画面作成前)"
git push origin main
touch resources/views/admin/top.blade.php
php artisan make:controller Admin/HomeController
php artisan make:seeder AdminUserSeeder
php artisan migrate:fresh --seed
php artisan config:clear
php artisan cache:clear
sudo chmod -R 777 storage bootstrap/cache
cd /var/www/laravel_app
php artisan migrate:fresh --seed
mkdir -p resources/views/admin/user && cat << 'EOF' > resources/views/admin/user/list.blade.php
<!DOCTYPE html>
<html lang="ja">
<head>
    <meta charset="UTF-8">
    <title>買い物リスト 管理画面（ユーザー一覧画面）</title>
    <style>
        table {
            border-collapse: collapse;
            margin-top: 10px;
        }
        th, td {
            border: 1px solid black;
            padding: 5px 10px;
            text-align: left;
        }
    </style>
</head>
<body>
    {{-- ナビゲーションメニュー（共通） --}}
    <nav>
        <p><a href="{{ route('admin.top') }}">管理画面Top</a></p>
        <p><a href="{{ route('admin.user.list') }}">ユーザー一覧</a></p>
        <p>
            <form action="{{ route('admin.logout') }}" method="POST" style="display: inline;">
                @csrf
                <button type="submit" style="background: none; color: blue; border: none; padding: 0; font: inherit; cursor: pointer; text-decoration: underline;">ログアウト</button>
            </form>
        </p>
    </nav>

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
                    <td>{{ $user->completed_shopping_lists_count ?? 0 }}</td>
                </tr>
            @endforeach
        </tbody>
    </table>
</body>
</html>
EOF

mkdir -p app/Http/Controllers/Admin && cat << 'EOF' > app/Http/Controllers/Admin/UserController.php
<?php

declare(strict_types=1);

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\User;
use Illuminate\Http\Request;

class UserController extends Controller
{
    public function index()
    {
        $users = User::withCount('completedShoppingLists')->get();

        return view('admin.user.list', compact('users'));
    }
}
EOF

composer dump-autoload
app/Http/Controllers/Admin/UserController.php
cat app/Http/Controllers/Admin/UserController.php
[200~ubuntu@ip-172-31-26-180:/var/www/laravel_app$ cat app/Http/Controllers/Admin/UserController.php
<?php
declare(strict_types=1);
namespace App\Http\Controllers\Admin;
use App\Http\Controllers\Controller;
use App\Models\User;
use Illuminate\Http\Request;
class UserController extends Controller
{     public function index()
cat app/Http/Controllers/Admin/UserController.php
mkdir -p resources/views/admin/user && cat << 'EOF' > resources/views/admin/user/list.blade.php
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
    </style>
</head>
<body>
    <p>
        <a href="{{ route('admin.top') }}">管理画面Top</a> | 
        <a href="{{ route('admin.user.list') }}">ユーザー一覧</a> | 
        <form action="{{ route('admin.logout') }}" method="POST" style="display: inline;">
            @csrf
            <button type="submit" style="background: none; color: blue; border: none; padding: 0; font: inherit; cursor: pointer; text-decoration: underline;">ログアウト</button>
        </form>
    </p>

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
    </body>
</html>
EOF

php artisan optimize:clear
cat << 'EOF' > app/Models/User.php
<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Foundation\Auth\User as Authenticatable;
use Illuminate\Notifications\Notifiable;
use Laravel\Sanctum\HasApiTokens;

class User extends Authenticatable
{
    use HasApiTokens, HasFactory, Notifiable;

    protected $fillable = [
        'name',
        'email',
        'password',
    ];

    protected $hidden = [
        'password',
        'remember_token',
    ];

    protected $casts = [
        'email_verified_at' => 'datetime',
        'password' => 'hashed',
    ];

    public function completedShoppingLists()
    {
        return $this->hasMany(ShoppingList::class)->where('status', 'completed');
    }
}
EOF

cat << 'EOF' > app/Models/User.php
<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Foundation\Auth\User as Authenticatable;
use Illuminate\Notifications\Notifiable;
use Laravel\Sanctum\HasApiTokens;

class User extends Authenticatable
{
    use HasApiTokens, HasFactory, Notifiable;

    protected $fillable = [
        'name',
        'email',
        'password',
    ];

    protected $hidden = [
        'password',
        'remember_token',
    ];

    protected $casts = [
        'email_verified_at' => 'datetime',
        'password' => 'hashed',
    ];

    public function completedShoppingLists()
    {
        return $this->hasMany(ShoppingList::class);
    }
}
EOF

cat << 'EOF' > app/Models/User.php
<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Foundation\Auth\User as Authenticatable;
use Illuminate\Notifications\Notifiable;
use Laravel\Sanctum\HasApiTokens;

class User extends Authenticatable
{
    use HasApiTokens, HasFactory, Notifiable;

    protected $fillable = [
        'name',
        'email',
        'password',
    ];

    protected $hidden = [
        'password',
        'remember_token',
    ];

    protected $casts = [
        'email_verified_at' => 'datetime',
        'password' => 'hashed',
    ];

    public function completedShoppingLists()
    {
        return $this->hasMany(ShoppingList::class);
    }
}
EOF

cat << 'EOF' > resources/views/admin/user/list.blade.php
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
    </style>
</head>
<body>
    <p>
        <a href="{{ route('admin.top') }}">管理画面Top</a><br>
        <a href="{{ route('admin.user.list') }}">ユーザー一覧</a><br>
        <form action="{{ route('admin.logout') }}" method="POST" style="display: inline; margin: 0; padding: 0;">
            @csrf
            <button type="submit" style="background: none; color: blue; border: none; padding: 0; font: inherit; cursor: pointer; text-decoration: underline;">ログアウト</button>
        </form>
    </p>

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
EOF

cat << 'EOF' > resources/views/admin/user/list.blade.php
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
    </style>
</head>
<body>
    <p>
        <a href="{{ route('admin.top') }}">管理画面Top</a><br>
        <a href="{{ route('admin.user.list') }}">ユーザー一覧</a><br>
        <form action="{{ route('admin.logout') }}" method="POST" style="display: inline; margin: 0; padding: 0;">
            @csrf
            <button type="submit" style="background: none; color: blue; border: none; padding: 0; font: inherit; cursor: pointer; text-decoration: underline;">ログアウト</button>
        </form>
    </p>

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
EOF

cat << 'EOF' > resources/views/admin/user/list.blade.php
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
EOF

git add .
git commit -m "8/8初回提出段階"
git push origin main
php artisan migrate:fresh --seed
cd /var/www/laravel_app
php artisan migrate:fresh --seed
cd /var/www/laravel_app
php artisan serve --host=0.0.0.0 --port=8001
cat << 'EOF' > app/Models/User.php
<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Foundation\Auth\User as Authenticatable;
use Illuminate\Notifications\Notifiable;
use Laravel\Sanctum\HasApiTokens;

class User extends Authenticatable
{
    use HasApiTokens, HasFactory, Notifiable;

    protected $fillable = [
        'name',
        'email',
        'password',
    ];

    protected $hidden = [
        'password',
        'remember_token',
    ];

    protected $casts = [
        'email_verified_at' => 'datetime',
        'password' => 'hashed',
    ];

    public function completedShoppingLists()
    {
        return $this->hasMany(CompletedShoppingList::class);
    }
}
EOF

php artisan migrate:fresh
cd laravelapp
cd laravel_app
ls
composer install
php artisan migrate:fresh
cat << 'EOF' > app/Http/Controllers/CompletedShoppingListController.php
<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\CompletedShoppingList;
use Illuminate\Support\Facades\Auth;

class CompletedShoppingListController extends Controller
{
    // 購入済み「買うもの」一覧画面の表示
    public function list()
    {
        $completedShoppingLists = CompletedShoppingList::where('user_id', Auth::id())
            ->orderBy('name', 'asc')
            ->paginate(3);

        return view('shopping_list.completed_list', compact('completedShoppingLists'));
    }
}
EOF

cat << 'EOF' > app/Http/Controllers/CompletedShoppingListController.php
<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\CompletedShoppingList;
use Illuminate\Support\Facades\Auth;

class CompletedShoppingListController extends Controller
{
    // 購入済み「買うもの」一覧画面の表示
    public function list()
    {
        $completedShoppingLists = CompletedShoppingList::where('user_id', Auth::id())
            ->orderBy('name', 'asc')
            ->paginate(3);

        return view('shopping_list.completed_list', compact('completedShoppingLists'));
    }
}
EOF

cat << 'EOF' > app/Http/Controllers/CompletedShoppingListController.php
<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\CompletedShoppingList;
use Illuminate\Support\Facades\Auth;

class CompletedShoppingListController extends Controller
{
    // 購入済み「買うもの」一覧画面の表示
    public function list()
    {
        $completedShoppingLists = CompletedShoppingList::where('user_id', Auth::id())
            ->orderBy('name', 'asc')
            ->paginate(3);

        return view('shopping_list.completed_list', compact('completedShoppingLists'));
    }
}
EOF

cat << 'EOF' > app/Http/Controllers/CompletedShoppingListController.php
<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\CompletedShoppingList;
use Illuminate\Support\Facades\Auth;

class CompletedShoppingListController extends Controller
{
    // 購入済み「買うもの」一覧画面の表示
    public function list()
    {
        $completedShoppingLists = CompletedShoppingList::where('user_id', Auth::id())
            ->orderBy('name', 'asc')
            ->paginate(3);

        return view('shopping_list.completed_list', compact('completedShoppingLists'));
    }
}
EOF

touch app/Http/Controllers/CompletedShoppingListController.php
echo -n > app/Http/Controllers/CompletedShoppingListController.php
php artisan make:controller CompletedShoppingListController
cat << 'EOF' > app/Http/Controllers/CompletedShoppingListController.php
<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\CompletedShoppingList;
use Illuminate\Support\Facades\Auth;

class CompletedShoppingListController extends Controller
{
    // 購入済み「買うもの」一覧画面の表示
    public function list()
    {
        $completedShoppingLists = CompletedShoppingList::where('user_id', Auth::id())
            ->orderBy('name', 'asc')
            ->paginate(3);

        return view('shopping_list.completed_list', compact('completedShoppingLists'));
    }
}
EOF

ls -la app/Http/Controllers/
git add .
git commit -m "8/10 2回目提出"
git push origin main
git pull origin main
git push origin main
git pull origin main --no-rebase
git push origin main
git add app/Models/User.php
git commit -m "8/10 2回目提出"
git push origin main
# 1. 変更されたファイルをすべてステージングに追加
git add .
# 2. まとめてコミット（メッセージは「最終調整」とします）
git commit -m "最終調整：すべての変更を反映"
# 3. GitHubへ送信
git push origin main
git status
# 1. 変更内容をすべてステージングに追加
git add .
# 2. 8/12, 3回目提出分としてコミット
git commit -m "8/12, 3回目提出分"
# 3. GitHubへ送信
git push origin main
git add .
git commit -m "8/13修正提出用"
git push origin main
git status
