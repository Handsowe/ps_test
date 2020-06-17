<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\RequestHistory;
use App\User;

class HistoryController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth');
    }

    public function index(){
        $model = new RequestHistory();

        return view('history',[
            'model' => $model->orderBy('created_at','DESC')->paginate(5)
            ]);
    }

    public function myHistory(){
        $model = new RequestHistory();

        return view('history_my',[
            'model' => $model->orderBy('created_at','DESC')->where('user_id','=',auth()->user()->id)->paginate(5)
            ]);
    }

    public function detailHistory($id){
        $model = RequestHistory::find($id);

        if (empty($model)) {
            return redirect()->route('not-found');
        }
        
        return view('history_detail',['model' => $model]);
        
    }

    public function editHistory($id, Request $req){
        if ($req->isMethod('post')) {

            $req->validate([
                'user_id' => 'required',
                'site_name' => 'required|url',
                'response' => 'required'
            ],[
                'user_id.required' => 'Поле "Пользователь" обязательное!',
                'site_name.required' => 'Поле "Адрес сайта" обязательное!',
                'site_name.url' => 'Поле "Адрес сайта" должно иметь вид: "http://ИМЯ.ДОМЕН" или "https://ИМЯ.ДОМЕН"',
                'response.required' => 'Поле "Результат запроса" обязательное!'
            ]);

            $model = RequestHistory::find($id);
            $model->user_id = $req->input('user_id');
            $model->site_name = $req->input('site_name');
            $model->response = $req->input('response');

            if ($model->save()) {
                return redirect()->route('show-history-detail', $id)->with('success', 'Запрос успешно обновлен');
            }else{
                $errors = $this->errorHelper('record_error');
                return view('history_edit',$model)->withErrors($errors);
            }
        }

        $model = RequestHistory::find($id);
        if (empty($model)){
            return redirect()->route('not-found');
        }
        $userList = User::select('id','name')->get();

        return view('history_edit',[
            'model' => $model,
            'userList' => $userList
            ]);
    }

    public function deleteHistory($id){
        $model = RequestHistory::find($id);
        if (empty($model)){
            return redirect()->route('not-found');
        }

        if ($model->delete()) {
            return redirect()->route('show-history', $id)->with('success', 'Запрос успешно удален');
        }else{
            $errors = $this->errorHelper('delete_error');
            return redirect()->route('show-history-detail', $id)->withErrors($errors);
        }
    }

    protected function errorHelper(String $error_name) {
        $available_errors = [
            'record_error' => 'Произошла ошибка записи. Проверте валидность вносимой информации или обратитесь к администратору',
            'delete_error' => 'Не удалось удалить запись из истории.Обратитесь к администратору'
        ];
        $errors = new \Illuminate\Support\MessageBag();
        $errors->add($error_name, $available_errors[$error_name]);

        return $errors;
    }
}
