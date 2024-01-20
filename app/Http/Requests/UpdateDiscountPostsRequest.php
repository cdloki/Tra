<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class UpdateDiscountPostsRequest extends FormRequest
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
        $data = \request()->all();
        $rules = [
            'name_post' => 'required|max:100',
            'url_post' => 'unique:posts,url_post,' . $data["id"] . ',id',
        ];
        return $rules;

    }

     /**
     * Customize message
     *
     * @return array
     */
    public function messages() {
        $data = \request()->all();
        $messages = [
            'name_post.required' => __('Tiêu đề bài viết không được để trống.'),
            'name_post.max' => __('Tiêu đề bài viết không được dài hơn 100 kí tự.'),
            'url_post.unique' => __('Url đã được tạo trước đó.'),
        ];
        return $messages;
    }
}
