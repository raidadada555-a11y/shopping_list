<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;

class AdminUserSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        DB::table('admin_users')->insert([
            'login_id' => 'admin', // 任意の管理者ログインID
            'password' => Hash::make('password123'), // 任意の管理者パスワード
            'created_at' => now(),
            'updated_at' => now(),
        ]);
    }
}