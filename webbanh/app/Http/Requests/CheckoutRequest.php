<?php

namespace App\Http\Requests;

use App\Http\Requests\Request;

class CheckoutRequest extends Request
{
    /**
     * Determine if the user is authorized to make this request.
     *
     * @return bool
     */
     protected $errorBag = 'checkout';
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
             'fullname' => 'required|min:5|max:35',
            'email' => 'required|min:5|max:35',
            'sdt' => 'required|numeric',
            'diachi' => 'required|min:5|max:25' 
        ];
    }
     public function messages()
    {
        return [];
    }
}
