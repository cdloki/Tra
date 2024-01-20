<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class CreatCategorysRequest extends FormRequest
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
            'code_category' => 'required|max:50',
            'name_category' => 'required|max:50',
            'url_category' => 'unique:categorys,url_category,'.'NULL,id',
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
            'code_category.required' => __('Mã phòng không được để trống.'),
            'code_category.max' => __('Mã phòng không được dài hơn 50 kí tự.'),
            'name_category.required' => __('Tên phòng không được để trống.'),
            'name_category.max' => __('Tên phòng không được dài hơn 50 kí tự.'),
            'url_category.unique' => __('Url đã được tạo trước đó.'),
        ];
        return $messages;
    }
}
