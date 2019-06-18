@extends('voyager::master')
@section('content')

    <div class="container">
        <h1>Respuestas</h1>
        @foreach ($dataTypeContent as $item)
        <p>trae estos datos = {{$item}}</p>
        @endforeach
    </div>
@endsection
