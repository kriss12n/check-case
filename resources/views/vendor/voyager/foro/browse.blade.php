@extends('voyager::master')
@section('content')
<style type="text/css">
    @import url('https://fonts.googleapis.com/css?family=Montserrat&display=swap');
    .jumbotron{
        margin-top: 2vh;
        background:url("/images/foro1.jpg");
        background-size: cover;
        background-repeat: no-repeat;
        color:white;
    }
    .font-montserrat{
        font-family: 'Montserrat', sans-serif;
    }
</style>

<div class="jumbotron jumbotron-fluid">
        <div class="container">
          <h1 class="font-montserrat text-center">Bienvenido al foro de consultas</h1>
          <p class="lead text-center">Aquí puede consultar sobres sus causas o pagos</p>
        </div>
      </div>

<div class="container-fluid">
    <h1 class="page-title">
        <i class="{{ $dataType->icon }}"></i> {{ $dataType->display_name_plural }}
    </h1>
    @can('add', app($dataType->model_name))
        <a href="{{ route('voyager.'.$dataType->slug.'.create') }}" class="btn btn-success btn-add-new">
            <i class="voyager-plus"></i> <span>{{ __('voyager::generic.add_new') }}</span>
        </a>
    @endcan
</div>

@if($post->isEmpty())
<div class="container-fluid">
    <hr>
        <p class="text-center">No existen Post que mostrar</p>
</div>
@else

<div class="container" style="background: white;">
@foreach ($post as $posts)

<hr>
    <div class="row">
        <div class="col-12 col-sm-5x col-xl-5 col-md-5">
           <h3 style="color:black">{{$posts->title}}</h3>
           <p style="color:gray;font-size:12px;">subido el : {{$posts->created_at}}

por {{$posts->user()->first()->name1}}

 </p>
        <p style="font-size: 20pxx">{!! $posts->content !!}</p>
        </div>
        <div class="col-12 col-sm-2 col-md-2 col-xl-2" style="padding-top:15hv">
            <a href="{{ route('voyager.respuestas.index',['prop'=>$posts->getKey()]) }}" class="btn btn-danger">Responder</a>
        </div>
    </div>

@endforeach
@endif

<hr>
</div>

@endsection



