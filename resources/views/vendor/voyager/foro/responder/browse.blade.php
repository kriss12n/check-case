@extends('voyager::master')
@section('content')
<div class="container">
@foreach ($foro as $f)

<h3 class="text-center">{{$f->title}}</h3>

<div  align="center" class="col-xs-2 col-sm-2 col-md-2 col-lg-2">
        @if (!isset($f->photo))
              <img class="img-responsive img-thumbnail" src="" alt="Este Post no contiene imagen">
        @else
             <img class="img-responsive img-thumbnail" src="{{ Voyager::image( $f->photo ) }}" alt="ocurrio un error al carga la imagen"><br>
        @endif

        @endforeach

</div>

<div class="col-3">
    <p class="text-center">
        {{$f->content}}
    </p>
</div>


</div>
@endsection
