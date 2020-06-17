@extends('layouts.app')

@section('page-title')Главная @endsection

@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="card">
                <div class="card-header">Отправить запрос</div>

                <div class="card-body">
                    <form action="{{ route('send-request') }}" method="post">
                        @csrf
                        <div class="form-group">
                            <label for="site_name">Адрес сайта</label>
                            <input type="text" name="site_name" placeholder="Введите адрес..." id="site_name" class="form-control" value="{{ $model }}">
                            <small>Например: <span id="site_name_example">{{ $example }}</span></small>
                        </div>
                        <div><button type="submit" class="btn btn-success">Отправить</button></div>
                    </form>
                    @if ($response)
                        <pre class="mt-3">{{ $response }}</pre>
                    @endif
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
