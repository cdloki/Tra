<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class CreatProductsRequest extends FormRequest
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
            'code_product' => 'required|max:100',
            'name_product' => 'required|max:100',
            'url_product' => 'unique:products,url_product,'.'NULL,id',
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
            'code_product.required' => __('Mã sản phẩm không được để trống.'),
            'code_product.max' => __('Mã sản phẩm không được dài hơn 100 kí tự.'),
            'name_product.required' => __('Tên sản phẩm không được để trống.'),
            'name_product.max' => __('Tên sản phẩm không được dài hơn 100 kí tự.'),
            'url_product.unique' => __('Url đã được tạo trước đó.'),
        ];
        return $messages;
    }
}
