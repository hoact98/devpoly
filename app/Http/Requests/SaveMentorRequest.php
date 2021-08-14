<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;
use Illuminate\Validation\Rule;
class SaveMentorRequest extends FormRequest
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
            'username' => ['required','min:4',Rule::unique('users')->ignore($this->id)],
            'name' => ['required','min:4'],
            'email' => [
                'required',
                'email',
                Rule::unique('users')->ignore($this->id)
            ],
            'gender'=>['required'],
            'address'=>['required'],
            'phone'=>['required',Rule::unique('information_users')->ignore($this->id,'user_id')],
            'permission_id'=>'required'
        ];
    }
    public function messages()
    {
        return [
            'name.required' => "Hãy nhập họ tên",
            'name.min' => "Ít nhất có 4 ký tự",
            'username.required' => "Hãy nhập tên tài khoản",
            'username.min' => "Ít nhất có 4 ký tự",
            'email.required' => "Hãy nhập email",
            'email.email' => "Không đúng định dạng",
            'email.unique' => "Email đã tồn tại",
            'username.unique' => "Tên tài khoản đã tồn tại",
            'gender.required' => "Hãy chọn giới tính",
            'address.required' => "Hãy nhập địa chỉ",
            'phone.required' => "Hãy nhập SDT",
            'phone.unique' => "SDT đã tồn tại",
            'permission_id.required' => "Hãy chọn quyền",
        ];
    }
}