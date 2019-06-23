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
    .img-perfil{
        height: 100px;
        width: 100px;
        background-repeat: no-repeat;
        background-position: 50%;
        border-radius: 50%;
        background-size: 100% auto;
        margin-top: 1vh;
        margin-left: 5vh;
        border: 1px solid black;
    }
    .no-leido{
        background-color: #e2e2f9;
        border: 1px solid #bebde9;

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
@if ($posts->leido == 0)
<hr>
    <div class="row no-leido">
        <div class="col-12  col-sm-2 col-md-2 col-xl-2">
                <img src="{{ Voyager::image( $posts->avatar ) }}" alt="Error al cargar la imagen" class=" img-perfil">
        </div>

        <div class="col-12 col-sm-7 col-xl-7 col-md-7">
           <h3 style="color:black">{{$posts->title}}</h3>
           <p style="color:gray;font-size:12px;">subido el : {{$posts->created_at}}

por {{$posts->name1}} {{$posts->surname1}} {{$posts->surname2}}

 </p>

        <p style="font-size: 20px"> {!!str_limit($posts->content,255) !!}</p>
        </div>
        <div class="col-12 col-sm-2 col-md-2 col-xl-2" style="margin-top:5vh;">
            <a href="route('voyager.foro.{{$posts->id}}.edit')" class="btn btn-danger">Responder <i class="far fa-comment"></i></a>
        </div>
    </div>


@else
<hr>
    <div class="row">
        <div class="col-12  col-sm-2 col-md-2 col-xl-2">
                <img src="{{ Voyager::image( $posts->avatar ) }}" alt="Error al cargar la imagen" class=" img-perfil">
        </div>

        <div class="col-12 col-sm-7 col-xl-7 col-md-7">
           <h3 style="color:black">{{$posts->title}}</h3>
           <p style="color:gray;font-size:12px;">subido el : {{$posts->created_at}}

por {{$posts->name1}} {{$posts->surname1}} {{$posts->surname2}}

 </p>

        <p style="font-size: 20px"> {!!str_limit($posts->content,255) !!}</p>
        </div>
        <div class="col-12 col-sm-2 col-md-2 col-xl-2" style="margin-top:5vh;">
            <a href="{{ route('voyager.foro.edit',['prop'=>$posts->getKey()])  }}" class="btn btn-danger">Responder <i class="far fa-comment"></i></a>
        </div>
    </div>


@endif

@endforeach
@endif

<hr>
</div>

@endsection



