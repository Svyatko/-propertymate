<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class FieldRequest extends FormRequest
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
        $id = $this->route()->parameter('field');
        $rule = [
            'name'      => "required|unique:fields,name,$id",
            'type'      => 'required',
        ];

        if($this->request->all()['type'] === 'select' || $this->request->all()['type'] === 'multiple') {
            $rule['value'] = 'required';
        }

        return $rule;
    }
}
