@extends('layouts.app')

@section('page-title'){{ $model->site_name }} @endsection

@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <h1>{{ $model->site_name }}</h1>
            <div class="card">
            <div class="card-header">
                {{ ($model->user)? $model->user->name : 'Гость'}} в {{ $model->created_at }}
            </div>
            <div class="card-body">
                <pre class="card-text">{{ json_encode(json_decode($model->response), JSON_PRETTY_PRINT)  }}</pre>
                <a href="{{ route('edit-history-get', $model->id)}}" class="btn btn-primary">Редактировать</a>
                <a href="{{ route('delete-history', $model->id)}}" class="btn btn-danger">Удалить</a>
            </div>
            </div>
        </div>
    </div>
</div>  
@endsection