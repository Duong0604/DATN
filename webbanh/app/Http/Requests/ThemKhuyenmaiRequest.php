<?php

namespace App\Http\Requests;

use App\Http\Requests\Request;

class ThemKhuyenmaiRequest extends Request
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
           'title' => 'required|min:6|max:100',
            'noidung' => 'required|min:10',
            'value_promo' => 'required|numeric',
            'hinh' => 'image',
        ];
    }

    public function messages()
    {
        return [
           'title.required' => 'Vui lòng nhập tiêu đề bài viết khuyến mãi',
            'title.min' => 'Tiêu đề quá ngắn(dưới 6 ký tự)!',
            'title.max' => 'Tiêu đề không quá 100 kí tự',
            'noidung.required' => 'Vui lòng nhập nội dung khuyến mãi',
            'noidung.min' => 'Nội dung ít nhất 10 kí tự',
            'value_promo.numeric' => 'Giá trị khuyến mãi phải là số',
            'value_promo.required' => 'Vui lòng nhập giá trị khuyến mãi',
            'hinh.image' => 'Định dạng hình không đúng',
        ];
    }
}
