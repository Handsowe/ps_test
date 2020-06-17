@extends('layouts.app')

@section('page-title'){{ $model->site_name }} @endsection

@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <h1>Редактирование: {{ $model->site_name }}</h1>
            <div class="card">
            <div class="card-body">

                <form action="{{ route('edit-history-post', $model->id) }}" method="post">
                    @csrf
                    <div class="form-group">
                        <label for="user_id">Пользователь</label>
                        <select class="form-control" name="user_id" id="user_id">
                            <option value="0">Гость</option>
                            @foreach ($userList as $user)
                            <option value="{{ $user->id }}" {{ ($user->id == $model->user_id) ? 'selected' : '' }}>{{$user->name}}</option>
                            @endforeach
                        </select>
                    </div>
                    <div class="form-group">
                        <label for="site_name">Адрес сайта</label>
                        <input type="text" name="site_name" placeholder="Введите адрес сайта..." id="site_name" class="form-control" value="{{ $model->site_name }}">
                    </div>
                    <div class="form-group">
                        <label for="response">Результат запроса</label>
                        <textarea name="response" id="response" placeholder="введите результат запроса..." class="form-control">{{ $model->response }}</textarea>
                    </div>
                    <button type="submit" class="btn btn-success">Редактировать</button>
                </form>
            </div>
            </div>
        </div>
    </div>
</div>  
@endsection