<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class UserRegisterPost extends FormRequest
{
    public function authorize(): bool
    {
        return true;
    }

    public function rules(): array
    {
        return [
            // name: 必須、128文字以内
            'name' => ['required', 'string', 'max:128'],
            // email: 必須、メールアドレス形式、255文字以内、usersテーブルで重複不可
            'email' => ['required', 'string', 'email', 'max:255', 'unique:users'],
            // password: 必須、文字列、確認用入力と一致（confirmed）、72文字以内
            'password' => ['required', 'string', 'min:8', 'max:72', 'confirmed'],
        ];
    }

    public function messages(): array
    {
        return [
            'name.required' => 'The name field is required.',
            'name.max' => 'The name may not be greater than 128 characters.',
            'email.required' => 'The email field is required.',
            'email.email' => 'The email must be a valid email address.',
            'email.max' => 'The email may not be greater than 255 characters.',
            'email.unique' => 'The email has already been taken.',
            'password.required' => 'The password field is required.',
            'password.min' => 'The password must be at least 8 characters.',
            'password.max' => 'The password may not be greater than 72 characters.',
            'password.confirmed' => 'The password confirmation does not match.',
        ];
    }
}