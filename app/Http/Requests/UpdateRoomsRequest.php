<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class UpdateRoomsRequest extends FormRequest
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
            'code_room' => 'required|max:50',
            'name_room' => 'required|max:50',
            'url_room' => 'unique:rooms,url_room,' . $data["id"] . ',id',
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
            'code_room.required' => __('Mã phòng không được để trống.'),
            'code_room.max' => __('Mã phòng không được dài hơn 50 kí tự.'),
            'name_room.required' => __('Tên phòng không được để trống.'),
            'name_room.max' => __('Tên phòng không được dài hơn 50 kí tự.'),
            'url_room.unique' => __('Url đã được tạo trước đó.'),
        ];
        return $messages;
    }
}
