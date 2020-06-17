@if ($errors->any())
<div class="row justify-content-center">
    <div class="col-md-8">
        <div class="alert alert-warning">
            <ul>
                @foreach ($errors->all() as $item)
                <li>{{ $item }}</li>
                @endforeach
            </ul>
        </div>
    </div>
</div>
@endif

@if (session('success'))
<div class="row justify-content-center">
    <div class="col-md-8">
        <div class="alert alert-success">
            {{session('success')}}
        </div>
    </div>
</div>
@endif