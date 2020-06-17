<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class HomeRequest extends FormRequest
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
            'site_name' => 'required|url'
        ];
    }

    public function messages()
    {
        return [
            'site_name.required' => 'Поле "Адрес сайта" обязательное!',
            'site_name.url' => 'Поле "Адрес сайта" должно иметь вид: "http://ИМЯ.ДОМЕН" или "https://ИМЯ.ДОМЕН"'
        ];
    }
}
