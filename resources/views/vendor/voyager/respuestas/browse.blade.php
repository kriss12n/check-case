@extends('voyager::master')
@section('content')

    <div class="container">
        <h1>Respuestas</h1>
        @foreach ($dataTypeContent as $item)
        <p>trae estos datos = {{$item}}</p>
        @endforeach
        @can('add', app($dataType->model_name))
        <a href="{{ route('voyager.'.$dataType->slug.'.create') }}" class="btn btn-success btn-add-new">
            <i class="voyager-plus"></i> <span>Responder</span>
        </a>
    @endcan

    </div>
@endsection
