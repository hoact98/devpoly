<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;
use Illuminate\Validation\Rule;

class LoginRequest extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     *
     * @return bool
     */
    public function authorize()
    {
        return true;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array
     */
    public function rules()
    {
        return [
            'email' => [
                'required'
            ],
            'password' => ['required', 'min:6']
        ];
    }
    public function messages()
    {
        return [
            'email.required' => "Hãy nhập email",
            'password.required' => "Hãy nhập password",
            'password.min' => "Tối thiểu 6 ký tự",
        ];
    }
}
