<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;
use Illuminate\Validation\Rule;
class SaveChallengeRequest extends FormRequest
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
            'title' => [
                'required',
                'min:2',
                Rule::unique('challenges')->ignore($this->id)
            ],
            'language' => 'required',
            'description' => ['required','min:4'],
            'link_figma' => 'required',
            'level' => 'required',
            'cate_challen_id' => 'required',
        ];
    }

    public function messages()
    {
        return [
            'title.required' => "Hãy nhập tên danh mục",
            'title.min' => "Ít nhất có 2 ký tự",
            'title.unique' => "Tên danh mục đã tồn tại",
            'language.required' => "Hãy nhập ngôn ngữ",
            'link_figma.required' => "Hãy nhập link figma",
            'level.required' => "Hãy nhập cấp độ",
            'cate_challen_id.required' => "Hãy nhập danh mục",
            'description.required' => "Hãy nhập mô tả",
            'description.min' => "Ít nhất có 2 ký tự",
        ];
    }
}
