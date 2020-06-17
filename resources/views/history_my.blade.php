@extends('layouts.app')

@section('page-title')История моих запросов @endsection

@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <h1>История моих запросов</h1>
            <a href="{{ route('show-history') }}">Показать все запросы</a>
            @if ($model->count())
            <div class="list-group mt-2">
                @foreach ($model as $item)
                <a href="{{ route('show-history-detail', $item->id) }}" class="list-group-item list-group-item-action flex-column align-items-start">
                    <div class="d-flex w-100 justify-content-between">
                        <h5 class="mb-1">{{ $item->site_name }}</h5>
                        <small>{{ $item->created_at }}</small>
                    </div>
                    <p class="mb-1">{{ $item->response }}</p>
                    <small>Пользователь: {{ ($item->user) ? $item->user->name : 'Гость'}}</small>
                </a>
                @endforeach
                <div class="mt-3">{{ $model->links() }}</div>
            </div>
            @else
                <p>Запросы еще не производились</p>
            @endif
        </div>
    </div>
</div>  
@endsection