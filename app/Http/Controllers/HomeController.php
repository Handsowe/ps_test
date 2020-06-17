<?php

namespace App\Http\Controllers;

use App\Http\Requests\HomeRequest;
use App\Models\RequestHistory;

class HomeController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth', ['except' => ['index','apiRequest']]);
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function index()
    {
        $example = RequestHistory::select('site_name')->groupBy('site_name')->inRandomOrder()->first();
        return view('home', [
            'model'=>'',
            'response'=>[],
            'example'=>$example->site_name
            ]);        
    }

    public function apiRequest(HomeRequest $req)
    {
        $site_name = $req->input('site_name');
        $apiKey = '5098ac3d42320bbb8c9cc21d83ca5f5e0685451df1c9e6a5b28bbff74a9dfb04f1decd';
        $example = RequestHistory::select('site_name')->groupBy('site_name')->inRandomOrder()->first();

        $ch = curl_init();
        curl_setopt($ch, CURLOPT_URL,            "https://www.who-hosts-this.com/API/Host?key=$apiKey&url=$site_name" );
        curl_setopt($ch, CURLOPT_RETURNTRANSFER, true );
        curl_setopt($ch, CURLOPT_POST,           false );
        curl_setopt($ch, CURLOPT_HEADER,         false);
        $response=curl_exec($ch);
        curl_close($ch);

        $array_response = json_decode($response, true);

        if (array_key_exists('result', $array_response) && $array_response['result']['code'] == 200) {

            try {
                $model = new RequestHistory();
                $model->user_id = (auth()->check()) ? auth()->user()->id : 0;
                $model->site_name = $site_name;
                $model->response = $response;

                if ($model->save()) {
                    return view('home', [
                        'model'=>$site_name,
                        'response'=>json_encode($array_response, JSON_PRETTY_PRINT),
                        'example'=>$example->site_name
                        ]);
                }else{
                    $errors = $errors = $this->errorHelper('invalid_data_error');
                    return view('home', [
                        'model'=>$site_name,
                        'response'=>[],
                        'example'=>$example->site_name
                        ])->withErrors($errors);
                }

            } catch (\Throwable $th) {
                $errors = $this->errorHelper('record_error');
                return view('home', [
                    'model'=>$site_name,
                    'response'=>[],
                    'example'=>$example->site_name
                    ])->withErrors($errors);
            }
            
        }elseif (array_key_exists('result', $array_response) && $array_response['result']['code'] != 200) {
            $errors = $this->errorHelper('site_invalid_error');
            return view('home', [
                'model'=>$site_name,
                'response'=>[],
                'example'=>$example->site_name
                ])->withErrors($errors);
        }else{
            $errors = $this->errorHelper('service_unavailable_error');
            return view('home', [
                'model'=>$site_name,
                'response'=>[],
                'example'=>$example->site_name
                ])->withErrors($errors);
        }
        
    }

    protected function errorHelper(String $error_name) {
        $available_errors = [
            'invalid_data_error' => 'Были получены не валидные данные. Обратитесь к администратору.',
            'record_error' => 'Ошибка при записи истории запроса. Обратитесь к администратору.',
            'site_invalid_error' => 'Запрошенный сайт не существует.',
            'service_unavailable_error' => 'Сервис временно не доступен, повторите попытку позже.'
        ];
        $errors = new \Illuminate\Support\MessageBag();
        $errors->add($error_name, $available_errors[$error_name]);

        return $errors;
    }
}
